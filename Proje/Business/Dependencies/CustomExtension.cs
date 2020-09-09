using Business.Concrete;
using DataAcces.Concrete.Repositories;
using DataAcces.Interfaces;
using Microsoft.Extensions.DependencyInjection;

namespace Business.Dependencies
{
    public static class CustomExtension
    {
        public static void AddDependecies(this IServiceCollection services)
        {
            services.AddScoped(typeof(IGenericDal<>), typeof(EfGenericRepository<>));

            services.AddScoped<NewsManager>();
            services.AddScoped<INewsDal, EfNewsRepository>();

            services.AddScoped<AnnouncementManager>();
            services.AddScoped<IAnnouncementDal, EfAnnouncementRepository>();

            services.AddScoped<MessageManager>();
            services.AddScoped<IMessageDal, EfMessageRepository>();

            services.AddScoped<CategoryManager>();

            services.AddScoped<AppUserManager>();


        }

        //public static void AddValidator(this IServiceCollection services)
        //{
        //    services.AddTransient<IValidator<CategoryListDtos>, CategoryAddValidator>();
        //    services.AddTransient<IValidator<AppUserAddDto>, AppuserAddValidator>();
        //    services.AddTransient<IValidator<NewsAddDto>, NewsAddValidator>();
        //    services.AddTransient<IValidator<AnnouncementAddDtos>, AnnouncementAddValidator>();
        //}
    }
}
