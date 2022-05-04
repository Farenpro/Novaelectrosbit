using Novaelectrosbit.Models;
using Novaelectrosbit.Windows;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace Novaelectrosbit.Pages.MainSubPages
{
    /// <summary>
    /// Interaction logic for AddPerAccPage.xaml
    /// </summary>
    public partial class AddPerAccPage : Page
    {
        public AddPerAccPage()
        {
            InitializeComponent();
            CBoxResponsiblePerson.ItemsSource = App.Database.ResponsiblePersons.ToList();
            CBoxResponsiblePerson.SelectedIndex = 0;
        }

        private void BtnMainPageBack_Click(object sender, RoutedEventArgs e)
        {
            (Application.Current.MainWindow as MainMenuWindow).MainFrame.Navigate(new MainPage());
        }

        private void BtnConnect_Click(object sender, RoutedEventArgs e)
        {
            int id;
            if (TBoxPerAccNumber.Value != null)
            {
                if (App.Database.Requisites.Where(p => p.PersonalAccount == TBoxPerAccNumber.Value.ToString()).Count() > 0)
                {
                    if (App.Database.Payers.Where(p => p.UserID == App.CurUser.ID && p.RequisitesPersonalAccount == TBoxPerAccNumber.Value.ToString()).Count() <= 0)
                    {
                        if (App.Database.Payers.Count() > 0)
                            id = App.Database.Payers.Select(p => p.ID).Max() + 1;
                        else
                            id = 1;
                        Payer payer = new Payer()
                        {
                            ID = id,
                            UserID = App.CurUser.ID,
                            ResponsiblePersonID = CBoxResponsiblePerson.SelectedIndex + 1,
                            RequisitesPersonalAccount = TBoxPerAccNumber.Value.ToString()
                        };
                        App.Database.Payers.Add(payer);
                        App.Database.SaveChanges();
                        (Application.Current.MainWindow as MainMenuWindow).MainFrame.Navigate(new MainPage());
                    }
                    else
                        App.Messages.ShowError("Данный лицевой счет уже подключен!");
                }
                else
                    App.Messages.ShowWarning("Лицевой счет не найден");
            }
            else
                App.Messages.ShowError(Properties.Resources.NeedToFillRequired);
        }
    }
}
