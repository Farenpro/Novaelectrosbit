using Novaelectrosbit.Models;
using Novaelectrosbit.Windows;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Novaelectrosbit.Pages.MRPages.CounterSubPages
{
    /// <summary>
    /// Interaction logic for AddBrandPage.xaml
    /// </summary>
    public partial class AddBrandPage : Page
    {
        public EditInfoWindow window;
        public string BrandName { get; set; }

        public AddBrandPage()
        {
            InitializeComponent();
            window = App.Current.Windows.OfType<EditInfoWindow>().LastOrDefault();
            window.DataContext = this;
            DataContext = this;
        }

        private void TBkCancel_MouseLeftButtonDown(object sender, MouseButtonEventArgs e) { window.Close(); }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            if (BrandName != "")
            {
                if (App.Database.CounterBrands.Where(p => p.Name == BrandName).Count() <= 0)
                {
                    int id = 1;
                    if (App.Database.CounterBrands.Count() > 0)
                        id = App.Database.CounterBrands.Select(p => p.ID).Max() + 1;
                    CounterBrand brandName = new CounterBrand()
                    {
                        ID = id,
                        Name = BrandName
                    };
                    App.Database.CounterBrands.Add(brandName);
                    App.DBRefresh();
                    App.Messages.ShowInfo(Properties.Resources.AddCongrats);
                    window.Close();
                }
                else
                    App.Messages.ShowError(Properties.Resources.BrandExists);
            }
            else
                App.Messages.ShowError(Properties.Resources.NeedToFillRequired);
        }
    }
}
