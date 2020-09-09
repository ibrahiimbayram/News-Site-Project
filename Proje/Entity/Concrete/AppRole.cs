using Entity.Interfaces;
using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Text;

namespace Entity.Concrete
{
    public class AppRole : IdentityRole<int> , ITable
    {
        public string Name { get; set; }
    }
}
