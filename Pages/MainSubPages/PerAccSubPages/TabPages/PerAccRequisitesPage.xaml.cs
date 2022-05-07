using System.Windows.Controls;

namespace Novaelectrosbit.Pages.MainSubPages.PerAccSubPages.TabPages
{
    /// <summary>
    /// Interaction logic for PerAccRequisitesPage.xaml
    /// </summary>
    public partial class PerAccRequisitesPage : Page
    {
        public PerAccRequisitesPage()
        {
            InitializeComponent();
            GridRequisites.DataContext = App.CurPay.Requisite;
            GridCounter.DataContext = App.CurPay.Requisite.Counter;
            GridTariff.DataContext = App.CurPay.Requisite.Tariff;
        }
    }
}
