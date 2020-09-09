using DataAcces.Concrete.Context;
using DataAcces.Interfaces;
using Entity.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;

namespace DataAcces.Concrete.Repositories
{
    public class EfAnnouncementRepository : EfGenericRepository<Announcement>, IAnnouncementDal
    {
        private readonly DataContext _context;

        public EfAnnouncementRepository(DataContext context) : base(context)
        {
            _context = context;
        }

        public List<Announcement> GetAllString(string id)
        {

            var result = _context.Announcements.Where(I => I.Title == id).Select(I => new Announcement()
            {
                Id = I.Id,
                Title = I.Title,
                ShortDescription = I.ShortDescription,
                Description = I.Description,
                Date = I.Date,
                ImagePath = I.ImagePath,
                DetailImagePath = I.DetailImagePath,
                CategoryId=I.CategoryId



            });

            return result.ToList();
        }

        public List<Announcement> GetAnnouncement()
        {
            var result = _context.Announcements.Where(I => I.BroadCastingStatus == "Aktif").Select(I => new Announcement()
            {
                Id = I.Id,
                Title = I.Title,
                ShortDescription = I.ShortDescription,
                Description = I.Description,
                Date = I.Date,
                DetailImagePath = I.DetailImagePath,
                BroadCastingStatus = I.BroadCastingStatus,
                ImagePath = I.ImagePath,


            }).ToList();
            return result.OrderByDescending(I => I.Id).ToList();
        }

        public List<Announcement> GetAnnouncement(out int toplamSayfa, int aktifSayfa = 1)
        {
            var result = _context.Announcements.Where(I => I.BroadCastingStatus == "Aktif").Select(I => new Announcement()
            {
                Id = I.Id,
                Title = I.Title,
                ShortDescription = I.ShortDescription,
                Description = I.Description,
                Date = I.Date,
                DetailImagePath = I.DetailImagePath,
                BroadCastingStatus = I.BroadCastingStatus,
                ImagePath = I.ImagePath,


            });

            toplamSayfa = (int)Math.Ceiling((double)result.Count() / 6);
            result = result.OrderByDescending(I => I.Id).Skip((aktifSayfa - 1) * 6).Take(6);
            return result.ToList();
        }

        public List<Announcement> GetOldAnnouncement()
        {
            var result = _context.Announcements.Where(I => I.BroadCastingStatus == "Pasif").Select(I => new Announcement()
            {
                Id = I.Id,
                Title = I.Title,
                ShortDescription = I.ShortDescription,
                Description = I.Description,
                Date = I.Date,
                DetailImagePath = I.DetailImagePath,
                ImagePath = I.ImagePath,


            }).ToList();
            return result.OrderByDescending(I => I.Id).ToList();
        }

        public List<Announcement> GetOldAnnouncement(out int toplamSayfa, int aktifSayfa = 1)
        {
            var result = _context.Announcements.Where(I => I.BroadCastingStatus == "Pasif").Select(I => new Announcement()
            {
                Id = I.Id,
                Title = I.Title,
                ShortDescription = I.ShortDescription,
                Description = I.Description,
                Date = I.Date,
                DetailImagePath = I.DetailImagePath,
                ImagePath = I.ImagePath,


            });

            toplamSayfa = (int)Math.Ceiling((double)result.Count() / 6);
            result = result.OrderByDescending(I => I.Id).Skip((aktifSayfa - 1) * 6).Take(6);
            return result.ToList();
        }

        public List<Announcement> GetPendingAnnouncement()
        {
            var result = _context.Announcements.Where(I => I.BroadCastingStatus == "Bekliyor").Select(I => new Announcement()
            {
                Id = I.Id,
                Title = I.Title,
                ShortDescription = I.ShortDescription,
                Description = I.Description,
                Date = I.Date,
                DetailImagePath = I.DetailImagePath,
                BroadCastingStatus = I.BroadCastingStatus,
                ImagePath = I.ImagePath,


            }).ToList();
            return result.OrderByDescending(I => I.Id).ToList();
        }

        public List<Announcement> GetPendingAnnouncement(out int toplamSayfa, int aktifSayfa = 1)
        {
            var result = _context.Announcements.Where(I => I.BroadCastingStatus == "Bekliyor").Select(I => new Announcement()
            {
                Id = I.Id,
                Title = I.Title,
                ShortDescription = I.ShortDescription,
                Description = I.Description,
                Date = I.Date,
                DetailImagePath = I.DetailImagePath,
                BroadCastingStatus = I.BroadCastingStatus,
                ImagePath = I.ImagePath,


            });

            toplamSayfa = (int)Math.Ceiling((double)result.Count() / 6);
            result = result.OrderByDescending(I => I.Id).Skip((aktifSayfa - 1) * 6).Take(6);
            return result.ToList();
        }

