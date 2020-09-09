using AutoMapper;
using Dto.DTOS.AnnouncementDto;
using Dto.DTOS.AppUserDtos;
using Dto.DTOS.ContactDtos;
using Dto.DTOS.KategoriDtos;
using Dto.DTOS.MessageDtos;
using Dto.DTOS.NewsDtos;
using Entity.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.Mapping.AutoMapperProfile
{
    public class MapProfile : Profile
    {
        public MapProfile()
        {
            //NewsMap

            CreateMap<NewsAddDto, News>();
            CreateMap<News, NewsAddDto>();

            CreateMap<News, NewsListDto>();
            CreateMap<NewsListDto, News>();

            CreateMap<NewsUpdateDto, News>();
            CreateMap<News, NewsUpdateDto>();

            //CategoryMap
            CreateMap<Category, CategoryAddDto>();
            CreateMap<CategoryAddDto, Category>();

            CreateMap<Category, CategoryUpdateDto>();
            CreateMap<CategoryUpdateDto, Category>();

            CreateMap<Category, CategoryListDto>();
            CreateMap<CategoryListDto, Category>();

            //AnnouncementMap

            CreateMap<Announcement, AnnouncementListDtos>();
            CreateMap<AnnouncementListDtos, Announcement>();

            CreateMap<AnnouncementAddDtos, Announcement>();
            CreateMap<Announcement, AnnouncementAddDtos>();

            CreateMap<Announcement, AnnouncementUpdateDtos>();
            CreateMap<AnnouncementUpdateDtos, Announcement>();

            //AppUser

            CreateMap<AppUser, AppUserLoginDto>();
            CreateMap<AppUserLoginDto, AppUser>();


            CreateMap<AppUser, AppUserAddDto>();
            CreateMap<AppUserAddDto, AppUser>();

            CreateMap<AppUser, AppUserUpdateDto>();
            CreateMap<AppUserUpdateDto, AppUser>();

            CreateMap<AppUser, AppUserListDto>();
            CreateMap<AppUserListDto, AppUser>();

            CreateMap<AppUser, AppUserDeleteDto>();
            CreateMap<AppUserDeleteDto, AppUser>();

            //Message
            CreateMap<Contact, MessageListDto>();
            CreateMap<MessageListDto, Contact>();

            CreateMap<Contact, ContactUpdateDto>();
            CreateMap<ContactUpdateDto, Contact>();

            CreateMap<Contact, ContactAddDto>();
            CreateMap<ContactAddDto, Contact>();
        }
    }
}
