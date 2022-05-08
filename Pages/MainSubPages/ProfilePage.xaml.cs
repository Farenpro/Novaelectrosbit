using Novaelectrosbit.Classes;
using System.Windows;
using System.Windows.Controls;

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
            DataContext = App.CurUser;
            LTelephone.Text = App.CurUser.Telephone.Substring(1);
            PBoxPassword.Password = App.CurUser.Password;
        }

        private void BtnMainPageBack_Click(object sender, RoutedEventArgs e) { App.CurUserDefaultPage(); }

        private void BtnProfileEdit_Click(object sender, RoutedEventArgs e) { SubFunctions.ShowEditWindow(1); }

        private void BtnPhoneEdit_Click(object sender, RoutedEventArgs e) { SubFunctions.ShowEditWindow(2); }

        private void BtnEmailEdit_Click(object sender, RoutedEventArgs e) { SubFunctions.ShowEditWindow(3); }

        private void BtnPasswordEdit_Click(object sender, RoutedEventArgs e) { SubFunctions.ShowEditWindow(4); }
    }
}
