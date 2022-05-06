//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Novaelectrosbit.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Requisite
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Requisite()
        {
            this.Payers = new HashSet<Payer>();
            this.RequisitesPayments = new HashSet<RequisitesPayment>();
        }
    
        public string PersonalAccount { get; set; }
        public string OwnerSurname { get; set; }
        public string OwnerFirstname { get; set; }
        public string OwnerMiddlename { get; set; }
        public int RegistrationAddressID { get; set; }
        public double TotalArea { get; set; }
        public double LivingArea { get; set; }
        public int NumOfResidents { get; set; }
        public int NumOfRooms { get; set; }
        public int TariffID { get; set; }
        public string CounterNumber { get; set; }
    
        public virtual Counter Counter { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Payer> Payers { get; set; }
        public virtual RegistrationAddress RegistrationAddress { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RequisitesPayment> RequisitesPayments { get; set; }
        public virtual Tariff Tariff { get; set; }
    }
}