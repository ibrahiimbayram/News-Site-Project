using AutoMapper;
using DataAcces.Interfaces;
using Dto.DTOS.NewsDtos;
using Entity.Concrete;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.IO;
using System.Threading.Tasks;

namespace Business.Concrete
{

    public class NewsManager
    {
        private readonly INewsDal _newsDal;
        private readonly IMapper _mapper;
        private readonly IGenericDal<Category> _genericDalCategory;
    public NewsManager(INewsDal newsDal, IMapper mapper, IGenericDal<Category> genericDalCategory)
        {
            _newsDal = newsDal;
            _mapper = mapper;
            _genericDalCategory = genericDalCategory;
        }

        public async Task<List<News>> Detail(string id)
        {


            var kategori = _newsDal.GetAllString(id);

            News newsListDto = new News();



            foreach (var item in kategori)
            {
                newsListDto.CategoryId = item.CategoryId;
            }

            var haberkategorisi = await _genericDalCategory.GetByIdAsync(newsListDto.CategoryId);

            var onerilenhaberler = _newsDal.GetAllStringDetail(haberkategorisi.Id, id);

            return onerilenhaberler;
        }


        public async Task<News> Add(NewsAddDto newsAddDto, IFormFile file, IFormFile resim)
        {
            string ImageExtension = Path.GetExtension(file.FileName);
            string ImageName = Guid.NewGuid() + ImageExtension;
            string Imagepath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot/img/" + ImageName);

            using (var ImageStream = new FileStream(Imagepath, FileMode.Create))
            {
                await file.CopyToAsync(ImageStream);
            }

            string DetailImageExtension = Path.GetExtension(resim.FileName);
            string DetailImageName = Guid.NewGuid() + DetailImageExtension;
            string DetailImagePath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot/img/" + DetailImageName);

            using (var DetailImageStream = new FileStream(DetailImagePath, FileMode.Create))
            {
                await resim.CopyToAsync(DetailImageStream);
            }
            newsAddDto.ImagePath = ImageName;
            newsAddDto.BroadCastingStatus = "Bekliyor";
            newsAddDto.DetailImagePath = DetailImageName;
            newsAddDto.Date = DateTime.Now;


            await _newsDal.AddAsync(_mapper.Map<News>(newsAddDto));
            return null;
        }

        public List<News> GetNews()
        {
            return _newsDal.GetNews();
        }

        public async Task<News> UpdateNews(NewsUpdateDto newsUpdateDto, IFormFile Imagefile, IFormFile DetailImageFile)
        {

            string ImageExtension = Path.GetExtension(Imagefile.FileName);
            string ImageName = Guid.NewGuid() + ImageExtension;
            string Imagepath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot/img/" + ImageName);

            using (var ImageStream = new FileStream(Imagepath, FileMode.Create))
            {
                await Imagefile.CopyToAsync(ImageStream);
            }

            string DetailImageExtension = Path.GetExtension(DetailImageFile.FileName);
            string DetailImageName = Guid.NewGuid() + DetailImageExtension;
            string DetailImagePath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot/img/" + DetailImageName);

            using (var DetailImageStream = new FileStream(DetailImagePath, FileMode.Create))
            {
                await DetailImageFile.CopyToAsync(DetailImageStream);
            }

            newsUpdateDto.BroadCastingStatus = "Aktif";
            newsUpdateDto.ImagePath = ImageName;
            newsUpdateDto.DetailImagePath = DetailImageName;
            newsUpdateDto.Date = DateTime.Now;


            await _newsDal.UpdateAsync(_mapper.Map<News>(newsUpdateDto));



            return null;

        }

        public async Task<News> UpdateNewsIndex(int Id)
        {
            return await _newsDal.GetByIdAsync(Id);
        }


        public async Task<News> PendingUpdateNews(int Id)
        {
            var update = await _newsDal.GetByIdAsync(Id);

            update.BroadCastingStatus = "Aktif";

            await _newsDal.UpdateAsync(update);

            return null;
        }


        public async Task<News> AktifDeleteNews(int Id)
        {
            var delete = await _newsDal.GetByIdAsync(Id);
            await _newsDal.RemoveAsync(delete);
            return null;
        }


        public async Task<News> DeleteNews(int Id)
        {
            var delete = await _newsDal.GetByIdAsync(Id);
            await _newsDal.RemoveAsync(delete);
            return null;
        }


        public async Task<News> PassiveUpdateNews(int Id)
        {
            var update = await _newsDal.GetByIdAsync(Id);

            update.BroadCastingStatus = "Pasif";

            await _newsDal.UpdateAsync(update);

            return null;
        }


        public List<News> GetOldNews()
        {
            return _newsDal.GetOldNews();
        }

        public List<News> GetOldNews(out int toplamSayfa, int aktifSayfa = 1)
        {

            return _newsDal.GetOldNews(out toplamSayfa, aktifSayfa);


        }

        public List<News> GetAllString(string id)
        {
            return _newsDal.GetAllString(id);
        }

        public List<News> GetNews(out int toplamSayfa, int aktifSayfa = 1)
        {
            return _newsDal.GetNews(out toplamSayfa, aktifSayfa);
        }

        public List<News> GetPendingNews()
        {
            return _newsDal.GetPendingNews();
        }

        public List<News> GetPendingNews(out int toplamSayfa, int aktifSayfa = 1)
        {
            return _newsDal.GetPendingNews(out toplamSayfa, aktifSayfa);
        }

        public int GetTotalNewsNumber()
        {
            return _newsDal.GetTotalNewsNumber();
        }

        public int GetActiveNewsNumber()
        {
            return _newsDal.GetActiveNewsNumber();
        }

        public int GetPendingNewsNumber()
        {
            return _newsDal.GetPendingNewsNumber();
        }

        public int GetSportTotalNewsNumber()
        {
            return _newsDal.GetSportTotalNewsNumber();
        }

        public int GetPoliticsTotalNewsNumber()
        {
            return _newsDal.GetPoliticsTotalNewsNumber();
        }

        public int GetEducationTotalNewsNumber()
        {
            return _newsDal.GetEducationTotalNewsNumber();
        }

        public int GetEconomyTotalNewsNumber()
        {
            return _newsDal.GetEconomyTotalNewsNumber();
        }

        public int GetHealthTotalNewsNumber()
        {
            return _newsDal.GetHealthTotalNewsNumber();
        }

        public int GetMagazinTotalNewsNumber()
        {
            return _newsDal.GetMagazinTotalNewsNumber();
        }

        public List<News> GetCategoryActiveNews(string id)
        {
            return _newsDal.GetCategoryActiveNews(id);
        }

        public List<News> GetCategoryeNews(string id)
        {
            return _newsDal.GetCategoryeNews(id);
        }

        public List<News> GetAllStringDetail(int id, string name)
        {
            return _newsDal.GetAllStringDetail(id, name);
        }
    }
}
