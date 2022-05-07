using Novaelectrosbit.Models;
using Novaelectrosbit.Pages;
using Novaelectrosbit.Windows;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace Novaelectrosbit.UserControls
{
    /// <summary>
    /// Interaction logic for PersonalAccUC.xaml
    /// </summary>
    public partial class PersonalAccUC : UserControl
    {
        public Payer ThisPayer { get; set; }
        public PersonalAccUC(Payer payer)
        {
            InitializeComponent();
            ThisPayer = payer;
            this.DataContext = payer;
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            if (App.Messages.ShowQuestion("Вы действительно хотите удалить данный лицевой счет?") == MessageBoxResult.OK)
            {
                Payer p = App.Database.Payers.Where(p => p.UserID == App.CurUser.ID && p.RequisitesPersonalAccount == TBkPerAcc.Text).SingleOrDefault();
                App.Database.Payers.Remove(p);
                App.Database.SaveChanges();
                App.CurUserDefaultPage();
            }
        }

        private void GridPerAcc_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            App.CurUserDefaultPage();
        }
    }
}
