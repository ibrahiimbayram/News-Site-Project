using System.Collections.Generic;
using System.Threading.Tasks;
using AutoMapper;
using Business.Concrete;
using DataAcces.Interfaces;
using Dto.DTOS.NewsDtos;
using Entity.Concrete;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Web.StringInfo;

namespace Web.Areas.Admin.Controllers
{
    [Area(RuleInfo.Admin)]
    [Authorize]
    public class NewsController : Controller
    {
        private readonly IGenericDal<Category> _genericServiceCategory;
        private readonly IMapper _mapper;
        private readonly NewsManager  _newsManager;

        public NewsController(NewsManager newsManager, IMapper mapper, IGenericDal<Category> genericServiceCategory)
        {
            _genericServiceCategory = genericServiceCategory;
            _mapper = mapper;
            _newsManager = newsManager;
        }


        public IActionResult List(int page = 1)
        {
            ViewBag.aktifsayfa = page;
            var haberler = _mapper.Map<List<NewsListDto>>(_newsManager.GetNews(out int toplamSayfa, page));
            ViewBag.toplamsayfa = toplamSayfa;
            ViewBag.veriler = haberler;
            return View();
        }

        public IActionResult Details(string id)
        {
            ViewBag.detail = _newsManager.GetAllString(id);
            return View();
        }

        public IActionResult OldList(int page = 1)
        {
            ViewBag.aktifsayfa = page;
            var haberler = _mapper.Map<List<NewsListDto>>(_newsManager.GetOldNews(out int toplamSayfa, page));
            ViewBag.toplamsayfa = toplamSayfa;
            ViewBag.veriler = haberler;
            return View();
        }

        public async Task<IActionResult> Index()
        {
            ViewBag.category = await _genericServiceCategory.GetAllAsync();
            return View();
        }


        [HttpPost]
        public async Task<IActionResult> Index(NewsAddDto newsAddDto, IFormFile file, IFormFile resim)
        {
            if (ModelState.IsValid)
            {
                await _newsManager.Add(newsAddDto, file, resim);
                return RedirectToAction("PendingNews");
            }
            else
            {
                ViewBag.category = await _genericServiceCategory.GetAllAsync();
            }
            return View();
        }


        public IActionResult PendingNews(int page = 1)
        {
            ViewBag.aktifsayfa = page;
            var haberler = _mapper.Map<List<NewsListDto>>(_newsManager.GetPendingNews(out int toplamSayfa, page));
            ViewBag.toplamsayfa = toplamSayfa;
            ViewBag.veriler = haberler;
            return View();
        }

        public async Task<IActionResult> PendingUpdateNews(int Id)
        {
            await _newsManager.PendingUpdateNews(Id);
            return RedirectToAction("List");
        }

        public async Task<IActionResult> AktifDeleteNews(int Id)
        {
            await _newsManager.AktifDeleteNews(Id);
            return RedirectToAction("List");
        }

        public async Task<IActionResult> DeleteNews(int Id)
        {
            await _newsManager.DeleteNews(Id);
            return RedirectToAction("PendingNews");
        }

        public async Task<IActionResult> PassiveUpdateNews(int Id)
        {
            await _newsManager.PassiveUpdateNews(Id);
            return RedirectToAction("OldList");
        }


        public async Task<IActionResult> UpdateNews(int Id)
        {
            var update = await _newsManager.UpdateNewsIndex(Id);
            ViewBag.category = await _genericServiceCategory.GetAllAsync();
            return View();
        }



        [HttpPost]
        public async Task<IActionResult> UpdateNews(NewsUpdateDto newsUpdateDto, IFormFile Imagefile, IFormFile DetailImageFile)
        {
            if (ModelState.IsValid)
            {
                await _newsManager.UpdateNews(newsUpdateDto, Imagefile, DetailImageFile);
                return RedirectToAction("List");
            }
            else
            {
                ViewBag.category = await _genericServiceCategory.GetAllAsync();
            }
            return View();
        }



    }
}
