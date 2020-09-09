using System;
using System.Collections.Generic;
using System.Text;

namespace Dto.DTOS.NewsDtos
{
   public class NewsListDto
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string ShortDescription { get; set; }
        public string Description { get; set; }
        public string ImagePath { get; set; }
        public DateTime Date { get; set; }
        public string DetailImagePath { get; set; }
        public string BroadCastingStatus { get; set; }
        public int CategoryId { get; set; }
    }
}
