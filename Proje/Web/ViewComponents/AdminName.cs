using Entity.Concrete;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.ViewComponents
{
    public class AdminName : ViewComponent
    {
        private readonly UserManager<AppUser> _userManager;
        public AdminName(UserManager<AppUser> userManager)
        {
            _userManager = userManager;

        }
        public IViewComponentResult Invoke()
        {

            var UserName = _userManager.FindByNameAsync(User.Identity.Name).Result;

            ViewBag.name = UserName;

            return View();
        }



    }
}
