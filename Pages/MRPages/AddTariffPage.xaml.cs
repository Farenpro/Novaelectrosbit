using Novaelectrosbit.Models;
using Novaelectrosbit.Windows;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace Novaelectrosbit.Pages.MRPages
{
    /// <summary>
    /// Interaction logic for AddTariffPage.xaml
    /// </summary>
    public partial class AddTariffPage : Page
    {
        public EditInfoWindow window;
        public string TariffName { get; set; }
        public double Price { get; set; }

        public AddTariffPage()
        {
            InitializeComponent();
            window = App.Current.Windows.OfType<EditInfoWindow>().SingleOrDefault();
            window.DataContext = this;
            DataContext = this;
        }
        private void TBkCancel_MouseLeftButtonDown(object sender, MouseButtonEventArgs e) { window.Close(); }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            if (TariffName != "" && Price != 0)
            {
                if (Price < 0)
                {
                    App.Messages.ShowError(Properties.Resources.NumError);
                    return;
                }
                if (App.Database.Tariffs.Where(p=>p.Name == TariffName).Count() <= 0)
                {
                    int id = 1;
                    if (App.Database.Tariffs.Count() > 0)
                        id = App.Database.Tariffs.Select(p => p.ID).Max() + 1;
                    Tariff tariff = new Tariff()
                    {
                        ID = id,
                        Name = TariffName,
                        Price = Price
                    };
                    App.Database.Tariffs.Add(tariff);
                    App.Database.SaveChanges();
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
