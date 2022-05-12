using System;
using System.Linq;
using System.Windows.Media;

namespace Novaelectrosbit.Models
{
    public partial class Requisite
    {
        public string TLArea { get { return $"{TotalArea}/{LivingArea} м2"; } }
        public string FinalStr { get { return Math.Abs(Final).ToString(); } }
        public string PriceTariff { get { return $"{Convert.ToDouble(Tariff.Price) * Convert.ToDouble(ExpPeriodNow)}"; } }

        public bool Issue
        {
            get
            {
                if (RequisitesPayments.Where(p => p.PayDate.Year == DateTime.Now.Year && p.PayDate.Month == DateTime.Now.Month && p.PaymentTypeID == 2).Count() <= 0)
                    return true;
                else
                    return false;
            }
        }

        public string FIOOwner
        {
            get
            {
                if (OwnerMiddlename != null)
                    return $"{OwnerFirstname} {OwnerMiddlename} {OwnerSurname[0]}.";
                else
                    return $"{OwnerFirstname} {OwnerSurname}";
            }
        }

        public string FullAddress
        {
            get
            {
                if (RegistrationAddress.Flat.HasValue)
                    return $"{RegistrationAddress.Locality.LocalityStr}, {RegistrationAddress.Prefix.PrefixStr}, {RegistrationAddress.House}, {RegistrationAddress.Flat}";
                else
                    return $"{RegistrationAddress.Locality.LocalityStr}, {RegistrationAddress.Prefix.PrefixStr}, {RegistrationAddress.House}";
            }
        }


        public double LastBalance
        {
            get
            {
                if (RequisitesPayments.Count() > 0)
                    return RequisitesPayments.LastOrDefault().BalanceAfterPay;
                else
                    return 0;
            }
        }

        public string Payment
        {
            get
            {
                if (LastBalance < 0)
                    return RequisitesPayments.LastOrDefault().PayAmount.ToString();
                else
                    return "0,00";
            }
        }

        public double Final
        {
            get
            {
                if (Issue)
                {
                    if (Payment != "0,00")
                        return LastBalance - RequisitesPayments.LastOrDefault().PayAmount - Convert.ToDouble(PriceTariff);
                    else
                        return LastBalance - Convert.ToDouble(PriceTariff);
                }
                else
                    return 0;
            }
        }

        public string LastMRDate
        {
            get
            {
                if (Counter.MeterReadings.Where(p => p.IndicationsDate <= DateTime.Now.AddMonths(-1)).Count() > 0)
                    return Counter.MeterReadings.Where(p => p.IndicationsDate <= DateTime.Now.AddMonths(-1)).LastOrDefault().IndicationsDate.ToString("dd.MM.yyyy");
                else
                    return "-";
            }
        }
        public string LastMR
        {
            get
            {
                if (Counter.MeterReadings.Where(p => p.IndicationsDate <= DateTime.Now.AddMonths(-1)).Count() > 0)
                    return Counter.MeterReadings.Where(p => p.IndicationsDate <= DateTime.Now.AddMonths(-1)).LastOrDefault().Indications.ToString();
                else
                    return "-";
            }
        }

        public string NowMRDate
        {
            get
            {
                if (Counter.MeterReadings.Where(p => p.IndicationsDate.Month == DateTime.Now.Month && p.IndicationsDate.Year == DateTime.Now.Year).Count() > 0)
                    return Counter.MeterReadings.Where(p => p.IndicationsDate.Month == DateTime.Now.Month && p.IndicationsDate.Year == DateTime.Now.Year).SingleOrDefault().IndicationsDate.ToString("dd.MM.yyyy");
                else
                    return "-";
            }
        }

        public string NowMR
        {
            get
            {
                if (Counter.MeterReadings.Where(p => p.IndicationsDate.Month == DateTime.Now.Month && p.IndicationsDate.Year == DateTime.Now.Year).Count() > 0)
                    return Counter.MeterReadings.Where(p => p.IndicationsDate.Month == DateTime.Now.Month && p.IndicationsDate.Year == DateTime.Now.Year).SingleOrDefault().Indications.ToString();
                else
                    return "-";
            }
        }

        public string Expenditure
        {
            get
            {
                if (LastMR != "-" && NowMR != "-")
                    return $"{Convert.ToInt32(NowMR) - Convert.ToInt32(LastMR)}";
                else if (LastMR != "-" || NowMR != "-")
                {
                    if (LastMR == "-")
                        return NowMR;
                    else
                        return (Counter.MeterReadings.Select(p => p.Indications).Average() / 3).ToString();
                }
                else
                    return "?";
            }
        }

        public string ExpType
        {
            get
            {
                if (LastMR != "-" && NowMR != "-")
                {
                    if (Convert.ToDateTime(LastMRDate) <= Convert.ToDateTime(NowMRDate).AddMonths(-1))
                        return "П";
                    else
                        return "С,П";
                }
                else if ((LastMR != "-" || NowMR != "-") && Counter.MeterReadings.Count() >= 2)
                    return "С";
                else
                    return "Н";
            }
        }

        public string ExpPeriodNow
        {
            get
            {
                if (ExpType == "С,П")
                    return $"{Convert.ToDouble(Expenditure) + Convert.ToInt32(NowMR)}";
                else if (ExpType == "Н" && NumOfResidents != 0)
                    return $"{NumOfResidents * 120 * Tariff.Price}";
                else if (ExpType == "Н")
                    return $"{1 * 120 * Tariff.Price}";
                else
                    return Expenditure;
            }
        }
    }
}
