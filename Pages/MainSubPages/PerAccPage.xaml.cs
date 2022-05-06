using Novaelectrosbit.Models;
using Novaelectrosbit.Pages.MainSubPages.PerAccSubPages.TabPages;
using Novaelectrosbit.Windows;
using System;
using System.Collections.Generic;
using System.Data.Entity;
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

namespace Novaelectrosbit.Pages.MainSubPages
{
    /// <summary>
    /// Interaction logic for PerAccPage.xaml
    /// </summary>
    public partial class PerAccPage : Page
    {
        public PerAccPage(Payer p)
        {
            InitializeComponent();
            App.CurPay = p;
            this.DataContext = p;
            if (DateTime.Now.Day > 26 || App.CurPay.Requisite.Counter.MeterReadings.Select(p=>p.IndicationsDate).Last().Month == DateTime.Now.Month)
                BtnTransferMR.IsEnabled = false;
        }

        private void BtnBalanceRefresh_Click(object sender, RoutedEventArgs e)
        {
            App.Database = new NovaelectrosbitEntities();
            App.CurPay = App.Database.Payers.Where(p => App.CurPay.ID == p.ID).SingleOrDefault();
            this.DataContext = App.CurPay;
        }
        private void TCSubPages_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            switch (TCSubPages.SelectedIndex)
            {
                case 0:
                    PerAccPageFrame.Navigate(new PerAccHistoryPage());
                    break;
                case 1:
                    PerAccPageFrame.Navigate(new PerAccRequisitesPage());
                    break;
            }
        }

        private void BtnPay_Click(object sender, RoutedEventArgs e)
        {
            (Application.Current.MainWindow as MainMenuWindow).MainFrame.Navigate(new MainPage(2));
        }

        private void BtnTransferMR_Click(object sender, RoutedEventArgs e)
        {
            (Application.Current.MainWindow as MainMenuWindow).MainFrame.Navigate(new MainPage(3));
        }
    }
}