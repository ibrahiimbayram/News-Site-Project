using DataAcces.Concrete.Context;
using DataAcces.Interfaces;
using Entity.Concrete;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAcces.Concrete.Repositories
{
    public class EfMessageRepository : EfGenericRepository<Contact>, IMessageDal
    {
        private readonly DataContext _context;

        public EfMessageRepository(DataContext context):base(context)
        {
            _context = context;
        }

        public List<Contact> GetAllString(string id)
        {
            var result = _context.Contacts.Where(I => I.Name == id).Select(I => new Contact()
            {
                Id = I.Id,
                Email = I.Email,
                Date = I.Date,
                Message = I.Message,
                Name = I.Name,
                ReadInfo = I.ReadInfo



            });

            return result.ToList();
        }

        public List<Contact> GetMessage()
        {
            var result = _context.Contacts.Where(I => I.ReadInfo == "Yeni").Select(I => new Contact()
            {
                Id = I.Id,
                Email = I.Email,
                Date = I.Date,
                Message = I.Message,
                Name = I.Name,
                ReadInfo = I.ReadInfo



            });
            return result.OrderByDescending(I => I.Id).Take(3).ToList();
        }

        public List<Contact> GetNewMessage()
        {
            var result = _context.Contacts.Where(I => I.ReadInfo == "Yeni").Select(I => new Contact()
            {
                Id = I.Id,
                Email = I.Email,
                Date = I.Date,
                Message = I.Message,
                Name = I.Name,
                ReadInfo = I.ReadInfo


            }).ToList();
            return result.OrderByDescending(I => I.Id).ToList();
        }

        public List<Contact> GetNewMessage(out int toplamSayfa, int aktifSayfa = 1)
        {
            var result = _context.Contacts.Where(I => I.ReadInfo == "Yeni").Select(I => new Contact()
            {
                Id = I.Id,
                Email = I.Email,
                Date = I.Date,
                Message = I.Message,
                Name = I.Name,
                ReadInfo = I.ReadInfo


            });

            toplamSayfa = (int)Math.Ceiling((double)result.Count() / 6);
            result = result.OrderByDescending(I => I.Id).Skip((aktifSayfa - 1) * 6).Take(6);
            return result.ToList();
        }

        public List<Contact> GetOldMessage()
        {
            var result = _context.Contacts.Where(I => I.ReadInfo == "Okundu").Select(I => new Contact()
            {
                Id = I.Id,
                Email = I.Email,
                Date = I.Date,
                Message = I.Message,
                Name = I.Name,
                ReadInfo = I.ReadInfo


            }).ToList();
            return result.OrderByDescending(I => I.Id).ToList();
        }

        public List<Contact> GetOldMessage(out int toplamSayfa, int aktifSayfa = 1)
        {
            var result = _context.Contacts.Where(I => I.ReadInfo == "Okundu").Select(I => new Contact()
            {
                Id = I.Id,
                Email = I.Email,
                Date = I.Date,
                Message = I.Message,
                Name = I.Name,
                ReadInfo = I.ReadInfo


            });

            toplamSayfa = (int)Math.Ceiling((double)result.Count() / 6);
            result = result.OrderByDescending(I => I.Id).Skip((aktifSayfa - 1) * 6).Take(6);
            return result.ToList();
        }
    }
}
