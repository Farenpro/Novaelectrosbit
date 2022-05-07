using Novaelectrosbit.Windows;
using System.Windows;
using System.Windows.Controls;

namespace Novaelectrosbit.Pages.MainSubPages
{
    /// <summary>
    /// Логика взаимодействия для NoPerAccPage.xaml
    /// </summary>
    public partial class NoPerAccPage : Page
    {
        public NoPerAccPage()
        {
            InitializeComponent();
            DataContext = App.CurUser;
        }

        private void BtnAddPerAcc_Click(object sender, RoutedEventArgs e)
        {
            (Application.Current.MainWindow as MainMenuWindow).MainFrame.Navigate(new MainPage(1));
        }
    }
}
