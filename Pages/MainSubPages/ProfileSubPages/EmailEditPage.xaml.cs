using Novaelectrosbit.Classes;
using Novaelectrosbit.Windows;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace Novaelectrosbit.Pages.MainSubPages.ProfileSubPages
{
    /// <summary>
    /// Логика взаимодействия для EmailEditPage.xaml
    /// </summary>
    public partial class EmailEditPage : Page
    {
        public EditInfoWindow window;

        public EmailEditPage()
        {
            InitializeComponent();
            window = App.Current.Windows.OfType<EditInfoWindow>().SingleOrDefault();
            window.DataContext = this;
            DataContext = App.CurUser;
        }

        private void TBkCancel_MouseLeftButtonDown(object sender, System.Windows.Input.MouseButtonEventArgs e) { window.Close(); }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            if (TBoxEmail.Text != "")
            {
                if (Checking.UserExistCheck(TBoxEmail.Text, ""))
                {
                    if (Checking.EmailCheck(TBoxEmail.Text))
                    {
                        App.CurUser.Email = TBoxEmail.Text;
                        App.DBRefresh();
                        window.Close();
                        App.Messages.ShowInfo(Properties.Resources.EmailCongrats);
                        App.LoadProfilePage(App.CurUser.RoleID);
                    }
                    else
                        App.Messages.ShowError(Properties.Resources.EmailError);
                }
                else
                    App.Messages.ShowError(Properties.Resources.UserEmailExists);
            }
            else
                App.Messages.ShowError(Properties.Resources.NeedToFillRequired);
        }
    }
}
