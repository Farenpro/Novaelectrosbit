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
        public static string NamePattern = @"^[A-ZА-ЯЁ]+[A-Za-z0-9]{1,}";

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
    }
}
