using System;
using System.Linq;
using System.Windows.Media;

namespace Novaelectrosbit.Models
{
    public partial class Payer
    {
        public string CounterNum { get { return Requisite.CounterNumber; } }
        public string TariffName { get { return Requisite.Tariff.Name; } }

        public string FullAddress
        {
            get
            {
                if (Requisite.RegistrationAddress.Flat.HasValue)
                    return $"{Requisite.RegistrationAddress.Locality.Name}, {Requisite.RegistrationAddress.Prefix.PrefixType.Name} {Requisite.RegistrationAddress.Prefix.Name}, {Requisite.RegistrationAddress.House}, {Requisite.RegistrationAddress.Flat}";
                else
                    return $"{Requisite.RegistrationAddress.Locality.Name}, {Requisite.RegistrationAddress.Prefix.PrefixType.Name} {Requisite.RegistrationAddress.Prefix.Name}, {Requisite.RegistrationAddress.House}";
            }
        }

        public string ShortAddress
        {
            get
            {
                if (Requisite.RegistrationAddress.Flat.HasValue)
                    return $"{Requisite.RegistrationAddress.Prefix.PrefixType.Name} {Requisite.RegistrationAddress.Prefix.Name}, {Requisite.RegistrationAddress.House}, {Requisite.RegistrationAddress.Flat}";
                else
                    return $"{Requisite.RegistrationAddress.Prefix.PrefixType.Name} {Requisite.RegistrationAddress.Prefix.Name}, {Requisite.RegistrationAddress.House}";
            }
        }

        public int MREnding
        {
            get
            {
                if (DateTime.Now.Day > 26)
                    return DateTime.DaysInMonth(DateTime.Now.Year, DateTime.Now.Month) - DateTime.Now.Day;
                else
                    return 26 - DateTime.Now.Day;
            }
        }

        public string DTStatus
        {
            get
            {
                if (DateTime.Now.Day < 26)
                    return "До окончания передачи показаний";
                else
                    return "До передачи показний";
            }
        }

        public double BalanceAfterPay
        {
            get
            {
                if (Requisite.RequisitesPayments.Count() > 0)
                    return Requisite.RequisitesPayments.OrderBy(p => p.PayDate).LastOrDefault().BalanceAfterPay;
                else
                    return 0;
            }
        }

        public string StatusStr
        {
            get
            {
                if (BalanceAfterPay > 0)
                    return "Переплата";
                else if (BalanceAfterPay == 0)
                    return "Баланс";
                else
                    return "Задолженность";
            }
        }

        public Brush BalanceColor
        {
            get
            {
                if (BalanceAfterPay > 0)
                    return Brushes.LightGreen;
                else if (BalanceAfterPay == 0)
                    return Brushes.White;
                else
                    return Brushes.Red;
            }
        }

        public string LastMRDate
        {
            get
            {
                if (Requisite.Counter.MeterReadings.Count() > 0)
                    return Requisite.Counter.MeterReadings.Select(p => p.IndicationsDate).LastOrDefault().ToString("dd.MM.yyyy");
                else
                    return "-";
            }
        }

        public string LastMR
        {
            get
            {
                if (Requisite.Counter.MeterReadings.Count() > 0)
                    return Requisite.Counter.MeterReadings.Select(p => p.Indications).LastOrDefault().ToString();
                else
                    return "-";
            }
        }
    }
}