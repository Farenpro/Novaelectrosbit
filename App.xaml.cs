using Novaelectrosbit.Classes;
using Novaelectrosbit.Models;
using System.Windows;

namespace Novaelectrosbit
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        public static MessagesClass Messages { get; } = new MessagesClass();
        public static NovaelectrosbitEntities Database { get; set; } = new NovaelectrosbitEntities();
        public static User CurUser { get; set; } = new User();
        public static Payer CurPay { get; set; } = new Payer();
    }
}
