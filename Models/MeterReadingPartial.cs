using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novaelectrosbit.Models
{
    public partial class MeterReading
    {
        public string IndicationsDateStr
        {
            get
            {
                return IndicationsDate.ToString("MMMM yyyy");
            }
        }
        public string TariffName
        {
            get
            {
                return Counter.Requisites.Where(p => App.CurPay.Requisite.PersonalAccount == p.PersonalAccount).FirstOrDefault().Tariff.Name;
            }
        }
        public string IndicationsStr
        {
            get
            {
                return $"{Indications} кВт*ч";
            }
        }
    }
}
