using AutoMapper;
using DataAcces.Interfaces;
using Dto.DTOS.ContactDtos;
using Dto.DTOS.MessageDtos;
using Entity.Concrete;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Business.Concrete
{
    public class MessageManager
    {
        IMessageDal _MessageDal;
        private readonly IMapper _mapper;
        public MessageManager(IMapper mapper, IMessageDal MessageDal)
        {

            _MessageDal = MessageDal;
            _mapper = mapper;
        }



        public async Task<Contact> Index(ContactAddDto contactAddDto)
        {

            contactAddDto.Date = DateTime.Now;
            contactAddDto.ReadInfo = "Yeni";
            await _MessageDal.AddAsync(_mapper.Map<Contact>(contactAddDto));



            return null;
        }













        public async Task<Contact> GetNewMessageUpdate(string id)
        {
            var mesaj = _MessageDal.GetAllString(id);




                ContactUpdateDto contactt = new ContactUpdateDto();
                foreach (var item in mesaj)
                {

                    contactt.Id = item.Id;
                    contactt.Name = item.Name;
                    contactt.Message = item.Message;
                    contactt.Email = item.Email;
                    contactt.Date = item.Date;
                    contactt.ReadInfo = "Okundu";
                }

                await _MessageDal.UpdateAsync(_mapper.Map<Contact>(contactt));




            return null;
        }


        public async Task<Contact> Delete(string id)
        {
            var mesaj = _MessageDal.GetAllString(id);

            ContactUpdateDto contactt = new ContactUpdateDto();
            foreach (var item in mesaj)
            {

                contactt.Id = item.Id;
                contactt.Name = item.Name;
                contactt.Message = item.Message;
                contactt.Email = item.Email;
                contactt.Date = item.Date;
                contactt.ReadInfo = "Okundu";
            }


            await _MessageDal.RemoveAsync(_mapper.Map<Contact>(contactt));

            return null;

        }

        public async Task<Contact> DeleteOldMessage(string id)
        {
            var mesaj = _MessageDal.GetAllString(id);

            ContactUpdateDto contactt = new ContactUpdateDto();
            foreach (var item in mesaj)
            {

                contactt.Id = item.Id;
                contactt.Name = item.Name;
                contactt.Message = item.Message;
                contactt.Email = item.Email;
                contactt.Date = item.Date;
                contactt.ReadInfo = item.ReadInfo;
            }

            await _MessageDal.RemoveAsync(_mapper.Map<Contact>(contactt));

            return null;

        }











        public List<Contact> GetAllString(string id)
        {
            return _MessageDal.GetAllString(id);
        }

        public List<Contact> GetMessage()
        {
            return _MessageDal.GetMessage();
        }

        public List<Contact> GetNewMessage()
        {
            return _MessageDal.GetNewMessage();
        }

        public List<Contact> GetNewMessage(out int toplamSayfa, int aktifSayfa = 1)
        {
            return _MessageDal.GetNewMessage(out toplamSayfa, aktifSayfa);
        }

        public List<Contact> GetOldMessage()
        {
            return _MessageDal.GetOldMessage();
        }

        public List<Contact> GetOldMessage(out int toplamSayfa, int aktifSayfa = 1)
        {
            return _MessageDal.GetOldMessage(out toplamSayfa, aktifSayfa);
        }
    }
}
