using Novaelectrosbit.Pages.MainSubPages;
using Novaelectrosbit.Windows;
using System.Windows.Controls;

namespace Novaelectrosbit.Pages
{
    /// <summary>
    /// Interaction logic for MeterInstallerPage.xaml
    /// </summary>
    public partial class MeterInstallerPage : Page
    {
        public MeterInstallerPage()
        {
            InitializeComponent();
            (App.Current.MainWindow as MainMenuWindow).DataContext = this;
            CBoxProfile.DataContext = App.CurUser;
            MainPageFrame.Navigate(new CreatingPerAcc());
        }

        public MeterInstallerPage(bool a)
        {
            InitializeComponent();
            (App.Current.MainWindow as MainMenuWindow).DataContext = this;
            CBoxProfile.DataContext = App.CurUser;
            MainPageFrame.Navigate(new ProfilePage());
        }

        private void CBoxProfile_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (CBoxProfile.SelectedIndex == 1)
            {
                CBoxProfile.SelectedIndex = 0;
                MainPageFrame.Navigate(new ProfilePage());
            }
            else if (CBoxProfile.SelectedIndex == 2)
                (App.Current.MainWindow as MainMenuWindow).MainFrame.Navigate(new AuthorizationPage());
        }
    }
}
