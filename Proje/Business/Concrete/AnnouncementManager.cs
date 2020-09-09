using AutoMapper;
using DataAcces.Interfaces;
using Dto.DTOS.AnnouncementDto;
using Entity.Concrete;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Threading.Tasks;

namespace Business.Concrete
{
    public class AnnouncementManager
    {
        private readonly IAnnouncementDal _announcementDal;
        private readonly IGenericDal<Category> _genericDalCategory;
        IMapper _mapper;
        public AnnouncementManager(IAnnouncementDal announcementDal, IMapper mapper, IGenericDal<Category> genericDalCategory)
        {
            _mapper = mapper;
            _announcementDal = announcementDal;
            _genericDalCategory = genericDalCategory;
        }


        public async Task<List<Announcement>> Details(string id)
        {

            var kategori = _announcementDal.GetAllString(id);

            Announcement announcement = new Announcement();



            foreach (var item in kategori)
            {
                announcement.CategoryId = item.CategoryId;
            }

            var duyurukategorisi = await _genericDalCategory.GetByIdAsync(announcement.CategoryId);

            var onerilenduyurular= _announcementDal.GetAllStringDetail(duyurukategorisi.Id, id);

            return onerilenduyurular;
        }



        public async Task<Announcement> Create(AnnouncementAddDtos announcementAddDtos, IFormFile Image, IFormFile DetailImage)
        {
            string ImageExtension = Path.GetExtension(Image.FileName);
            string ImageName = Guid.NewGuid() + ImageExtension;
            string Imagepath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot/img/" + ImageName);

            using (var ImageStream = new FileStream(Imagepath, FileMode.Create))
            {
                await Image.CopyToAsync(ImageStream);
            }

            string DetailImageExtension = Path.GetExtension(DetailImage.FileName);
            string DetailImageName = Guid.NewGuid() + DetailImageExtension;
            string DetailImagePath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot/img/" + DetailImageName);

            using (var DetailImageStream = new FileStream(DetailImagePath, FileMode.Create))
            {
                await DetailImage.CopyToAsync(DetailImageStream);
            }

            announcementAddDtos.ImagePath = ImageName;
            announcementAddDtos.BroadCastingStatus = "Bekliyor";
            announcementAddDtos.DetailImagePath = DetailImageName;
            announcementAddDtos.Date = DateTime.Now;


            await _announcementDal.AddAsync(_mapper.Map<Announcement>(announcementAddDtos));

            return null;

        }

        public async Task<Announcement> UpdateAnnouncement(AnnouncementUpdateDtos announcementUpdateDtos, IFormFile Imagefile, IFormFile DetailImageFile)
        {
                string ImageExtension = Path.GetExtension(Imagefile.FileName);
                string ImageName = Guid.NewGuid() + ImageExtension;
                string Imagepath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot/img/" + ImageName);

                using (var ImageStream = new FileStream(Imagepath, FileMode.Create))
                {
                    await Imagefile.CopyToAsync(ImageStream);
                }

                //DetailImage

                string DetailImageExtension = Path.GetExtension(DetailImageFile.FileName);
                string DetailImageName = Guid.NewGuid() + DetailImageExtension;
                string DetailImagePath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot/img/" + DetailImageName);

                using (var DetailImageStream = new FileStream(DetailImagePath, FileMode.Create))
                {
                    await DetailImageFile.CopyToAsync(DetailImageStream);
                }

                announcementUpdateDtos.BroadCastingStatus = "Aktif";
                announcementUpdateDtos.ImagePath = ImageName;
                announcementUpdateDtos.DetailImagePath = DetailImageName;
                announcementUpdateDtos.Date = DateTime.Now;


                await _announcementDal.UpdateAsync(_mapper.Map<Announcement>(announcementUpdateDtos));

                return null;
        }


        public async Task<Announcement> PassiveUpdateAnnouncement(int Id)
        {
            var update = await _announcementDal.GetByIdAsync(Id);

            update.BroadCastingStatus = "Pasif";

            await _announcementDal.UpdateAsync(update);

            return null;
        }

        public async Task<Announcement> DeleteAnnouncement(int Id)
        {
            var delete = await _announcementDal.GetByIdAsync(Id);


            await _announcementDal.RemoveAsync(delete);
            return null;
        }

        public async Task<Announcement> AktifDeleteAnnouncement(int Id)
        {
            var delete = await _announcementDal.GetByIdAsync(Id);


            await _announcementDal.RemoveAsync(delete);
            return null;
        }

        public async Task<Announcement> PendingUpdateAnnouncement(int Id)
        {
            var update = await _announcementDal.GetByIdAsync(Id);

            update.BroadCastingStatus = "Aktif";

            await _announcementDal.UpdateAsync(update);

            return null;
        }



        public async Task<Announcement> UpdateAnnouncementIndex(int Id)
        {
            return await _announcementDal.GetByIdAsync(Id);
        }






        public List<Announcement> GetAllString(string id)
        {
            return _announcementDal.GetAllString(id);
        }

        public List<Announcement> GetAnnouncement()
        {
            return _announcementDal.GetAnnouncement();
        }

        public List<Announcement> GetAnnouncement(out int toplamSayfa, int aktifSayfa = 1)
        {
            return _announcementDal.GetAnnouncement(out toplamSayfa, aktifSayfa);
        }

        public List<Announcement> GetOldAnnouncement()
        {
            return _announcementDal.GetOldAnnouncement();
        }

        public List<Announcement> GetOldAnnouncement(out int toplamSayfa, int aktifSayfa = 1)
        {
            return _announcementDal.GetOldAnnouncement(out toplamSayfa, aktifSayfa);
        }

        public List<Announcement> GetPendingAnnouncement()
        {
            return _announcementDal.GetPendingAnnouncement();
        }

        public List<Announcement> GetPendingAnnouncement(out int toplamSayfa, int aktifSayfa = 1)
        {
            return _announcementDal.GetPendingAnnouncement(out toplamSayfa, aktifSayfa);
        }

        public int GetPendingAnnouncementNumber()
        {
            return _announcementDal.GetPendingAnnouncementNumber();
        }

        public int GetTotalAnnouncementNumber()
        {
            return _announcementDal.GetTotalAnnouncementNumber();
        }

        public int GetActiveAnnouncementNumber()
        {
            return _announcementDal.GetActiveAnnouncementNumber();
        }

        public int GetSportTotalDuyuruNumber()
        {
            return _announcementDal.GetSportTotalDuyuruNumber();
        }

        public int GetPoliticsTotalDuyuruNumber()
        {
            return _announcementDal.GetPoliticsTotalDuyuruNumber();
        }

        public int GetEducationTotalDuyuruNumber()
        {
            return _announcementDal.GetEducationTotalDuyuruNumber();
        }

        public int GetEconomyTotalDuyuruNumber()
        {
            return _announcementDal.GetEconomyTotalDuyuruNumber();
        }

        public int GetHealthTotalDuyuruNumber()
        {
            return _announcementDal.GetHealthTotalDuyuruNumber();
        }

        public int GetMagazinTotalDuyuruNumber()
        {
            return _announcementDal.GetMagazinTotalDuyuruNumber();
        }

        public List<Announcement> GetHomeAnnouncement()
        {
            return _announcementDal.GetHomeAnnouncement();
        }

        public List<Announcement> GetAllStringDetail(int id, string name)
        {
            return _announcementDal.GetAllStringDetail(id, name);
        }

        public List<Announcement> GetCategoryeAnnouncement(string id)
        {
            return _announcementDal.GetCategoryeAnnouncement(id);
        }


    }
}
