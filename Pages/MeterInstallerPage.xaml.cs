using Novaelectrosbit.Pages.MainSubPages;
using Novaelectrosbit.Windows;
using System.Windows;
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
            (Application.Current.MainWindow as MainMenuWindow).DataContext = this;
            CBoxProfile.DataContext = App.CurUser;
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
    }
}
