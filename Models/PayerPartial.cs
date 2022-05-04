using System;
using System.Windows.Media;
using System.Linq;

namespace Novaelectrosbit.Models
{
    public partial class Payer
    { 
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
                if (DateTime.Now.Day>26)
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
                    return Requisite.RequisitesPayments.OrderBy(p=>p.PayDate).Last().BalanceAfterPay;
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
    }
}