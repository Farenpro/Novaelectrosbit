using Novaelectrosbit.Models;
using Novaelectrosbit.Windows;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace Novaelectrosbit.Pages.MRPages.RegAddressSubPages
{
    /// <summary>
    /// Interaction logic for StreetAddPage.xaml
    /// </summary>
    public partial class StreetAddPage : Page
    {
        public PrefixType PrefixType { get; set; }
        public string Street { get; set; }
        public EditInfoWindow window;

        public StreetAddPage()
        {
            InitializeComponent();
            window = App.Current.Windows.OfType<EditInfoWindow>().LastOrDefault();
            window.DataContext = this;
            DataContext = this;
            CBoxPrefixType.ItemsSource = App.Database.PrefixTypes.ToList();
        }

        private void TBkCancel_MouseLeftButtonDown(object sender, MouseButtonEventArgs e) { window.Close(); }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            if (PrefixType != null && Street != "")
            {
                if (App.Database.Prefixes.Where(p => p.PrefixTypeID == PrefixType.ID && p.Name == Street).Count() <= 0)
                {
                    int id = 1;
                    if (App.Database.Prefixes.Count() > 0)
                        id = App.Database.Prefixes.Select(p => p.ID).Max() + 1;
                    Prefix prefix = new Prefix()
                    {
                        ID = id,
                        PrefixTypeID = PrefixType.ID,
                        Name = Street
                    };
                    App.Database.Prefixes.Add(prefix);
                    App.DBRefresh();
                    App.Messages.ShowInfo(Properties.Resources.AddCongrats);
                    window.Close();
                }
                else
                    App.Messages.ShowError(Properties.Resources.StreetExists);
            }
            else
                App.Messages.ShowError(Properties.Resources.NeedToFillRequired);
        }
    }
}
