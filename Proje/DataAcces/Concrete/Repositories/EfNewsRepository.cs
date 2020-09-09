using DataAcces.Concrete.Context;
using DataAcces.Interfaces;
using Entity.Concrete;
using Entity.Interfaces;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Internal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace DataAcces.Concrete.Repositories
{
    public class EfNewsRepository : EfGenericRepository<News>, INewsDal
    {
        private readonly DataContext _context;

        public EfNewsRepository(DataContext context) : base(context)
        {
            _context = context;
        }


        public List<News> GetAllString(string id)
        {
            var result = _context.News.Where(I => I.Title == id).Select(I => new News()
            {
                Id = I.Id,
                Title = I.Title,
                ShortDescription = I.ShortDescription,
                Description = I.Description,
                Date = I.Date,
                ImagePath = I.ImagePath,
                DetailImagePath = I.DetailImagePath,
                CategoryId = I.CategoryId



            });

            return result.ToList();
        }


        public List<News> GetNews(out int toplamSayfa, int aktifSayfa = 1)
        {
         
            var result = _context.News.Where(I => I.BroadCastingStatus == "Aktif").Select(I => new News()
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

        public List<News> GetNews()
        {

            var result = _context.News.Where(I => I.BroadCastingStatus == "Aktif").Select(I => new News()
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

        public List<News> GetOldNews()
        {
            var result = _context.News.Where(I => I.BroadCastingStatus == "Pasif").Select(I => new News()
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

        public List<News> GetOldNews(out int toplamSayfa, int aktifSayfa = 1)
        {

            var result = _context.News.Where(I => I.BroadCastingStatus == "Pasif").Select(I => new News()
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

        public List<News> GetPendingNews()
        {
            var result = _context.News.Where(I => I.BroadCastingStatus == "Bekliyor").Select(I => new News()
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

        public List<News> GetPendingNews(out int toplamSayfa, int aktifSayfa = 1)
        {
            var result = _context.News.Where(I => I.BroadCastingStatus == "Bekliyor").Select(I => new News()
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

        public int GetPendingNewsNumber()
        {
            return _context.News.Count(I => I.BroadCastingStatus == "Bekliyor");
        }

        public int GetTotalNewsNumber()
        {
            return _context.News.Count();
        }

        public int GetActiveNewsNumber()
        {
            return _context.News.Count(I => I.BroadCastingStatus == "Aktif");
        }

        public int GetSportTotalNewsNumber()
        {
            var spor = _context.Categories.Where(I => I.Name == "Spor").Select(I => I.Id).FirstOrDefault();

            return _context.News.Where(I => I.CategoryId == spor).Count();
        }

        public int GetPoliticsTotalNewsNumber()
        {
            var spor = _context.Categories.Where(I => I.Name == "Siyaset").Select(I => I.Id).FirstOrDefault();

            return _context.News.Where(I => I.CategoryId == spor).Count();
        }

        public int GetEducationTotalNewsNumber()
        {

            var spor = _context.Categories.Where(I => I.Name == "Eğitim").Select(I => I.Id).FirstOrDefault();

            return _context.News.Where(I => I.CategoryId == spor).Count();
        }

        public int GetEconomyTotalNewsNumber()
        {

            var spor = _context.Categories.Where(I => I.Name == "Ekonomi").Select(I => I.Id).FirstOrDefault();

            return _context.News.Where(I => I.CategoryId == spor).Count();
        }

        public int GetHealthTotalNewsNumber()
        {

            var spor = _context.Categories.Where(I => I.Name == "Sağlık").Select(I => I.Id).FirstOrDefault();

            return _context.News.Where(I => I.CategoryId == spor).Count();
        }

        public int GetMagazinTotalNewsNumber()
        {
            var spor = _context.Categories.Where(I => I.Name == "Magazin").Select(I => I.Id).FirstOrDefault();

            return _context.News.Where(I => I.CategoryId == spor).Count();
        }

        public List<News> GetCategoryActiveNews(string id)
        {

            var Id = _context.Categories.Where(I => I.Name == id).Select(I => I.Id).FirstOrDefault();
            var result = _context.News.Where(I => I.BroadCastingStatus == "Pasif" && I.CategoryId == Id).Select(I => new News()
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
            return result.OrderByDescending(I => I.Id).Take(3).ToList();
        }

        public List<News> GetCategoryeNews(string id)
        {
            var Id = _context.Categories.Where(I => I.Name == id).Select(I => I.Id).FirstOrDefault();
            var result = _context.News.Where(I => I.BroadCastingStatus != "Bekliyor" && I.CategoryId == Id).Select(I => new News()
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

        public List<News> GetAllStringDetail(int id, string name)
        {
            var Id = _context.Categories.Where(I => I.Id == id).Select(I => I.Id).FirstOrDefault();
            var result = _context.News.Where(I => I.Title != name && I.CategoryId == Id).Select(I => new News()
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
            return result.OrderByDescending(I => I.Id).Take(3).ToList();
        }
    }
}
