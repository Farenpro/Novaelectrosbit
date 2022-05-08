using Novaelectrosbit.Classes;
using Novaelectrosbit.Models;
using System;
using System.IO;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using Word = Microsoft.Office.Interop.Word;

namespace Novaelectrosbit.Pages.MainSubPages.PerAccSubPages.TabPages
{
    /// <summary>
    /// Interaction logic for PerAccHistoryPage.xaml
    /// </summary>
    public partial class PerAccHistoryPage : Page
    {
        RequisitesPayment payment;
        public DateTime SelectedDate { get; set; }

        public PerAccHistoryPage() { InitializeComponent(); }

        private void TCSubPages_SelectionChanged(object sender, SelectionChangedEventArgs e) { LoadDG(); }

        private void LoadDG()
        {
            if (IsInitialized)
            {
                LNoData.Visibility = Visibility.Collapsed;
                switch (TCSubPages.SelectedIndex)
                {
                    case 0:
                        DGMR.ItemsSource = App.CurPay.Requisite.Counter.MeterReadings.OrderByDescending(p => p.IndicationsDate).Where(p => p.IndicationsDate >= SelectedDate).ToList();
                        HideShow(DGMR);
                        break;
                    case 1:
                        DGPayments.ItemsSource = App.CurPay.Requisite.RequisitesPayments.OrderByDescending(p => p.PayDate).Where(p => p.PayDate >= SelectedDate && p.PaymentTypeID == 1).ToList();
                        HideShow(DGPayments);
                        break;
                    case 2:
                        DGReceipts.ItemsSource = App.CurPay.Requisite.RequisitesPayments.OrderByDescending(p => p.PayDate).Where(p => p.PayDate >= SelectedDate && p.PaymentTypeID == 2).ToList();
                        HideShow(DGReceipts);
                        break;
                }
            }
        }

        private void HideShow(DataGrid dg)
        {
            DGMR.Visibility = DGPayments.Visibility = DGReceipts.Visibility = LNoData.Visibility = Visibility.Collapsed;
            if (dg.Items.Count > 0)
                dg.Visibility = Visibility.Visible;
            else
                LNoData.Visibility = Visibility.Visible;
        }

        private void CBoxPeriod_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            switch (CBoxPeriod.SelectedIndex)
            {
                case 0:
                    SelectedDate = DateTime.Now.AddMonths(-3);
                    break;
                case 1:
                    SelectedDate = DateTime.Now.AddMonths(-6);
                    break;
                case 2:
                    SelectedDate = DateTime.Now.AddYears(-1);
                    break;
                case 3:
                    SelectedDate = DateTime.MinValue;
                    break;
            }
            LoadDG();
        }

        private void BtnPrintReceipt_Click(object sender, RoutedEventArgs e)
        {
            string path = Path.Combine(Directory.GetParent(Directory.GetCurrentDirectory()).Parent.FullName, "Resources");
            path = $"{path}\\НЭСШаблон.docx";
            Word.Application app = new Word.Application();
            Word.Document document = app.Documents.Add(path);
            payment = App.Database.RequisitesPayments.Where(p => p.PayDate.ToString() == DGReceipts.SelectedValue.ToString()).SingleOrDefault();
            Random r = new Random();
            SubFunctions.GenerateQR($"Name=ООО \"НоваЭлектроСбыт\",\n" +
                $"PersonalAcc={App.CurPay.RequisitesPersonalAccount}\n" +
                $"BankName=Ф-л Банка ГПБ (АО) в г. Томске\n" +
                $"RCBIC=046902758\n" +
                $"CorrAcc=30101810800000000758\n" +
                $"Sum={payment.Price}\n" +
                $"PaymPeriod={payment.PayDateStr2}\n" +
                $"TechCode={r.Next(100, 1000000)}");
            document.Bookmarks["Period2"].Range.Text = payment.PayDateStr2;
            document.Bookmarks["PerAcc"].Range.Text = payment.PersonalAccount;
            document.Bookmarks["CounterNum"].Range.Text = payment.Requisite.CounterNumber;
            document.Bookmarks["FIO"].Range.Text = payment.Requisite.FIOOwner;
            document.Bookmarks["Address"].Range.Text = payment.Requisite.FullAddress;
            document.Bookmarks["NumLiving"].Range.Text = payment.Requisite.NumOfResidents.ToString();
            document.Bookmarks["NumRooms"].Range.Text = payment.Requisite.NumOfRooms.ToString();
            Word.Range QRrange = document.Bookmarks["QR"].Range;
            object saveWithDocument = true;
            document.InlineShapes.AddPicture($"{AppDomain.CurrentDomain.BaseDirectory}\\qrtemp.jpeg", Type.Missing, saveWithDocument, QRrange);
            document.Bookmarks["Period"].Range.Text = payment.PayDateStr3;
            document.Bookmarks["Price"].Range.Text = payment.Price;
            document.Bookmarks["CounterNum2"].Range.Text = payment.Requisite.CounterNumber;
            document.Bookmarks["LastMR"].Range.Text = payment.LastMR;
            document.Bookmarks["LastMRDate"].Range.Text = payment.LastMRDate;
            document.Bookmarks["NowMR"].Range.Text = payment.NowMR;
            document.Bookmarks["NowMRDate"].Range.Text = payment.NowMRDate;
            document.Bookmarks["NextCheckDate"].Range.Text = payment.Requisite.Counter.MPIEndDateStr;
            document.Bookmarks["Expenditure"].Range.Text = payment.Expenditure;
            document.Bookmarks["InfoStr"].Range.Text = payment.InfoStr;
            document.Bookmarks["OnStartFinal"].Range.Text = Math.Abs(payment.LastBalance).ToString();
            document.Bookmarks["ExpType"].Range.Text = payment.ExpType;
            document.Bookmarks["ExpPeriodNow"].Range.Text = payment.ExpPeriodNow;
            document.Bookmarks["TariffPrice"].Range.Text = payment.Requisite.Tariff.Price.ToString();
            document.Bookmarks["Price2"].Range.Text = payment.PriceTariff;
            document.Bookmarks["OnCounterFinal"].Range.Text = payment.PriceTariff;
            document.Bookmarks["InfoStr2"].Range.Text = $"ИТОГО К ОПЛАТЕ";
            document.Bookmarks["Price3"].Range.Text = payment.PriceTariff;
            document.Bookmarks["PC15"].Range.Text = "-";
            document.Bookmarks["Recalc"].Range.Text = "-";
            document.Bookmarks["Peny"].Range.Text = "-";
            document.Bookmarks["Payment"].Range.Text = payment.Payment;
            document.Bookmarks["Final"].Range.Text = payment.FinalStr;
            document.Bookmarks["LastPaymentDate"].Range.Text = payment.LastPayDate;
            document.Bookmarks["LastPayment"].Range.Text = payment.LastPay.ToString();
            app.Visible = true;
        }
    }
}
