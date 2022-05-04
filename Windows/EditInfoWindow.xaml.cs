using Novaelectrosbit.Pages.MainSubPages.ProfileSubPages;
using System.Windows;

namespace Novaelectrosbit.Windows
{
    /// <summary>
    /// Interaction logic for EditInfoWindow.xaml
    /// </summary>
    public partial class EditInfoWindow : Window
    {
        public EditInfoWindow(int a)
        {
            InitializeComponent();
            switch (a)
            {
                case 1:
                    MainFrame.Navigate(new GenInfoEditPage());
                    break;
                case 2:
                    MainFrame.Navigate(new TelephoneEditPage());
                    break;
                case 3:
                    MainFrame.Navigate(new EmailEditPage());
                    break;
                case 4:
                    MainFrame.Navigate(new PasswordEditPage());
                    break;
            }
        }
    }
}
