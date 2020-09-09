using System;
using System.Collections.Generic;
using System.Text;

namespace Dto.DTOS.AppUserDtos
{
    public class AppUserListDto
    {
        public string UserName { get; set; }
        public string Name { get; set; }
        public string SurName { get; set; }
        public string Password { get; set; }
        public string ConfirmPassword { get; set; }
        public string Email { get; set; }
    }
}
