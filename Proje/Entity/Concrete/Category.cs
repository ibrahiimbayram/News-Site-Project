using Entity.Interfaces;
using System;
using System.Collections.Generic;
using System.Text;

namespace Entity.Concrete
{
    public class Category : ITable
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }
}
