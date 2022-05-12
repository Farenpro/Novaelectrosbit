using Novaelectrosbit.Models;
using Novaelectrosbit.Windows;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace Novaelectrosbit.Pages.MRPages.RegAddressSubPages
{
    /// <summary>
    /// Interaction logic for LocalityAddPage.xaml
    /// </summary>
    public partial class LocalityAddPage : Page
    {
        public LocalityType LocalityType { get; set; }
        public string Locality { get; set; }
        public EditInfoWindow window;

        public LocalityAddPage()
        {
            InitializeComponent();
            window = App.Current.Windows.OfType<EditInfoWindow>().LastOrDefault();
            window.DataContext = this;
            DataContext = this;
            CBoxLocalityType.ItemsSource = App.Database.LocalityTypes.ToList();
        }

        private void TBkCancel_MouseLeftButtonDown(object sender, MouseButtonEventArgs e) { window.Close(); }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            if (LocalityType != null && Locality != "")
            {
                if (App.Database.Localities.Where(p => p.LocalityTypeID == LocalityType.ID && p.Name == Locality).Count() <= 0)
                {
                    int id = 1;
                    if (App.Database.Localities.Count() > 0)
                        id = App.Database.Localities.Select(p => p.ID).Max() + 1;
                    Locality locality = new Locality()
                    {
                        ID = id,
                        LocalityTypeID = LocalityType.ID,
                        Name = Locality
                    };
                    App.Database.Localities.Add(locality);
                    App.DBRefresh();
                    App.Messages.ShowInfo(Properties.Resources.AddCongrats);
                    window.Close();
                }
                else
                    App.Messages.ShowError(Properties.Resources.LocalityExists);
            }
            else
                App.Messages.ShowError(Properties.Resources.NeedToFillRequired);
        }
    }
}
