using Entity.Concrete;
using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web
{
    public static class IdentityInitializerUser
    {
        public static async Task SeedData(UserManager<AppUser> userManager, RoleManager<AppRole> roleManager)
        {
            var adminRole = await roleManager.FindByNameAsync("Admin");
            if (adminRole == null)
            {
                AppRole role = new AppRole
                {
                    Name = "Admin"
                };


                await roleManager.CreateAsync(role);
            }

            var adminUser = await userManager.FindByNameAsync("yavuz");
            if (adminUser == null)
            {
                AppUser user = new AppUser
                {
                    Name = "admin",
                    SurName = "admin",
                    UserName = "admin",
                    Email = "admin@gmail.com"
                };

                await userManager.CreateAsync(user, "1");
                await userManager.AddToRoleAsync(user, "Admin");
            }
        }
    }
}
