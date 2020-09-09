using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Dto.DTOS.AppUserDtos
{
    public class AppUserAddDto
    {
        [Required(ErrorMessage = "Boş Bırakılamaz")]
        public string UserName { get; set; }
        [Required(ErrorMessage = "Boş Bırakılamaz")]
        public string Name { get; set; }
        [Required(ErrorMessage = "Boş Bırakılamaz")]
        public string SurName { get; set; }
        [Required(ErrorMessage = "Boş Bırakılamaz")]
        public string Password { get; set; }
        [Required(ErrorMessage = "Boş Bırakılamaz")]
        public string ConfirmPassword { get; set; }
        [Required(ErrorMessage = "Boş Bırakılamaz")]
        public string Email { get; set; }
    }
}
