using Entity.Concrete;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace DataAcces.Interfaces
{
    public interface IMessageDal : IGenericDal<Contact>
    {
        List<Contact> GetMessage();
        List<Contact> GetAllString(string id);

        List<Contact> GetNewMessage();
        List<Contact> GetNewMessage(out int toplamSayfa, int aktifSayfa = 1);


        List<Contact> GetOldMessage();
        List<Contact> GetOldMessage(out int toplamSayfa, int aktifSayfa = 1);
    }
}
