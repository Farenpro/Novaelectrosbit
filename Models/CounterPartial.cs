using System;
using System.Linq;

namespace Novaelectrosbit.Models
{
    public partial class Counter
    {
        public string InstallDateStr
        {
            get
            {
                return InstallDate.ToString("dd.MM.yyyy");
            }
        }
        public string BrandName
        {
            get
            {
                return CounterBrand.Name;
            }
        }
        public string MPIEndDateStr
        {
            get
            {
                return MPIEndDate.ToString("dd.MM.yyyy");
            }
        }
        public string PlaceName
        {
            get
            {
                return InstallPlace.Name;
            }
        }
        public string PersonTypeName
        {
            get
            {
                return ResponsiblePerson.Name;
            }
        }
        public string NetOrgName
        {
            get
            {
                return NetworkOrganisation.Name;
            }
        }
        public string BuildName
        {
            get
            {
                return BuildType.Name;
            }
        }
 
    }
}
