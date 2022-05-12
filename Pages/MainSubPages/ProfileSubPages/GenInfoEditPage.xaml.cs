using Novaelectrosbit.Classes;
using Novaelectrosbit.Windows;
using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace Novaelectrosbit.Pages.MainSubPages.ProfileSubPages
{
    /// <summary>
    /// Interaction logic for GenInfoEditPage.xaml
    /// </summary>
    public partial class GenInfoEditPage : Page
    {
        public EditInfoWindow window;

        public GenInfoEditPage()
        {
            InitializeComponent();
            CBoxGender.ItemsSource = App.Database.Genders.ToList();
            window = App.Current.Windows.OfType<EditInfoWindow>().SingleOrDefault();
            window.DataContext = this;
            DataContext = App.CurUser;
            DPBirthdate.DisplayDateStart = DateTime.Now.AddYears(-100);
            DPBirthdate.DisplayDateEnd = DateTime.Now.AddYears(-18);
        }

        private void TBkCancel_MouseLeftButtonDown(object sender, System.Windows.Input.MouseButtonEventArgs e) { window.Close(); }

        private void BtnCBoxClear_Click(object sender, RoutedEventArgs e) { CBoxGender.SelectedIndex = -1; }

        private void BtnDPClear_Click(object sender, RoutedEventArgs e) { DPBirthdate.SelectedDate = null; }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            if (TBoxName.Text != "")
            {
                if (!Checking.FIOCheck(TBoxName.Text))
                {
                    App.Messages.ShowError(Properties.Resources.FIOError);
                    return;
                }
                if (TBoxSurname.Text != "")
                {
                    if (!Checking.FIOCheck(TBoxSurname.Text))
                    {
                        App.Messages.ShowError(Properties.Resources.FIOError);
                        return;
                    }
                }
                if (TBoxMiddlename.Text != "")
                {
                    if (!Checking.FIOCheck(TBoxMiddlename.Text))
                    {
                        App.Messages.ShowError(Properties.Resources.FIOError);
                        return;
                    }
                }
                if (TBoxMiddlename.Text == "")
                    App.CurUser.Middlename = null;
                else
                    App.CurUser.Middlename = TBoxMiddlename.Text;
                if (TBoxSurname.Text == "")
                    App.CurUser.Surname = null;
                else
                    App.CurUser.Surname = TBoxSurname.Text;
                App.CurUser.Name = TBoxName.Text;
                if (CBoxGender.SelectedIndex == -1)
                    App.CurUser.GenderID = null;
                else
                    App.CurUser.GenderID = CBoxGender.SelectedIndex + 1;
                App.CurUser.Birthdate = DPBirthdate.SelectedDate;
                App.DBRefresh();
                window.Close();
                App.Messages.ShowInfo(Properties.Resources.GenInfoCongrats);
                App.LoadProfilePage(App.CurUser.RoleID);
            }
            else
                App.Messages.ShowError(Properties.Resources.NeedToFillRequired);
        }
    }
}
