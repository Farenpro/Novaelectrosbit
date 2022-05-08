using Novaelectrosbit.Classes;
using Novaelectrosbit.Windows;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace Novaelectrosbit.Pages.MainSubPages.ProfileSubPages
{
    /// <summary>
    /// Логика взаимодействия для PasswordEditPage.xaml
    /// </summary>
    public partial class PasswordEditPage : Page
    {
        readonly EditInfoWindow window;

        public PasswordEditPage()
        {
            InitializeComponent();
            window = App.Current.Windows.OfType<EditInfoWindow>().SingleOrDefault();
            window.DataContext = this;
        }
        private void TBkCancel_MouseLeftButtonDown(object sender, System.Windows.Input.MouseButtonEventArgs e) { window.Close(); }

        private void TBDisplay_Checked(object sender, RoutedEventArgs e) { SubFunctions.TBShowHide(PBoxPasswordVisible, PBoxPassword, true); }

        private void TBDisplay_Unchecked(object sender, RoutedEventArgs e) { SubFunctions.TBShowHide(PBoxPasswordVisible, PBoxPassword, false); }

        private void TBDisplay2_Checked(object sender, RoutedEventArgs e) { SubFunctions.TBShowHide(PBoxNewPasswordVisible, PBoxNewPassword, true); }

        private void TBDisplay2_Unchecked(object sender, RoutedEventArgs e) { SubFunctions.TBShowHide(PBoxNewPasswordVisible, PBoxNewPassword, false); }

        private void TBDisplay3_Checked(object sender, RoutedEventArgs e) { SubFunctions.TBShowHide(PBoxNewPasswordAgainVisible, PBoxNewPasswordAgain, true); }

        private void TBDisplay3_Unchecked(object sender, RoutedEventArgs e) { SubFunctions.TBShowHide(PBoxNewPasswordAgainVisible, PBoxNewPasswordAgain, false); }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            if ((PBoxPassword.Password == "" && PBoxPasswordVisible.Text == "") || (PBoxNewPassword.Password == "" && PBoxNewPasswordVisible.Text == "")
                || (PBoxNewPasswordAgain.Password == "" && PBoxNewPasswordAgainVisible.Text == ""))
                App.Messages.ShowError(Properties.Resources.NeedToFillRequired);
            else
            {
                if (PBoxPassword.Password == App.CurUser.Password || PBoxPasswordVisible.Text == App.CurUser.Password)
                {
                    if ((PBoxNewPassword.Password == PBoxNewPasswordAgain.Password && PBoxNewPassword.Password != "") || (PBoxNewPassword.Password == PBoxNewPasswordAgainVisible.Text && PBoxNewPassword.Password != "")
                        || (PBoxNewPasswordVisible.Text == PBoxNewPasswordAgain.Password && PBoxNewPasswordVisible.Text != "") || (PBoxNewPasswordVisible.Text == PBoxNewPasswordAgainVisible.Text && PBoxNewPasswordVisible.Text != ""))
                    {
                        if (Checking.PasswordCheck(PBoxNewPassword.Password) || Checking.PasswordCheck(PBoxNewPasswordVisible.Text))
                        {
                            if (PBoxNewPassword.Password != "")
                                App.CurUser.Password = PBoxNewPassword.Password;
                            else
                                App.CurUser.Password = PBoxNewPasswordVisible.Text;
                            App.Database.SaveChanges();
                            App.Messages.ShowInfo(Properties.Resources.PasswordCongrats);
                            window.Close();
                            App.LoadProfilePage(App.CurUser.RoleID);
                        }
                        else
                            App.Messages.ShowError(Properties.Resources.IconInfoToolTip);
                    }
                    else
                        App.Messages.ShowError(Properties.Resources.PasswordsError);
                }
                else
                    App.Messages.ShowError(Properties.Resources.CurPasswordError);
            }
        }
    }
}
