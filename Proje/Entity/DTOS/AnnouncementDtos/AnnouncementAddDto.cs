using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Dto.DTOS.AnnouncementDto
{
    public class AnnouncementAddDtos
    {
        [Required(ErrorMessage = "Başlık Boş Bırakılamaz")]
        public string Title { get; set; }
        [Required(ErrorMessage = "Kısa Açıklama Boş Bırakılamaz")]
        public string ShortDescription { get; set; }
        [Required(ErrorMessage = "Açıklama Boş Bırakılamaz")]
        public string Description { get; set; }
        public string ImagePath { get; set; }
        public DateTime Date { get; set; }
        public string DetailImagePath { get; set; }
        public string BroadCastingStatus { get; set; }
        public int CategoryId { get; set; }
    }
}
