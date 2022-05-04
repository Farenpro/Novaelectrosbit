using System.Windows;
using Novaelectrosbit.Pages;

namespace Novaelectrosbit.Windows
{
    /// <summary>
    /// Interaction logic for RegistrationWindow.xaml
    /// </summary>
    public partial class RegistrationWindow : Window
    {
        public RegistrationWindow()
        {
            InitializeComponent();
            MainFrame.Navigate(new RegistrationPage());
        }
    }
}
