using Novaelectrosbit.Windows;
using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using Novaelectrosbit.Models;
using Novaelectrosbit.Classes;

namespace Novaelectrosbit.Pages
{
    /// <summary>
    /// Interaction logic for RegistrationPage.xaml
    /// </summary>
    public partial class RegistrationPage : Page
    {
        public string Telephone { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Firstname { get; set; }
#nullable enable
        public string? Surname { get; set; }
#nullable enable
        public string? Middlename { get; set; }
#nullable enable
        public int? Gender { get; set; }
#nullable enable
        public DateTime? Birthdate { get; set; }
        public RegistrationPage()
        {
            InitializeComponent();
            CBoxGender.ItemsSource = App.Database.Genders.ToList();
            RegistrationWindow window = Application.Current.Windows.OfType<RegistrationWindow>().SingleOrDefault();
            window.DataContext = this;
            DataContext = this;
            DPBirthdate.DisplayDateStart = DateTime.Now.AddYears(-100);
            DPBirthdate.DisplayDateEnd = DateTime.Now.AddYears(-18);
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
            FieldsShowHide(PBoxPasswordAgainVisible, PBoxPasswordAgain, true);
        }

        private void TBDisplay2_Unchecked(object sender, RoutedEventArgs e)
        {
            FieldsShowHide(PBoxPasswordAgainVisible, PBoxPasswordAgain, false);
        }

        private void UserDBAdd()
        {
            int id;
            if (!Checking.FIOCheck(Firstname))
            {
                App.Messages.ShowError(Properties.Resources.FIOError);
                return;
            }
            if (Surname != null)
            {
                if (!Checking.FIOCheck(Surname))
                {
                    App.Messages.ShowError(Properties.Resources.FIOError);
                    return;
                }
            }
            if (Middlename != null)
            {
                if (!Checking.FIOCheck(Middlename))
                {
                    App.Messages.ShowError(Properties.Resources.FIOError);
                    return;
                }
            }
            if (Gender == -1)
                Gender = null;
            Telephone = Telephone.Insert(0, "8");
            if (PBoxPassword.Password != "")
                Password = PBoxPassword.Password;
            else
                Password = PBoxPasswordVisible.Text;
            if (App.Database.Users.Count() > 0)
                id = App.Database.Users.Select(p => p.ID).Max() + 1;
            else
                id = 1;
            User user = new User()
            {
                ID = id,
                Surname = Surname,
                Name = Firstname,
                Middlename = Middlename,
                Birthdate = Birthdate,
                Telephone = Telephone,
                Email = Email,
                Password = Password,
                RoleID = 1,
                GenderID = Gender+1
            };
            App.Database.Users.Add(user);
            App.Database.SaveChanges();
            App.Messages.ShowInfo("Поздравляем, теперь Вы можете пользоваться личным кабинетом!");
            RegistrationWindow window = Application.Current.Windows.OfType<RegistrationWindow>().SingleOrDefault();
            window.Close();
        }

        private void BtnContinue_Click(object sender, RoutedEventArgs e)
        {
            if (Telephone == null || Email == "" || Firstname == null || (PBoxPassword.Password == "" && PBoxPasswordVisible.Text == "") || (PBoxPasswordAgain.Password == "" &&
                PBoxPasswordAgainVisible.Text == ""))
                App.Messages.ShowError(Properties.Resources.NeedToFillRequired);
            else
            {
                if (Checking.UserExistCheck(Email, Telephone))
                {
                    if ((PBoxPassword.Password == PBoxPasswordAgain.Password && PBoxPassword.Password != "") || (PBoxPassword.Password == PBoxPasswordAgainVisible.Text && PBoxPassword.Password != "")
                        || (PBoxPasswordVisible.Text == PBoxPasswordAgain.Password && PBoxPasswordVisible.Text != "") || (PBoxPasswordVisible.Text == PBoxPasswordAgainVisible.Text && PBoxPasswordVisible.Text != ""))
                    {
                        if (Checking.EmailCheck(Email))
                        {
                            if (Checking.PasswordCheck(PBoxPassword.Password) || Checking.PasswordCheck(PBoxPasswordVisible.Text))
                                UserDBAdd();
                            else
                                App.Messages.ShowError(Properties.Resources.IconInfoToolTip);
                        }
                        else
                            App.Messages.ShowError(Properties.Resources.EmailError);
                    }
                    else
                        App.Messages.ShowError(Properties.Resources.PasswordsError);
                }
                else
                    App.Messages.ShowError("Пользователь с таким телефоном/e-mail уже существует, если аккаунт принадлежит вам,\n то войдите в ЛК, используя эти данные в качестве логина и ранее используемый вами пароль");
            }
        }

        private void BtnCBoxClear_Click(object sender, RoutedEventArgs e)
        {
            CBoxGender.SelectedIndex = -1;
        }

        private void BtnDPClear_Click(object sender, RoutedEventArgs e)
        {
            DPBirthdate.SelectedDate = null;
        }
    }
}
