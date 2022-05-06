using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media;

namespace Novaelectrosbit.Models
{
    public partial class RequisitesPayment
    {
        public string PayDateStr
        {
            get
            {
                return PayDate.ToString("dd.MM.yyyy");
            }
        }
        public string Credited
        {
            get
            {
                return PaymentType.Name;
            }
        }
        public string PayAmountStr
        {
            get
            {
                return $"{PayAmount} руб.";
            }
        }
        public string BalanceAfterPayStr
        {
            get
            {
                return $"{BalanceAfterPay} руб";
            }
        }
        public Brush BalanceBrush
        {
            get
            {
                if (BalanceAfterPay > 0)
                    return Brushes.Green;
                else if (BalanceAfterPay == 0)
                    return Brushes.Black;
                else
                    return Brushes.Red;
            }
        }
        public string PayDateStr2
        {
            get
            {
                return PayDate.ToString("MMMM yyyy г.");
            }
        }
        public string PayDateStr3
        {
            get
            {
                return PayDate.ToString("MMMM yyyy");
            }
        }
        public string Price
        {
            get
            {
                if (Final < 0)
                    return $"{Math.Truncate(Math.Abs(Final))} р. {Math.Round(Math.Abs(Final) - Math.Truncate(Math.Abs(Final)),2)} к.";
                else
                    return "0 р. 00 к.";
            }
        }
        public string InfoStr
        {
            get
            {
                if (LastBalance < 0)
                    return $"На начало расчётного периода сумма задолженности составляет (руб.):";
                else if (LastBalance == 0)
                    return "На начало расчётного периода баланс составляет (руб.)";
                else
                    return "На начало расчётного периода сумма переплаты составляет (руб.)";
            }
        }
        public string Payment
        {
            get
            {
                if (LastBalance < 0)
                    return Requisite.RequisitesPayments.Where(p => p.PayDate < PayDate).FirstOrDefault().PayAmount.ToString();
                else
                    return "0,00";
            }
        }
        public double Final
        {
            get
            {
                if (Payment != "0,00")
                    return LastBalance - Requisite.RequisitesPayments.Where(p => p.PayDate < PayDate).FirstOrDefault().PayAmount - Convert.ToDouble(PriceTariff);
                else
                    return LastBalance - Convert.ToDouble(PriceTariff);
            }
        }

        public string FinalStr
        {
            get
            {
                return Math.Abs(Final).ToString();
            }
        }
        public string LastMR
        {
            get
            {
                if (Requisite.Counter.MeterReadings.Count() > 0)
                    return Requisite.Counter.MeterReadings.Where(p => p.IndicationsDate <= PayDate).FirstOrDefault().Indications.ToString();
                else
                    return "-";
            }
        }
        public string LastMRDate
        {
            get
            {
                if (Requisite.Counter.MeterReadings.Count() > 0)
                    return Requisite.Counter.MeterReadings.Where(p => p.IndicationsDate <= PayDate).FirstOrDefault().IndicationsDate.ToString("dd.MM.yyyy");
                else
                    return "-";
            }
        }
        public string NowMR
        {
            get
            {
                if (Requisite.Counter.MeterReadings.Where(p => p.IndicationsDate.Month == PayDate.Month && p.IndicationsDate.Year == PayDate.Year).Count() > 0)
                    return Requisite.Counter.MeterReadings.Where(p => p.IndicationsDate.Month == PayDate.Month && 
                    p.IndicationsDate.Year == PayDate.Year).SingleOrDefault().Indications.ToString();
                else
                    return "-";
            }
        }
        public string NowMRDate
        {
            get
            {
                if (Requisite.Counter.MeterReadings.Where(p => p.IndicationsDate.Month == PayDate.Month && p.IndicationsDate.Year == PayDate.Year).Count() > 0)
                    return Requisite.Counter.MeterReadings.Where(p => p.IndicationsDate.Month == PayDate.Month &&
                    p.IndicationsDate.Year == PayDate.Year).SingleOrDefault().IndicationsDate.ToString("dd.MM.yyyy");
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
                    return "0";
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
                else if ((LastMR != "-" || NowMR != "-") && Requisite.Counter.MeterReadings.Count() >= 2)
                    return "С";
                else
                    return "Н";
            }
        }
        public string ExpPeriodNow
        {
            get
            {
                if (ExpType == "П")
                    return Expenditure;
                else if (ExpType == "С")
                    return $"{Requisite.Counter.MeterReadings.Average(p => Convert.ToDouble(Expenditure))}";
                else if (ExpType == "С,П")
                    return $"{Requisite.Counter.MeterReadings.Average(p => Convert.ToDouble(Expenditure) + Convert.ToInt32(NowMR))}";
                else
                    return $"{Requisite.NumOfResidents * 120 * Requisite.Tariff.Price}";
            }
        }
        public string PriceTariff
        {
            get
            {
                return $"{Convert.ToDouble(Requisite.Tariff.Price) * Convert.ToDouble(ExpPeriodNow)}";
            }
        }
        public double LastPay
        {
            get
            {
                return App.CurPay.Requisite.RequisitesPayments.Where(p => p.PayDate < PayDate).LastOrDefault().PayAmount;
            }
        }
        public string LastPayDate
        {
            get
            {
                return App.CurPay.Requisite.RequisitesPayments.Where(p => p.PayDate < PayDate).LastOrDefault().PayDate.ToString("dd.MM.yyyy");
            }
        }
        public double LastBalance
        {
            get
            {
                return App.CurPay.Requisite.RequisitesPayments.Where(p => p.PayDate < PayDate).LastOrDefault().BalanceAfterPay;
            }
        }
    }
}
