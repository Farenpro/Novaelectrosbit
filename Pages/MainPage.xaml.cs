using Novaelectrosbit.Models;
using Novaelectrosbit.Pages.MainSubPages;
using Novaelectrosbit.UserControls;
using Novaelectrosbit.Windows;
using System.Data.Entity;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace Novaelectrosbit.Pages
{
    /// <summary>
    /// Interaction logic for MainPage.xaml
    /// </summary>
    public partial class MainPage : Page
    {
        public MainPage()
        {
            InitializeComponent();
            (Application.Current.MainWindow as MainMenuWindow).DataContext = this;
            CBoxProfile.DataContext = App.CurUser;
            if (App.CurUser.Payers.Count > 0)
            {
                FillPerAcc();
                PerAccLoadPage((LBoxPerAccs.Items[0] as PersonalAccUC).ThisPayer);
            }
            else
                MainPageFrame.Navigate(new NoPerAccPage());
        }

        public MainPage(byte a)
        {
            InitializeComponent();
            (Application.Current.MainWindow as MainMenuWindow).DataContext = this;
            CBoxProfile.DataContext = App.CurUser;
            if (App.CurUser.Payers.Count > 0)
                FillPerAcc();
            switch (a)
            {
                case 0:
                    MainPageFrame.Navigate(new ProfilePage());
                    break;
                case 1:
                    MainPageFrame.Navigate(new AddPerAccPage());
                    break;
                case 2:
                    MainPageFrame.Navigate(new PaymentPage());
                    break;
                case 3:

                    break;
            }
        }

        public void FillPerAcc()
        {
            LBoxPerAccs.Items.Clear();
            foreach (Payer payer in App.Database.Payers.Where(p => p.UserID == App.CurUser.ID).Include(p => p.Requisite))
                LBoxPerAccs.Items.Add(new PersonalAccUC(payer));
        }

        public void PerAccLoadPage(Payer p)
        {
            MainPageFrame.Navigate(new PerAccPage(p));
        }

        private void CBoxProfile_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (CBoxProfile.SelectedIndex == 1)
            {
                CBoxProfile.SelectedIndex = 0;
                MainPageFrame.Navigate(new ProfilePage());
            }
            else if (CBoxProfile.SelectedIndex == 2)
                (Application.Current.MainWindow as MainMenuWindow).MainFrame.Navigate(new AuthorizationPage());
        }

        private void BtnAddPerAcc_Click(object sender, RoutedEventArgs e)
        {
            MainPageFrame.Navigate(new AddPerAccPage());
        }
    }
}
