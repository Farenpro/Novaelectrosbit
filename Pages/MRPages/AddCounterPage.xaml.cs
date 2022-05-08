using Novaelectrosbit.Classes;
using Novaelectrosbit.Models;
using Novaelectrosbit.Windows;
using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace Novaelectrosbit.Pages.MRPages
{
    /// <summary>
    /// Interaction logic for AddCounterPage.xaml
    /// </summary>
    public partial class AddCounterPage : Page
    {
        public EditInfoWindow window;
        public string CounterNum { get; set; }
        public DateTime InstallDate { get; set; }
        public double CounterValue { get; set; }
        public CounterBrand CounterBrand { get; set; }
        public int SettingIndicators { get; set; }
        public double TransformCoefficient { get; set; }
        public DateTime MPIEndDate { get; set; }
        public InstallPlace InstallPlace { get; set; }
        public ResponsiblePerson ExplRespPerson { get; set; }
        public NetworkOrganisation NetworkOrganisation { get; set; }
        public BuildType BuildType { get; set; }
#nullable enable
        public string? ASKUESName { get; set; }

        public AddCounterPage()
        {
            InitializeComponent();
            window = App.Current.Windows.OfType<EditInfoWindow>().SingleOrDefault();
            window.DataContext = this;
            DataContext = this;
            CBoxBrandFill();
            CBoxInstallPlace.ItemsSource = App.Database.InstallPlaces.ToList();
            CBoxExplRespPerson.ItemsSource = App.Database.ResponsiblePersons.ToList();
            CBoxNetworkOrg.ItemsSource = App.Database.NetworkOrganisations.ToList();
            CBoxBuildType.ItemsSource = App.Database.BuildTypes.ToList();
            DPInstallDate.DisplayDateEnd = DateTime.Today;
            DPInstallDate.SelectedDate = DateTime.Today;
            DPMPIEndDate.SelectedDate = DateTime.Today.AddYears(16);
            DPMPIEndDate.DisplayDateStart = DateTime.Today.AddYears(3);
        }

        private void CBoxBrandFill() { CBoxCounterBrand.ItemsSource = App.Database.CounterBrands.ToList(); }

        private void TBkCancel_MouseLeftButtonDown(object sender, MouseButtonEventArgs e) { window.Close(); }

        private void BtnBrandAdd_Click(object sender, RoutedEventArgs e)
        {
            SubFunctions.ShowEditWindow(10);
            CBoxBrandFill();
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            if (CounterNum != null && CounterValue != 0 && CounterBrand != null && TransformCoefficient != 0 && InstallPlace != null &&
                ExplRespPerson != null && NetworkOrganisation != null && BuildType != null)
            {
                if (CounterValue > 0 && SettingIndicators >= 0 && TransformCoefficient > 0)
                {
                    if (App.Database.Counters.Where(p => p.Number == CounterNum).Count() <= 0)
                    {
                        Counter Counter = new Counter()
                        {
                            Number = CounterNum,
                            InstallDate = InstallDate,
                            CounterValue = CounterValue,
                            CounterBrandID = CounterBrand.ID,
                            SettingIndications = SettingIndicators,
                            TransformCoefficient = TransformCoefficient,
                            MPIEndDate = MPIEndDate,
                            InstallPlaceID = InstallPlace.ID,
                            ExplResponsiblePersonID = ExplRespPerson.ID,
                            NetworkOrganisationID = NetworkOrganisation.ID,
                            BuildTypeID = BuildType.ID,
                            ASKUESystemName = ASKUESName
                        };
                        App.Database.Counters.Add(Counter);
                        App.Database.SaveChanges();
                        App.Messages.ShowInfo(Properties.Resources.AddCongrats);
                        window.Close();
                    }
                    else
                        App.Messages.ShowError(Properties.Resources.CounterExists);
                }
                else
                    App.Messages.ShowError(Properties.Resources.NumError);
            }
            else
                App.Messages.ShowError(Properties.Resources.NeedToFillRequired);
        }
    }
}
