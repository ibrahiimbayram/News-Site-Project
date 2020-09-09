using System.Collections.Generic;
using System.Threading.Tasks;
using AutoMapper;
using Business.Concrete;
using DataAcces.Interfaces;
using Dto.DTOS.AnnouncementDto;
using Entity.Concrete;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Web.StringInfo;

namespace Web.Areas.Admin.Controllers
{
    [Area(RuleInfo.Admin)]
    [Authorize]
    public class AnnouncementController : Controller
    {
        private readonly IGenericDal<Category> _genericServiceCategory;
        private readonly IMapper _mapper;
        private readonly AnnouncementManager _announcementManager;

        public AnnouncementController(IMapper mapper, AnnouncementManager announcementManager, IGenericDal<Category> genericServiceCategory)
        {
            _mapper = mapper;
            _genericServiceCategory = genericServiceCategory;
            _announcementManager = announcementManager;
        }

        public IActionResult Index(int page = 1)
        {
            ViewBag.aktifsayfa = page;
            var duyurular =_mapper.Map<List<AnnouncementListDtos>>(_announcementManager.GetAnnouncement(out int toplamSayfa, page));
            ViewBag.toplamsayfa = toplamSayfa;
            ViewBag.veriler = duyurular;
            return View();
        }

        public IActionResult OldList(int page = 1)
        {
            ViewBag.aktifsayfa = page;
            var duyurular =_mapper.Map<List<AnnouncementListDtos>>(_announcementManager.GetOldAnnouncement(out int toplamSayfa, page));
            ViewBag.toplamsayfa = toplamSayfa;
            ViewBag.veriler = duyurular;
            return View();
        }


        public async Task<IActionResult> Create()
        {
            ViewBag.category = await _genericServiceCategory.GetAllAsync();
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Create(AnnouncementAddDtos announcementAddDtos, IFormFile Image, IFormFile DetailImage)
        {
            if (ModelState.IsValid)
            {
                await _announcementManager.Create(announcementAddDtos, Image, DetailImage);
                return RedirectToAction("PendingAnnouncement");
            }
            else
            {
                ViewBag.category = await _genericServiceCategory.GetAllAsync();
            }
            return View();
        }

        public IActionResult Details(string id)
        {
            ViewBag.details = _announcementManager.GetAllString(id);
            return View();
        }

        public IActionResult PendingAnnouncement(int page = 1)
        {
            ViewBag.aktifsayfa = page;
            var duyurular =_mapper.Map<List<AnnouncementListDtos>>(_announcementManager.GetPendingAnnouncement(out int toplamSayfa, page));
            ViewBag.toplamsayfa = toplamSayfa;
            ViewBag.veriler = duyurular;
            return View();
        }

        public async Task<IActionResult> PendingUpdateAnnouncement(int Id)
        {
            await _announcementManager.PendingUpdateAnnouncement(Id);
            return RedirectToAction("Index");
        }

        public async Task<IActionResult> AktifDeleteAnnouncement(int Id)
        {
            await _announcementManager.AktifDeleteAnnouncement(Id);
            return RedirectToAction("Index");
        }

        public async Task<IActionResult> DeleteAnnouncement(int Id)
        {
            await _announcementManager.DeleteAnnouncement(Id);
            return RedirectToAction("PendingAnnouncement");
        }


        public async Task<IActionResult> PassiveUpdateAnnouncement(int Id)
        {
            await _announcementManager.PassiveUpdateAnnouncement(Id);
            return RedirectToAction("OldList");
        }


        public async Task<IActionResult> UpdateAnnouncement(int Id)
        {
            var update = await _announcementManager.UpdateAnnouncementIndex(Id);
            ViewBag.category = await _genericServiceCategory.GetAllAsync();
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> UpdateAnnouncement(AnnouncementUpdateDtos announcementUpdateDtos, IFormFile Imagefile, IFormFile DetailImageFile)
        {
            if (ModelState.IsValid)
            {
                await _announcementManager.UpdateAnnouncement(announcementUpdateDtos, Imagefile, DetailImageFile);
                return RedirectToAction("Index");
            }
            else
            {
                ViewBag.category = await _genericServiceCategory.GetAllAsync();

            }

            return View();
        }

    }
}
