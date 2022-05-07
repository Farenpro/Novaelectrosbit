using Novaelectrosbit.Classes;
using Novaelectrosbit.Windows;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace Novaelectrosbit.Pages.MainSubPages.ProfileSubPages
{
    /// <summary>
    /// Interaction logic for TelephoneEditPage.xaml
    /// </summary>
    public partial class TelephoneEditPage : Page
    {
        readonly EditInfoWindow window;
        public TelephoneEditPage()
        {
            InitializeComponent();
            window = Application.Current.Windows.OfType<EditInfoWindow>().SingleOrDefault();
            window.DataContext = this;
            TBoxTelephone.Value = App.CurUser.Telephone.Substring(1);
        }

        private void TBkCancel_MouseLeftButtonDown(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            window.Close();
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            if (TBoxTelephone.Value != null)
            {
                if (Checking.UserExistCheck("", TBoxTelephone.Value.ToString()))
                {
                    App.CurUser.Telephone = TBoxTelephone.Value.ToString().Insert(0, "8");
                    App.Database.SaveChanges();
                    window.Close();
                    App.Messages.ShowInfo(Properties.Resources.TelephoneCongrats);
                    (Application.Current.MainWindow as MainMenuWindow).MainFrame.Navigate(new MainPage(0));
                }
                else
                    App.Messages.ShowError(Properties.Resources.UserTelephoneExists);
            }
            else
                App.Messages.ShowError(Properties.Resources.NeedToFillRequired);
        }
    }
}