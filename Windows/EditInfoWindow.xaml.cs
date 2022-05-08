using Novaelectrosbit.Pages.MainSubPages.ProfileSubPages;
using Novaelectrosbit.Pages.MRPages;
using Novaelectrosbit.Pages.MRPages.CounterSubPages;
using Novaelectrosbit.Pages.MRPages.RegAddressSubPages;
using System.Windows;

namespace Novaelectrosbit.Windows
{
    /// <summary>
    /// Interaction logic for EditInfoWindow.xaml
    /// </summary>
    public partial class EditInfoWindow : Window
    {
        public EditInfoWindow(byte a)
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
                case 5:
                    MainFrame.Navigate(new AddRegAddressPage());
                    break;
                case 6:
                    MainFrame.Navigate(new AddCounterPage());
                    break;
                case 7:
                    MainFrame.Navigate(new AddTariffPage());
                    break;
                case 8:
                    MainFrame.Navigate(new LocalityAddPage());
                    break;
                case 9:
                    MainFrame.Navigate(new StreetAddPage());
                    break;
                case 10:
                    MainFrame.Navigate(new AddBrandPage());
                    break;
            }
        }
    }
}
