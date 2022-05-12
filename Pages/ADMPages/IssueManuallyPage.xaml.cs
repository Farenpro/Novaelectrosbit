using Novaelectrosbit.Models;
using Novaelectrosbit.Windows;
using System;
using System.Linq;
using System.Windows.Controls;

namespace Novaelectrosbit.Pages.ADMPages
{
    /// <summary>
    /// Interaction logic for IssueManuallyPage.xaml
    /// </summary>
    public partial class IssueManuallyPage : Page
    {
        public double Summ { get; set; }
        public EditInfoWindow window;
        public Requisite Requisite { get; set; }

        public IssueManuallyPage(Requisite requisite)
        {
            InitializeComponent();
            window = App.Current.Windows.OfType<EditInfoWindow>().LastOrDefault();
            window.DataContext = this;
            Requisite = requisite;
            DataContext = requisite;
            TBoxSumm.DataContext = this;
        }

        private void TBkCancel_MouseLeftButtonDown(object sender, System.Windows.Input.MouseButtonEventArgs e) { window.Close(); }


        private void BtnIssue_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            if (Summ != 0)
            {
                if (Summ > 0)
                {
                    int id = 1;
                    if (App.Database.RequisitesPayments.Count() > 0)
                        id = App.Database.RequisitesPayments.Select(p => p.ID).Max() + 1;
                    RequisitesPayment requisitesPayment = new RequisitesPayment()
                    {
                        ID = id,
                        PersonalAccount = Requisite.PersonalAccount,
                        PaymentTypeID = 2,
                        PayDate = DateTime.Now,
                        PayAmount = Summ,
                        BalanceAfterPay = Requisite.LastBalance - Summ
                    };
                    App.Database.RequisitesPayments.Add(requisitesPayment);
                    App.DBRefresh();
                    App.Messages.ShowInfo(Properties.Resources.IssueCongrats);
                    window.Close();
                }
                else
                    App.Messages.ShowError(Properties.Resources.NumError);
            }
        }
    }
}
