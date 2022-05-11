using Novaelectrosbit.Models;
using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace Novaelectrosbit.Pages.MainSubPages
{
    /// <summary>
    /// Interaction logic for MeterReadingPage.xaml
    /// </summary>
    public partial class MeterReadingPage : Page
    {
        public MeterReadingPage()
        {
            InitializeComponent();
            DataContext = App.CurPay;
        }

        private void BtnMainPageBack_Click(object sender, RoutedEventArgs e) { App.LoadCurPayPage(App.CurPay); }

        private void BtnTransferMR_Click(object sender, RoutedEventArgs e)
        {
            int lastMR = 0, ID = 1;
            if (App.Database.MeterReadings.Count() > 0)
            {
                ID = App.Database.MeterReadings.Select(p => p.ID).Max() + 1;
                if (App.CurPay.Requisite.Counter.MeterReadings.Count > 0)
                    lastMR = App.CurPay.Requisite.Counter.MeterReadings.Select(p => p.Indications).LastOrDefault();
            }
            if (TBoxMR.Text != "" && int.TryParse(TBoxMR.Text, out int MR))
            {
                if (MR > lastMR)
                {
                    MeterReading meterReading = new MeterReading()
                    {
                        ID = ID,
                        CounterNumber = App.CurPay.CounterNum,
                        IndicationsDate = DateTime.Now,
                        Indications = MR
                    };
                    App.Database.MeterReadings.Add(meterReading);
                    App.Database.SaveChanges();
                    App.Messages.ShowInfo(Properties.Resources.MRSuccess);
                    BtnMainPageBack_Click(null, null);
                }
                else
                    App.Messages.ShowError(Properties.Resources.MRError);
            }
            else
                App.Messages.ShowError(Properties.Resources.RequiredError);
        }
    }
}
