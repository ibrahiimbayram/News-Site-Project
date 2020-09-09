using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Business.Concrete;
using Dto.DTOS.AppUserDtos;
using Entity.Concrete;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Web.StringInfo;

namespace Web.Areas.Admin.Controllers
{
    [Area(RuleInfo.Admin)]
    [Authorize]
    public class UserController : Controller
    {
        private readonly UserManager<AppUser> _userManager;
        private readonly AppUserManager _appUserManager;

        public UserController(UserManager<AppUser> userManager, AppUserManager appUserManager)
        {
            _userManager = userManager;
            _appUserManager = appUserManager;
        }
        public async Task<IActionResult> Index()
        {
            ViewBag.users = await _userManager.Users.ToListAsync();

            return View();
        }


        public async Task<IActionResult> Create()
        {

            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Create(AppUserAddDto appUserAddDto)
        {
            if (ModelState.IsValid)
            {
                var result = await _appUserManager.Create(appUserAddDto);
                if (result == null)
                {
                    return RedirectToAction("Index");
                }
            }

            return View();
        }

        public async Task<IActionResult> Update(string Id)
        {
            var user = await _userManager.FindByIdAsync(Id);
            TempData["user"] = user.Id;     
            ViewBag.users = await _appUserManager.Update(Id);
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Update(AppUserUpdateDto model)
        {
            if (ModelState.IsValid)
            {
                var userId = TempData["user"];
                string Id = userId.ToString();

                await _appUserManager.UpdatePost(Id, model);
                return RedirectToAction("Index");
            }
            return View();
        }

        public async Task<IActionResult> Delete(string Id)
        {
            await _appUserManager.Delete(Id);
            return RedirectToAction("Index");
        }
    }
}
