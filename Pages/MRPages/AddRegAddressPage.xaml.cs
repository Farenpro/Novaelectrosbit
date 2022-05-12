using Novaelectrosbit.Classes;
using Novaelectrosbit.Models;
using Novaelectrosbit.Windows;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace Novaelectrosbit.Pages.MRPages
{
    /// <summary>
    /// Interaction logic for AddRegAddressPage.xaml
    /// </summary>
    public partial class AddRegAddressPage : Page
    {
        public Locality Locality { get; set; }
        public Prefix Street { get; set; }
        public string House { get; set; }
#nullable enable
        public int? Flat { get; set; }
        public EditInfoWindow window;

        public AddRegAddressPage()
        {
            InitializeComponent();
            window = App.Current.Windows.OfType<EditInfoWindow>().SingleOrDefault();
            window.DataContext = this;
            DataContext = this;
            CBoxLocalityFill();
            CBoxStreetFill();
        }

        private void CBoxLocalityFill() { CBoxLocality.ItemsSource = App.Database.Localities.ToList(); }

        private void CBoxStreetFill() { CBoxStreet.ItemsSource = App.Database.Prefixes.ToList(); }

        private void BtnLocalityAdd_Click(object sender, RoutedEventArgs e)
        {
            SubFunctions.ShowEditWindow(8);
            CBoxLocalityFill();
        }

        private void BtnStreetAdd_Click(object sender, RoutedEventArgs e)
        {
            SubFunctions.ShowEditWindow(9);
            CBoxStreetFill();
        }

        private void TBkCancel_MouseLeftButtonDown(object sender, MouseButtonEventArgs e) { window.Close(); }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            if (Locality != null && Street != null && House != "")
            {
                if (Flat != null)
                {
                    if (Flat <= 0)
                    {
                        App.Messages.ShowError(Properties.Resources.NumError);
                        return;
                    }
                }
                if (App.Database.RegistrationAddresses.Where(p => p.LocalityID == Locality.ID && p.PrefixID == Street.ID && p.House == House && p.Flat == Flat).Count() <= 0)
                {
                    int id = 1;
                    if (App.Database.RegistrationAddresses.Count() > 0)
                        id = App.Database.RegistrationAddresses.Select(p => p.ID).Max() + 1;
                    RegistrationAddress registrationAddress = new RegistrationAddress()
                    {
                        ID = id,
                        LocalityID = Locality.ID,
                        PrefixID = Street.ID,
                        House = House,
                        Flat = Flat
                    };
                    App.Database.RegistrationAddresses.Add(registrationAddress);
                    App.DBRefresh();
                    App.Messages.ShowInfo(Properties.Resources.AddCongrats);
                    window.Close();
                }
                else
                    App.Messages.ShowError(Properties.Resources.TariffExists);
            }
            else
                App.Messages.ShowError(Properties.Resources.NeedToFillRequired);
        }
    }
}
