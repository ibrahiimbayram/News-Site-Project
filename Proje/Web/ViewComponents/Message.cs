using Business.Concrete;
using Dto.DTOS.MessageDtos;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace Web.ViewComponents
{
    public class Message : ViewComponent
    {
        private readonly MessageManager _messageService;

        public Message(MessageManager messageService)
        {
            _messageService = messageService;
        }
        public IViewComponentResult Invoke()
        {

            var list = _messageService.GetMessage();

            List<MessageListDto> model = new List<MessageListDto>();
            foreach (var item in list)
            {
                MessageListDto contact = new MessageListDto();
                contact.Id = item.Id;
                contact.Name = item.Name;
                contact.Message = item.Message;
                contact.Email = item.Email;
                contact.Date = item.Date;
                contact.ReadInfo = item.ReadInfo;

                model.Add(contact);
            }

            

            ViewBag.li = model;
            if (model.Count <= 0)
            {
                ViewBag.bos = "Mesaj Bulunamadı";
            }

            return View();
        }
    }
}
