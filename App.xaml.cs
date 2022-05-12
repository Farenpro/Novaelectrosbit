using Novaelectrosbit.Classes;
using Novaelectrosbit.Models;
using Novaelectrosbit.Pages;
using Novaelectrosbit.Windows;
using System.Windows;
using res = Novaelectrosbit.Properties;

namespace Novaelectrosbit
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        public static MessagesClass Messages { get; } = new MessagesClass();
        public static NovaelectrosbitEntities Database { get; set; } = new NovaelectrosbitEntities();
        public static User CurUser { get; set; } = new User();
        public static Payer CurPay { get; set; } = new Payer();

        public App()
        {
            try
            {
                Database.Database.Connection.Open();
                Database.Database.Connection.Close();
            }
            catch
            {
                App.Messages.ShowError(res.Resources.DatabaseError);
                App.Current.Shutdown();
            }
        }

        public static void LoadCurPayPage(Payer p) { (Current.MainWindow as MainMenuWindow).MainFrame.Navigate(new MainPage(p)); }

        public static void CurUserDefaultPage()
        {
            switch (CurUser.RoleID)
            {
                case 1:
                    (Current.MainWindow as MainMenuWindow).MainFrame.Navigate(new MainPage());
                    break;
                case 2:
                    (Current.MainWindow as MainMenuWindow).MainFrame.Navigate(new MeterInstallerPage());
                    break;
                case 3:
                    (Current.MainWindow as MainMenuWindow).MainFrame.Navigate(new AdminPage());
                    break;
            }
        }
        public static void LoadProfilePage(int id)
        {
            switch (id)
            {
                case 1:
                    (App.Current.MainWindow as MainMenuWindow).MainFrame.Navigate(new MainPage(0));
                    break;
                case 2:
                    (App.Current.MainWindow as MainMenuWindow).MainFrame.Navigate(new MeterInstallerPage(true));
                    break;
                case 3:
                    (App.Current.MainWindow as MainMenuWindow).MainFrame.Navigate(new AdminPage(true));
                    break;
            }
        }
        public static void DBRefresh()
        {
            App.Database.SaveChanges();
            App.Database = new NovaelectrosbitEntities();
        }
    }
}
