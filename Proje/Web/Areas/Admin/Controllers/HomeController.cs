using System.Collections.Generic;
using System.Threading.Tasks;
using AutoMapper;
using Business.Concrete;
using DataAcces.Interfaces;
using Dto.DTOS.ContactDtos;
using Dto.DTOS.MessageDtos;
using Entity.Concrete;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Web.StringInfo;

namespace Web.Areas.Admin.Controllers
{
    [Area(RuleInfo.Admin)]
    [Authorize]
    public class HomeController : Controller
    {
        private readonly MessageManager _messageManager;

        private readonly IGenericDal<Category> _genericService;
        private readonly NewsManager _newsManager;
        private readonly AnnouncementManager _announcementManager;
        private readonly IMapper _mapper;
        public HomeController(MessageManager messageManager, IGenericDal<Category> genericService, IMapper mapper, NewsManager newsManager, AnnouncementManager announcementManager)
        {
            _announcementManager = announcementManager;
            _newsManager = newsManager;
            _genericService = genericService;
            _mapper = mapper;
            _genericService = genericService;
            _messageManager = messageManager;

        }
        public async Task<IActionResult> Index()
        {
            //Haber

            ViewBag.GetTotalNewsNumber = _newsManager.GetTotalNewsNumber();

            ViewBag.GetActiveNewsNumber = _newsManager.GetActiveNewsNumber();

            ViewBag.GetPendingNewsNumber = _newsManager.GetPendingNewsNumber();


            //Kategorilere göre Haber Sayısı

            ViewBag.GetSportTotalNewsNumber = _newsManager.GetSportTotalNewsNumber();

            ViewBag.GetPoliticsTotalNewsNumber = _newsManager.GetPoliticsTotalNewsNumber();

            ViewBag.GetEducationTotalNewsNumber = _newsManager.GetEducationTotalNewsNumber();

            ViewBag.GetEconomyTotalNewsNumber = _newsManager.GetEconomyTotalNewsNumber();

            ViewBag.GetHealthTotalNewsNumber = _newsManager.GetHealthTotalNewsNumber();

            ViewBag.GetMagazinTotalNewsNumber = _newsManager.GetMagazinTotalNewsNumber();

            //Duyuru

            ViewBag.GetTotalAnnouncementNumber = _announcementManager.GetTotalAnnouncementNumber();

            ViewBag.GetActiveAnnouncementNumber = _announcementManager.GetActiveAnnouncementNumber();

            ViewBag.GetPendingAnnouncementNumber = _announcementManager.GetPendingAnnouncementNumber();


            //Kategorilere göre Duyuru Sayısı

            ViewBag.GetSportTotalDuyuruNumber = _announcementManager.GetSportTotalDuyuruNumber();

            ViewBag.GetPoliticsTotalDuyuruNumber = _announcementManager.GetPoliticsTotalDuyuruNumber();

            ViewBag.GetEducationTotalDuyuruNumber = _announcementManager.GetEducationTotalDuyuruNumber();

            ViewBag.GetEconomyTotalDuyuruNumber = _announcementManager.GetEconomyTotalDuyuruNumber();

            ViewBag.GetHealthTotalDuyuruNumber = _announcementManager.GetHealthTotalDuyuruNumber();

            ViewBag.GetMagazinTotalDuyuruNumber = _announcementManager.GetMagazinTotalDuyuruNumber();


            return View();
        }

        public async Task<IActionResult> GetNewMessage(int page = 1)
        {
            ViewBag.aktifsayfa = page;
            var yenimesajlar = _mapper.Map<List<MessageListDto>>(_messageManager.GetNewMessage(out int toplamSayfa, page));
            ViewBag.toplamsayfa = toplamSayfa;
            ViewBag.li = yenimesajlar;

            if (yenimesajlar.Count <= 0)
            {
                ViewBag.bos = "Mesaj Bulunamadı";
            }


            var idd = TempData["MessageName"];
            string id;
            if (idd == null)
            {
                id = "";
            }
            else
            {
                id = idd.ToString();
            }



            var mesaj = _messageManager.GetAllString(id);
            ViewBag.liste = mesaj;


            if (mesaj.Count > 0)
            {
                await _messageManager.GetNewMessageUpdate(id);
                return View();
            }
            return View();
        }

        public async Task<IActionResult> Message(string id)
        {
            TempData["MessageName"] = id;
            return RedirectToAction("GetNewMessage");
        }

        public async Task<IActionResult> Delete(string id)
        {
            await _messageManager.Delete(id);
            return RedirectToAction("Message");
        }

        public async Task<IActionResult> DeleteOldMessage(string id)
        {
            await _messageManager.DeleteOldMessage(id);
            return RedirectToAction("GetOldMessage");
        }


        public IActionResult GetOldMessage(int page = 1)
        {
            ViewBag.aktifsayfa = page;
            var eskimesajlar = _mapper.Map<List<MessageListDto>>(_messageManager.GetOldMessage(out int toplamSayfa, page));
            ViewBag.toplamsayfa = toplamSayfa;
            ViewBag.li = eskimesajlar;
            return View();
        }

    }
}
