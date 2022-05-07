namespace Novaelectrosbit.Models
{
    public partial class User
    {
        public string FIO
        {
            get
            {
                if (Surname != null)
                    return $"{Surname} {Name} {Middlename}";
                else
                    return $"{Name} {Middlename}";
            }
        }

        public string FI
        {
            get
            {
                if (Surname != null)
                    return $"{Surname} {Name}";
                else
                    return Name;
            }
        }

        public string StrGender
        {
            get
            {
                if (GenderID == 1)
                    return "мужской";
                else if (GenderID == 2)
                    return "женский";
                else return null;
            }
        }

        public int IntGenderID
        {
            get
            {
                if (GenderID.HasValue)
                    return GenderID.Value - 1;
                else
                    return -1;
            }
        }

        public string DTBirthdate
        {
            get
            {
                if (Birthdate.HasValue)
                    return Birthdate.Value.ToString("dd.MM.yyyy");
                else
                    return null;
            }
        }
    }
}
