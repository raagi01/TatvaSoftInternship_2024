using BackEnd.Entity;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Diagnostics.Metrics;
using System.Reflection;

namespace BackEnd.Entity
{
    public class CIDbContext : DbContext
    {
        public CIDbContext(DbContextOptions<CIDbContext> options) : base(options)
        {

        }
        public DbSet<User> User { get; set; }
        public DbSet<UserDetail> UserDetail { get; set; }
    }
}
