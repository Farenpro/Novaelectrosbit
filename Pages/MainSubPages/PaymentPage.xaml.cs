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

namespace Novaelectrosbit.Pages.MainSubPages
{
    /// <summary>
    /// Interaction logic for PaymentPage.xaml
    /// </summary>
    public partial class PaymentPage : Page
    {
        public double PaySumm { get; set; }
        public PaymentPage()
        {
            InitializeComponent();
            this.DataContext = App.CurPay;
            TBoxEmail.DataContext = App.CurUser;
            PaySumm = 0;
        }

        private void AddRecSumm_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            PaySumm += 1000;
        }

        private void BtnMainPageBack_Click(object sender, RoutedEventArgs e)
        {
            (Application.Current.MainWindow as MainMenuWindow).MainFrame.Navigate(new MainPage());
        }
    }
}
