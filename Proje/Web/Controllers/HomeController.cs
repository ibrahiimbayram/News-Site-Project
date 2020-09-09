using System;
using System.Threading.Tasks;
using AutoMapper;
using Business.Concrete;
using DataAcces.Interfaces;
using Dto.DTOS.ContactDtos;
using Dto.DTOS.NewsDtos;
using Entity.Concrete;
using Microsoft.AspNetCore.Mvc;

namespace Web.Controllers
{
    public class HomeController : Controller
    {
        private readonly NewsManager _newsManager;
        private readonly MessageManager _messageManager;
        private readonly IGenericDal<Category> _CategoryGenericService;
        private readonly IGenericDal<Contact> _ContactGenericService;
        private readonly AnnouncementManager _announcementManager;
        private readonly IMapper _mapper;

        public HomeController(MessageManager messageManager, AnnouncementManager announcementManager, NewsManager newsManager, IGenericDal<Contact> ContactGenericService, IMapper mapper, IGenericDal<Category> CategoryGenericService)
        {
            _announcementManager = announcementManager;
            _newsManager = newsManager;
            _ContactGenericService = ContactGenericService;
            _mapper = mapper;
            _CategoryGenericService = CategoryGenericService;
            _messageManager = messageManager;
        }

        public async Task<IActionResult> Index()
        {

            ViewBag.gundem = _newsManager.GetNews();


            ViewBag.spor = _newsManager.GetCategoryActiveNews("Spor");

            ViewBag.ekonomi = _newsManager.GetCategoryActiveNews("Ekonomi");

            ViewBag.saglik = _newsManager.GetCategoryActiveNews("Sağlık");

            ViewBag.magazin = _newsManager.GetCategoryActiveNews("Magazin");

            ViewBag.siyaset = _newsManager.GetCategoryActiveNews("Siyaset");

            ViewBag.egitim = _newsManager.GetCategoryActiveNews("Eğitim");

            ViewBag.duyuru = _announcementManager.GetHomeAnnouncement();
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Index(ContactAddDto contactAddDto)
        {
            await _messageManager.Index(contactAddDto);
            ViewBag.basarili = "Mesajınız İletilmiştir";

            ViewBag.gundem = _newsManager.GetNews();

            ViewBag.spor = _newsManager.GetCategoryActiveNews("Spor");

            ViewBag.ekonomi = _newsManager.GetCategoryActiveNews("Ekonomi");

            ViewBag.saglik = _newsManager.GetCategoryActiveNews("Sağlık");

            ViewBag.magazin = _newsManager.GetCategoryActiveNews("Magazin");

            ViewBag.siyaset = _newsManager.GetCategoryActiveNews("Siyaset");

            ViewBag.egitim = _newsManager.GetCategoryActiveNews("Eğitim");

            ViewBag.duyuru = _announcementManager.GetHomeAnnouncement();

            return View();
        }
        public IActionResult CategoryNewsList(string id)
        {
            ViewBag.kategoriAd = id;
            ViewBag.kategori = _newsManager.GetCategoryeNews(id);
            return View();
        }

        public async Task<IActionResult> Detail(string id)
        {
            ViewBag.detail = _newsManager.GetAllString(id);
            ViewBag.onerilenhaberler = await _newsManager.Detail(id);
            return View();
        }



        public async Task<IActionResult> Details(string id)
        {
            ViewBag.detail = _announcementManager.GetAllString(id);
            ViewBag.onerilenhaberler =await  _announcementManager.Details(id);

            return View();
        }

        public IActionResult CategoryAnnouncementList(string id)
        {

            ViewBag.kategoriAd = id;

            ViewBag.kategori = _announcementManager.GetCategoryeAnnouncement(id);

            return View();
        }
    }
}