        public int GetPendingAnnouncementNumber()
        {
            return _context.Announcements.Count(I => I.BroadCastingStatus == "Bekliyor");

        }

        public int GetTotalAnnouncementNumber()
        {
            return _context.Announcements.Count();
        }

        public int GetActiveAnnouncementNumber()
        {

            return _context.Announcements.Count(I => I.BroadCastingStatus == "Aktif");
        }

        public int GetSportTotalDuyuruNumber()
        {
            var spor = _context.Categories.Where(I => I.Name == "Spor").Select(I => I.Id).FirstOrDefault();

            return _context.Announcements.Where(I => I.CategoryId == spor).Count();
        }

        public int GetPoliticsTotalDuyuruNumber()
        {
            var spor = _context.Categories.Where(I => I.Name == "Siyaset").Select(I => I.Id).FirstOrDefault();

            return _context.Announcements.Where(I => I.CategoryId == spor).Count();
        }

        public int GetEducationTotalDuyuruNumber()
        {

            var spor = _context.Categories.Where(I => I.Name == "Eğitim").Select(I => I.Id).FirstOrDefault();

            return _context.Announcements.Where(I => I.CategoryId == spor).Count();
        }

        public int GetEconomyTotalDuyuruNumber()
        {
   
            var spor = _context.Categories.Where(I => I.Name == "Ekonomi").Select(I => I.Id).FirstOrDefault();

            return _context.Announcements.Where(I => I.CategoryId == spor).Count();
        }

        public int GetHealthTotalDuyuruNumber()
        {
   
            var spor = _context.Categories.Where(I => I.Name == "Sağlık").Select(I => I.Id).FirstOrDefault();

            return _context.Announcements.Where(I => I.CategoryId == spor).Count();
        }

        public int GetMagazinTotalDuyuruNumber()
        {

            var spor = _context.Categories.Where(I => I.Name == "Magazin").Select(I => I.Id).FirstOrDefault();

            return _context.Announcements.Where(I => I.CategoryId == spor).Count();
        }

        public List<Announcement> GetHomeAnnouncement()
        {
            var result = _context.Announcements.Where(I => I.BroadCastingStatus != "Bekliyor").Select(I => new Announcement()
            {
                Id = I.Id,
                Title = I.Title,
                ShortDescription = I.ShortDescription,
                Description = I.Description,
                Date = I.Date,
                DetailImagePath = I.DetailImagePath,
                BroadCastingStatus = I.BroadCastingStatus,
                ImagePath = I.ImagePath,


            }).ToList();
            return result.OrderByDescending(I => I.Id).Take(16).ToList();
        }

        public List<Announcement> GetAllStringDetail(int id, string name)
        {
        
            var Id = _context.Categories.Where(I => I.Id == id).Select(I => I.Id).FirstOrDefault();
            var result = _context.Announcements.Where(I => I.Title != name && I.CategoryId == Id).Select(I => new Announcement()
            {
                Id = I.Id,
                Title = I.Title,
                ShortDescription = I.ShortDescription,
                Description = I.Description,
                Date = I.Date,
                DetailImagePath = I.DetailImagePath,
                BroadCastingStatus = I.BroadCastingStatus,
                ImagePath = I.ImagePath,


            }).ToList();
            return result.OrderByDescending(I => I.Id).Take(4).ToList();
        }

        public List<Announcement> GetCategoryeAnnouncement(string id)
        {
            var Id = _context.Categories.Where(I => I.Name == id).Select(I => I.Id).FirstOrDefault();
            var result = _context.Announcements.Where(I => I.BroadCastingStatus != "Bekliyor" && I.CategoryId == Id).Select(I => new Announcement()
            {
                Id = I.Id,
                Title = I.Title,
                ShortDescription = I.ShortDescription,
                Description = I.Description,
                Date = I.Date,
                DetailImagePath = I.DetailImagePath,
                BroadCastingStatus = I.BroadCastingStatus,
                ImagePath = I.ImagePath,


            }).ToList();
            return result.OrderByDescending(I => I.Id).Take(18).ToList();
        }
    }
}
