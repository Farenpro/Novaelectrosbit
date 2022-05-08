using Novaelectrosbit.Classes;
using Novaelectrosbit.Models;
using Novaelectrosbit.Windows;
using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

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
            RegistrationWindow window = App.Current.Windows.OfType<RegistrationWindow>().SingleOrDefault();
            window.DataContext = this;
            DataContext = this;
            DPBirthdate.DisplayDateStart = DateTime.Now.AddYears(-100);
            DPBirthdate.DisplayDateEnd = DateTime.Now.AddYears(-18);
        }

        private void TBDisplay_Checked(object sender, RoutedEventArgs e) { SubFunctions.TBShowHide(PBoxPasswordVisible, PBoxPassword, true); }

        private void TBDisplay_Unchecked(object sender, RoutedEventArgs e) { SubFunctions.TBShowHide(PBoxPasswordVisible, PBoxPassword, false); }

        private void TBDisplay2_Checked(object sender, RoutedEventArgs e) { SubFunctions.TBShowHide(PBoxPasswordAgainVisible, PBoxPasswordAgain, true); }

        private void TBDisplay2_Unchecked(object sender, RoutedEventArgs e) { SubFunctions.TBShowHide(PBoxPasswordAgainVisible, PBoxPasswordAgain, false); }

        private void BtnCBoxClear_Click(object sender, RoutedEventArgs e) { CBoxGender.SelectedIndex = -1; }

        private void BtnDPClear_Click(object sender, RoutedEventArgs e) { DPBirthdate.SelectedDate = null; }

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
                    App.Messages.ShowError(Properties.Resources.UserExists);
            }
        }

        private void UserDBAdd()
        {
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
            int id = 1;
            if (App.Database.Users.Count() > 0)
                id = App.Database.Users.Select(p => p.ID).Max() + 1;
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
                GenderID = Gender + 1
            };
            App.Database.Users.Add(user);
            App.Database.SaveChanges();
            App.Messages.ShowInfo(Properties.Resources.RegistrationCongrats);
            RegistrationWindow window = App.Current.Windows.OfType<RegistrationWindow>().SingleOrDefault();
            window.Close();
        }
    }
}
