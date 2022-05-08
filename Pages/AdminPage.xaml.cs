using Novaelectrosbit.Pages.MainSubPages;
using Novaelectrosbit.Windows;
using System.Windows.Controls;

namespace Novaelectrosbit.Pages
{
    /// <summary>
    /// Interaction logic for AdminPage.xaml
    /// </summary>
    public partial class AdminPage : Page
    {
        public AdminPage()
        {
            InitializeComponent();
            (App.Current.MainWindow as MainMenuWindow).DataContext = this;
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
                (App.Current.MainWindow as MainMenuWindow).MainFrame.Navigate(new AuthorizationPage());
        }
    }
}
