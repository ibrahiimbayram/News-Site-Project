using Dto.DTOS.AppUserDtos;
using Entity.Concrete;
using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Business.Concrete
{
    public class AppUserManager
    {
        private readonly UserManager<AppUser> _userManager;

        public AppUserManager(UserManager<AppUser> userManager)
        {
            _userManager = userManager;
        }

        public async Task<AppUser> Create(AppUserAddDto appUserAddDto)
        {
            AppUser user = new AppUser
            {
                Email = appUserAddDto.Email,
                Name = appUserAddDto.Name,
                SurName = appUserAddDto.SurName,
                UserName = appUserAddDto.UserName,
                Password = appUserAddDto.Password,
                ConfirmPassword = appUserAddDto.ConfirmPassword

            };
            var result = await _userManager.CreateAsync(user, appUserAddDto.Password);

            var addRoleResult = await _userManager.AddToRoleAsync(user, "Admin");

            return null;
        }


        public async Task<List<AppUser>> Update(string Id)
        {
            var user = await _userManager.FindByIdAsync(Id);


            List<AppUser> appUserUpdateDtos = new List<AppUser>();

            AppUser model = new AppUser();
            model.Id = user.Id;
            model.Name = user.Name;
            model.UserName = user.UserName;
            model.SurName = user.SurName;
            model.Email = user.Email;
            model.Password = user.Password;
            model.ConfirmPassword = user.ConfirmPassword;

            appUserUpdateDtos.Add(model);



            return appUserUpdateDtos;
        }


        public async Task<AppUser> UpdatePost(string Idd, AppUserUpdateDto model)
        {

            var userId = Idd;
            string Id = userId.ToString();

            var user = await _userManager.FindByIdAsync(Id);

            user.Id = model.Id;
            user.Name = model.Name;
            user.UserName = model.UserName;
            user.SurName = model.SurName;
            user.Email = model.Email;
            user.Password = model.Password;
            user.ConfirmPassword = model.ConfirmPassword;



            await _userManager.UpdateAsync(user);
            return null;
        }


        public async Task<AppUser> Delete(string Id)
        {
            var user = await _userManager.FindByIdAsync(Id);

            await _userManager.DeleteAsync(user);


            return null;
        }
    }
}
