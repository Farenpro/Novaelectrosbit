using Novaelectrosbit.Pages;
using System.Windows;

namespace Novaelectrosbit.Windows
{
    /// <summary>
    /// Interaction logic for MainMenuWindow.xaml
    /// </summary>
    public partial class MainMenuWindow : Window
    {
        public MainMenuWindow()
        {
            InitializeComponent();
            MainFrame.Navigate(new AuthorizationPage());
        }
    }
}
