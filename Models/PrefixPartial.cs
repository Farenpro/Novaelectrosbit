namespace Novaelectrosbit.Models
{
    public partial class Prefix
    {
        public string PrefixStr { get { return $"{PrefixType.Name} {Name}"; } }
    }
}
