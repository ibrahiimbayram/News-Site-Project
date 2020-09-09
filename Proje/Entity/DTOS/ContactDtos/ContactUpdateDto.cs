using System;
using System.Collections.Generic;
using System.Text;

namespace Dto.DTOS.ContactDtos
{
    public class ContactUpdateDto
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Message { get; set; }
        public DateTime Date { get; set; }
        public string ReadInfo { get; set; }
    }
}
