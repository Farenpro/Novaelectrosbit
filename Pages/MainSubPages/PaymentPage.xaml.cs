using Novaelectrosbit.Classes;
using Novaelectrosbit.Windows;
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

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
            DataContext = App.CurPay;
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
            App.CurUserDefaultPage();
        }

        private void TBoxPaySumm_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (Checking.NumCheckOneSymb(e.Text))
                e.Handled = false;
            else
                e.Handled = true;
        }

        private void CBoxAgree_Checked(object sender, RoutedEventArgs e)
        {
            BtnPay.IsEnabled = true;
        }

        private void CBoxAgree_Unchecked(object sender, RoutedEventArgs e)
        {
            BtnPay.IsEnabled = false;
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
                        App.CurUserDefaultPage();
                    }
                    else
                        App.Messages.ShowError(Properties.Resources.SummError);
                else
                    App.Messages.ShowError(Properties.Resources.EmailError);
            }
            else
                App.Messages.ShowError(Properties.Resources.NeedToFillRequired);
        }
    }
}
