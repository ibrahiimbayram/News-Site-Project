using Entity.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAcces.Interfaces
{
    public interface IAnnouncementDal : IGenericDal<Announcement>
    {
        List<Announcement> GetAnnouncement();
        List<Announcement> GetAnnouncement(out int toplamSayfa, int aktifSayfa = 1);
        List<Announcement> GetAllStringDetail(int id, string name);
        List<Announcement> GetAllString(string id);
        List<Announcement> GetCategoryeAnnouncement(string id);
        List<Announcement> GetOldAnnouncement();
        List<Announcement> GetOldAnnouncement(out int toplamSayfa, int aktifSayfa = 1);

        List<Announcement> GetHomeAnnouncement();
        List<Announcement> GetPendingAnnouncement();
        List<Announcement> GetPendingAnnouncement(out int toplamSayfa, int aktifSayfa = 1);

        int GetTotalAnnouncementNumber();
        int GetActiveAnnouncementNumber();
        int GetPendingAnnouncementNumber();


        int GetSportTotalDuyuruNumber();
        int GetPoliticsTotalDuyuruNumber();
        int GetEducationTotalDuyuruNumber();
        int GetEconomyTotalDuyuruNumber();
        int GetHealthTotalDuyuruNumber();
        int GetMagazinTotalDuyuruNumber();
    }
}
