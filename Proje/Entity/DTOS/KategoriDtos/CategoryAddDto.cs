using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Dto.DTOS.KategoriDtos
{
    public class CategoryAddDto
    {
        [Required(ErrorMessage ="Kategori Adı Boş Bırakılamaz")]
        public string Name { get; set; }
    }
}
