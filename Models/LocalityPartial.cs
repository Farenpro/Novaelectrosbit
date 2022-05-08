namespace Novaelectrosbit.Models
{
    public partial class Locality
    {
        public string LocalityStr { get { return $"{LocalityType.Name} {Name}"; } }
    }
}
