using Novaelectrosbit.Pages;
using System.Windows;

namespace Novaelectrosbit.Windows
{
    /// <summary>
    /// Interaction logic for PayWindow.xaml
    /// </summary>
    public partial class PayWindow : Window
    {
        public PayWindow(double summpay, string email)
        {
            InitializeComponent();
            MainFrame.Navigate(new PaySimulatePage(summpay, email));
        }
    }
}
