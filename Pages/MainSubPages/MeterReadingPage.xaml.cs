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
            this.DataContext = App.CurPay;
        }
        private void BtnMainPageBack_Click(object sender, RoutedEventArgs e)
        {
            (Application.Current.MainWindow as MainMenuWindow).MainFrame.Navigate(new MainPage());
        }
        private void BtnTransferMR_Click(object sender, RoutedEventArgs e)
        {
            int lastMR = 0, ID = 1;
            if (App.CurPay.Requisite.Counter.MeterReadings.Count > 0)
            {
                lastMR = App.CurPay.Requisite.Counter.MeterReadings.Select(p => p.Indications).LastOrDefault();
                ID = App.CurPay.Requisite.Counter.MeterReadings.Select(p => p.ID).Max()+1;
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
                    App.Messages.ShowInfo("Показания успешно добавлены");
                    BtnMainPageBack_Click(null, null);
                }
                else
                    App.Messages.ShowError("Нынешние показания не могут быть меньше, чем предыдущие");
            }
            else
                App.Messages.ShowError("Проверьте правильность введенных данных в обязательном поле!");
        }
    }
}
