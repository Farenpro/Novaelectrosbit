namespace Novaelectrosbit.Models
{
    public partial class Requisite
    {
        public string TLArea { get { return $"{TotalArea}/{LivingArea} м2"; } }

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
    }
}
