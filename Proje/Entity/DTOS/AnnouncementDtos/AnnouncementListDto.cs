using System;
using System.Collections.Generic;
using System.Text;

namespace Dto.DTOS.AnnouncementDto
{
    public class AnnouncementListDtos
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string ShortDescription { get; set; }
        public string Description { get; set; }
        public string ImagePath { get; set; }
        public string BroadCastingStatus { get; set; }
        public DateTime Date { get; set; }
        public string DetailImagePath { get; set; }
    }
}
