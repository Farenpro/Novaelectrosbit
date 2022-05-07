using System.Linq;

namespace Novaelectrosbit.Models
{
    public partial class MeterReading
    {
        public string IndicationsDateStr { get { return IndicationsDate.ToString("MMMM yyyy"); } }
        public string IndicationsStr { get { return $"{Indications} кВт*ч"; } }

        public string TariffName
        {
            get { return Counter.Requisites.Where(p => App.CurPay.Requisite.PersonalAccount == p.PersonalAccount).FirstOrDefault().Tariff.Name; }
        }
    }
}
