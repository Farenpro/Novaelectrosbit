﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class NovaelectrosbitEntities : DbContext
    {
        public NovaelectrosbitEntities()
            : base("name=NovaelectrosbitEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<BuildType> BuildTypes { get; set; }
        public virtual DbSet<Counter> Counters { get; set; }
        public virtual DbSet<CounterBrand> CounterBrands { get; set; }
        public virtual DbSet<Gender> Genders { get; set; }
        public virtual DbSet<InstallPlace> InstallPlaces { get; set; }
        public virtual DbSet<Locality> Localities { get; set; }
        public virtual DbSet<MeterReading> MeterReadings { get; set; }
        public virtual DbSet<NetworkOrganisation> NetworkOrganisations { get; set; }
        public virtual DbSet<Payer> Payers { get; set; }
        public virtual DbSet<PaymentType> PaymentTypes { get; set; }
        public virtual DbSet<Prefix> Prefixes { get; set; }
        public virtual DbSet<PrefixType> PrefixTypes { get; set; }
        public virtual DbSet<RegistrationAddress> RegistrationAddresses { get; set; }
        public virtual DbSet<Requisite> Requisites { get; set; }
        public virtual DbSet<RequisitesPayment> RequisitesPayments { get; set; }
        public virtual DbSet<ResponsiblePerson> ResponsiblePersons { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<Tariff> Tariffs { get; set; }
        public virtual DbSet<User> Users { get; set; }
    }
}
