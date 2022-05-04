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
            window = Application.Current.Windows.OfType<EditInfoWindow>().SingleOrDefault();
            window.DataContext = this;
        }

        private void FieldsShowHide(TextBox tbox, PasswordBox pbox, bool check)
        {
            if (check)
            {
                tbox.Text = pbox.Password;
                pbox.Clear();
                tbox.Visibility = Visibility.Visible;
                pbox.Visibility = Visibility.Collapsed;
            }
            else
            {
                pbox.Password = tbox.Text;
                tbox.Text = string.Empty;
                tbox.Visibility = Visibility.Collapsed;
                pbox.Visibility = Visibility.Visible;
            }
        }

        private void TBDisplay_Checked(object sender, RoutedEventArgs e)
        {
            FieldsShowHide(PBoxPasswordVisible, PBoxPassword, true);
        }

        private void TBDisplay_Unchecked(object sender, RoutedEventArgs e)
        {
            FieldsShowHide(PBoxPasswordVisible, PBoxPassword, false);
        }

        private void TBDisplay2_Checked(object sender, RoutedEventArgs e)
        {
            FieldsShowHide(PBoxNewPasswordVisible, PBoxNewPassword, true);
        }

        private void TBDisplay2_Unchecked(object sender, RoutedEventArgs e)
        {
            FieldsShowHide(PBoxNewPasswordVisible, PBoxNewPassword, false);
        }

        private void TBDisplay3_Checked(object sender, RoutedEventArgs e)
        {
            FieldsShowHide(PBoxNewPasswordAgainVisible, PBoxNewPasswordAgain, true);
        }

        private void TBDisplay3_Unchecked(object sender, RoutedEventArgs e)
        {
            FieldsShowHide(PBoxNewPasswordAgainVisible, PBoxNewPasswordAgain, false);
        }

        private void TBkCancel_MouseLeftButtonDown(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            window.Close();
        }

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
                            App.Messages.ShowInfo("Пароль успешно изменен");
                            window.Close();
                            (Application.Current.MainWindow as MainMenuWindow).MainFrame.Navigate(new MainPage(0));
                        }
                        else
                            App.Messages.ShowError(Properties.Resources.IconInfoToolTip);
                    }
                    else
                        App.Messages.ShowError(Properties.Resources.PasswordsError);
                }
                else
                    App.Messages.ShowError("Неверный текущий пароль");
            }
        }
    }
}
