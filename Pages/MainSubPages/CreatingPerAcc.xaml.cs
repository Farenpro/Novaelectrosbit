using Novaelectrosbit.Classes;
using Novaelectrosbit.Models;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace Novaelectrosbit.Pages.MainSubPages
{
    /// <summary>
    /// Interaction logic for CreatingPerAcc.xaml
    /// </summary>
    public partial class CreatingPerAcc : Page
    {
        public string PerAccNum { get; set; }
        public string SurnameOwner { get; set; }
        public string FirstnameOwner { get; set; }
        public string MiddlenameOwner { get; set; }
        public RegistrationAddress RegistationAddress { get; set; }
        public double GeneralArea { get; set; }
        public double LivingArea { get; set; }
        public int CountOfLiving { get; set; }
        public int CountOfRooms { get; set; }
        public Counter Counter { get; set; }
        public Tariff Tariff { get; set; }

        public CreatingPerAcc()
        {
            InitializeComponent();
            CBoxRegAddressFill();
            CBoxCounterFill();
            CBoxTariffFill();
            DataContext = this;
        }

        private void CBoxRegAddressFill() { CBoxRegAddress.ItemsSource = App.Database.RegistrationAddresses.Where(p => p.Requisites.Count() <= 0).ToList(); }

        private void CBoxCounterFill() { CBoxCounter.ItemsSource = App.Database.Counters.Where(p => p.Requisites.Count() <= 0).ToList(); }

        private void CBoxTariffFill() { CBoxTariff.ItemsSource = App.Database.Tariffs.ToList(); }

        private void BtnRegAddressAdd_Click(object sender, RoutedEventArgs e)
        {
            SubFunctions.ShowEditWindow(5);
            CBoxRegAddressFill();
        }

        private void BtnCounterAdd_Click(object sender, RoutedEventArgs e)
        {
            SubFunctions.ShowEditWindow(6);
            CBoxCounterFill();
        }

        private void BtnTariffAdd_Click(object sender, RoutedEventArgs e)
        {
            SubFunctions.ShowEditWindow(7);
            CBoxTariffFill();
        }

        private void BtnCreate_Click(object sender, RoutedEventArgs e)
        {
            if (PerAccNum != null && SurnameOwner != null && FirstnameOwner != null && MiddlenameOwner != null && RegistationAddress != null && GeneralArea != 0 && Counter != null && Tariff != null)
            {
                if (GeneralArea > 0 && LivingArea >= 0 && CountOfLiving >= 0 && CountOfRooms > 0)
                {
                    if (App.Database.Requisites.Where(p => p.PersonalAccount == PerAccNum).Count() <= 0)
                    {
                        Requisite requisite = new Requisite()
                        {
                            PersonalAccount = PerAccNum,
                            OwnerSurname = SurnameOwner,
                            OwnerFirstname = FirstnameOwner,
                            OwnerMiddlename = MiddlenameOwner,
                            RegistrationAddressID = RegistationAddress.ID,
                            TotalArea = GeneralArea,
                            LivingArea = LivingArea,
                            NumOfResidents = CountOfLiving,
                            NumOfRooms = CountOfRooms,
                            TariffID = Tariff.ID,
                            CounterNumber = Counter.Number
                        };
                        App.Database.Requisites.Add(requisite);
                        App.DBRefresh();
                        App.Messages.ShowInfo(Properties.Resources.RequisiteCongrats);
                        App.CurUserDefaultPage();
                    }
                    else
                        App.Messages.ShowError(Properties.Resources.RequisiteExists);
                }
                else
                    App.Messages.ShowError(Properties.Resources.NumError);
            }
            else
                App.Messages.ShowError(Properties.Resources.NeedToFillRequired);
        }
    }
}
