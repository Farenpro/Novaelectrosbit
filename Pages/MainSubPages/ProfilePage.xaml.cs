using System.Linq;
using System.Windows;
using System.Windows.Controls;
using Novaelectrosbit.Windows;

namespace Novaelectrosbit.Pages.MainSubPages
{
    /// <summary>
    /// Interaction logic for ProfilePage.xaml
    /// </summary>
    public partial class ProfilePage : Page
    {
        public ProfilePage()
        {
            InitializeComponent();
            this.DataContext = App.CurUser;
            LTelephone.Text = App.CurUser.Telephone.Substring(1);
            PBoxPassword.Password = App.CurUser.Password;
        }

        private void BtnMainPageBack_Click(object sender, RoutedEventArgs e)
        {
            (Application.Current.MainWindow as MainMenuWindow).MainFrame.Navigate(new MainPage());
        }

        private void BtnProfileEdit_Click(object sender, RoutedEventArgs e)
        {
            ShowEditWindow(1);
        }

        private void BtnPhoneEdit_Click(object sender, RoutedEventArgs e)
        {
            ShowEditWindow(2);
        }

        private void BtnEmailEdit_Click(object sender, RoutedEventArgs e)
        {
            ShowEditWindow(3);
        }

        private void BtnPasswordEdit_Click(object sender, RoutedEventArgs e)
        {
            ShowEditWindow(4);
        }

        private void ShowEditWindow(int type)
        {
            EditInfoWindow editInfoWindow = new EditInfoWindow(type);
            editInfoWindow.ShowDialog();
        }
    }
}
