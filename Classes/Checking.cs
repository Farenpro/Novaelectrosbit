using System;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;

namespace Novaelectrosbit.Classes
{
    public static class Checking
    {
        public static string EmailPattern = @"^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$";
        public static string PasswordPatternUpLetters = @"[A-Z]";
        public static string PasswordPatternLowLetters = @"[a-z]";
        public static string PasswordPatternNumbers = @"[0-9]";
        public static string NamePattern = @"^[A-ZА-ЯЁ]{1,}[A-Za-zа-яёА-ЯЁ0-9]{1,}";
        public static string NumPattern = @"^[1-9]{1}[0-9]{0,6}(\,[0-9]{1,2})?$";
        public static string NumSymbPattern = @"^[-,0-9]+$";

        public static bool EmailCheck(string email)
        {
            if (Regex.IsMatch(email, EmailPattern))
                return true;
            else
                return false;
        }

        public static bool UserExistCheck(string email, string telephone)
        {
            if (App.Database.Users.Where(p => p.Email == email || p.Telephone == telephone.Insert(0, "8")).Count() <= 0)
                return true;
            else
                return false;
        }

        public static bool PasswordCheck(string password)
        {
            if (password != "" && password.Length >= 8 && Regex.IsMatch(password, PasswordPatternUpLetters) && Regex.IsMatch(password, PasswordPatternLowLetters) &&
                Regex.IsMatch(password, PasswordPatternNumbers))
                return true;
            else
                return false;
        }

        public static bool FIOCheck(string name)
        {
            if (Regex.IsMatch(name, NamePattern))
                return true;
            else
                return false;
        }

        public static bool NumCheck(string input)
        {
            if (Regex.IsMatch(input, NumPattern))
                return true;
            else
                return false;
        }

        public static bool NumCheckOneSymb(string symb)
        {
            if (Regex.IsMatch(symb, NumSymbPattern))
                return true;
            else
                return false;
        }

        public static bool MonthCheck(string month)
        {
            DateTime dt;
            if (DateTime.TryParseExact(month, "MM", CultureInfo.InvariantCulture, DateTimeStyles.None, out dt))
                return true;
            else
                return false;
        }

        public static bool YearCheck(string year)
        {
            if (Convert.ToInt32(year) + 2000 <= DateTime.Now.AddYears(5).Year && Convert.ToInt32(year) + 2000 >= DateTime.Now.Year)
                return true;
            else
                return false;
        }

        public static bool MAndYCheck(string month, string year)
        {
            DateTime dt;
            if (MonthCheck(month))
            {
                if (YearCheck(year))
                {
                    if (DateTime.TryParseExact($"{month}/{year}", "MM/yy", CultureInfo.InvariantCulture, DateTimeStyles.None, out dt))
                    {
                        if (dt.Date > DateTime.Now.Date)
                            return true;
                        else
                            return false;
                    }
                    else
                        return false;
                }
                else
                    return false;
            }
            else
                return false;
        }
    }
}
