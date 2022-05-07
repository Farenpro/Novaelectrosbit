using Novaelectrosbit.Models;
using Novaelectrosbit.Windows;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace Novaelectrosbit.Pages
{
    /// <summary>
    /// Interaction logic for AuthorizationPage.xaml
    /// </summary>
    public partial class AuthorizationPage : Page
    {
        public AuthorizationPage()
        {
            InitializeComponent();
            (Application.Current.MainWindow as MainMenuWindow).DataContext = this;
        }

        private void TBDisplay_Checked(object sender, RoutedEventArgs e)
        {
            PBoxPasswordVisible.Text = PBoxPassword.Password;
            PBoxPassword.Clear();
            PBoxPasswordVisible.Visibility = Visibility.Visible;
            PBoxPassword.Visibility = Visibility.Collapsed;
        }

        private void TBDisplay_Unchecked(object sender, RoutedEventArgs e)
        {
            PBoxPassword.Password = PBoxPasswordVisible.Text;
            PBoxPasswordVisible.Text = string.Empty;
            PBoxPasswordVisible.Visibility = Visibility.Collapsed;
            PBoxPassword.Visibility = Visibility.Visible;
        }

        private void BtnEnter_Click(object sender, RoutedEventArgs e)
        {
            if (TBoxLogin.Text != "" && (PBoxPassword.Password != "" | PBoxPasswordVisible.Text != ""))
            {
                if (App.Database.Users.Where(p => (p.Email == TBoxLogin.Text || p.Telephone == TBoxLogin.Text) && (p.Password == PBoxPassword.Password || p.Password == PBoxPasswordVisible.Text)).SingleOrDefault() is User user)
                {
                    App.CurUser = user;
                    App.CurUserDefaultPage();
                }
                else
                    App.Messages.ShowError(Properties.Resources.LogOrPassError);
            }
            else
                App.Messages.ShowError(Properties.Resources.NeedToFillRequired);
        }

        private void TbkRegistration_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            RegistrationWindow registration = new RegistrationWindow();
            registration.ShowDialog();
        }
    }
}
