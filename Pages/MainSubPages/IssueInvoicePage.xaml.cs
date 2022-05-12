using Novaelectrosbit.Classes;
using Novaelectrosbit.Models;
using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace Novaelectrosbit.Pages.MainSubPages
{
    /// <summary>
    /// Interaction logic for IssueInvoicePage.xaml
    /// </summary>
    public partial class IssueInvoicePage : Page
    {
        public IssueInvoicePage()
        {
            InitializeComponent();
            DGRequisitesFill();
        }

        private void BtnIssueInvoiceManually_Click(object sender, RoutedEventArgs e)
        {
            if (DateTime.Now.Day <= 26)
                if (App.Messages.ShowQuestion(Properties.Resources.IssueWarning) == MessageBoxResult.OK)
                {
                    SubFunctions.ShowEditWindow(App.Database.Requisites.Where(p => p.PersonalAccount == DGRequisites.SelectedValue.ToString()).SingleOrDefault());
                    DGRequisitesFill();
                }
        }

        private void DGRequisitesFill() { DGRequisites.ItemsSource = App.Database.Requisites.ToList(); }

        private void BtnAutoIssue_Click(object sender, RoutedEventArgs e)
        {
            if (App.Database.Requisites.Count() != App.Database.RequisitesPayments.Where(p => p.PaymentTypeID == 2 && p.PayDate.Month == DateTime.Now.Month && p.PayDate.Year == DateTime.Now.Year).Count())
            {
                if (DateTime.Now.Day <= 26)
                    if (App.Messages.ShowQuestion(Properties.Resources.IssueWarning) == MessageBoxResult.OK)
                    {
                        int id = 1;
                        if (App.Database.RequisitesPayments.Count() > 0)
                            id = App.Database.RequisitesPayments.Select(p => p.ID).Max() + 1;
                        for (int i = 0; i < DGRequisites.Items.Count; i++)
                        {
                            Requisite requisite = DGRequisites.Items[i] as Requisite;
                            if (requisite.Issue)
                            {
                                RequisitesPayment requisitesPayment = new RequisitesPayment()
                                {
                                    ID = id,
                                    PersonalAccount = requisite.PersonalAccount,
                                    PaymentTypeID = 2,
                                    PayDate = DateTime.Now,
                                    PayAmount = Convert.ToDouble(requisite.FinalStr),
                                    BalanceAfterPay = requisite.LastBalance + requisite.Final
                                };
                                App.Database.RequisitesPayments.Add(requisitesPayment);
                                App.DBRefresh();
                                id = App.Database.RequisitesPayments.Select(p => p.ID).Max() + 1;
                            }
                        }
                        App.Messages.ShowInfo(Properties.Resources.IssueSuccess);
                        DGRequisitesFill();
                    }
            }
            else
                App.Messages.ShowInfo(Properties.Resources.IssuesAlready);
        }
    }
}
