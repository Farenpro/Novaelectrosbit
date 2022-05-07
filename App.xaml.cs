using Novaelectrosbit.Classes;
using Novaelectrosbit.Models;
using Novaelectrosbit.Pages;
using Novaelectrosbit.Windows;
using System.Windows;

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

                    break;
            }
        }
    }
}
