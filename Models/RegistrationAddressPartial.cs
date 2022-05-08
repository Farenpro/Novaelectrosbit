namespace Novaelectrosbit.Models
{
    public partial class RegistrationAddress
    {
        public string RegAddressStr
        {
            get
            {
                if (Flat != null)
                    return $"{Locality.LocalityStr}, {Prefix.PrefixStr}, {House}, {Flat}";
                else
                    return $"{Locality.LocalityStr}, {Prefix.PrefixStr}, {House}";
            }
        }
    }
}
