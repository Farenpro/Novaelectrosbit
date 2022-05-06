using Novaelectrosbit.Classes;
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
            PaySumm = 0;
            this.DataContext = App.CurPay;
            TBoxEmail.DataContext = App.CurUser;
        }

        private void AddRecSumm_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            if (TBoxPaySumm.Text != "")
                TBoxPaySumm.Text = (Convert.ToDouble(TBoxPaySumm.Text) + 1000).ToString();
            else
                TBoxPaySumm.Text = "1000";
        }

        private void BtnMainPageBack_Click(object sender, RoutedEventArgs e)
        {
            (Application.Current.MainWindow as MainMenuWindow).MainFrame.Navigate(new MainPage());
        }

        private void TBoxPaySumm_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (Checking.NumCheckOneSymb(e.Text))
                e.Handled = false;
            else
                e.Handled = true;
        }

        private void BtnPay_Click(object sender, RoutedEventArgs e)
        {
            if (TBoxEmail.Text != "" && TBoxPaySumm.Text != "")
            {
                if (Checking.EmailCheck(TBoxEmail.Text))
                    if (Checking.NumCheck(TBoxPaySumm.Text))
                    {
                        PayWindow payWindow = new PayWindow(Convert.ToDouble(TBoxPaySumm.Text), TBoxEmail.Text);
                        payWindow.ShowDialog();
                        (Application.Current.MainWindow as MainMenuWindow).MainFrame.Navigate(new MainPage());
                    }
                    else
                        App.Messages.ShowError("Проверьте правильность введенной суммы. " +
                            "Она не может быть меньше 1, не должна начинаться с 0, превышать 9'999'999 млн. руб., а также не может содержать 3 цифры после запятой");
                else
                    App.Messages.ShowError(Properties.Resources.EmailError);
            }
            else
                App.Messages.ShowError(Properties.Resources.NeedToFillRequired);
        }

        private void CBoxAgree_Checked(object sender, RoutedEventArgs e)
        {
            BtnPay.IsEnabled = true;
        }

        private void CBoxAgree_Unchecked(object sender, RoutedEventArgs e)
        {
            BtnPay.IsEnabled = false;
        }
    }
}
