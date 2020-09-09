using DataAcces.Concrete.Repositories;
using Entity.Concrete;
using Entity.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace DataAcces.Interfaces
{
    public interface INewsDal : IGenericDal<News>
    {
        List<News> GetNews();
        List<News> GetNews(out int toplamSayfa, int aktifSayfa=1);
        List<News> GetAllString(string id);
        List<News> GetAllStringDetail(int id ,string name);

        List<News> GetCategoryActiveNews(string id);
        List<News> GetCategoryeNews(string id);
        List<News> GetOldNews();
        List<News> GetOldNews(out int toplamSayfa, int aktifSayfa = 1);

        List<News> GetPendingNews();
        List<News> GetPendingNews(out int toplamSayfa, int aktifSayfa = 1);

        int GetTotalNewsNumber();
        int GetActiveNewsNumber();
        int GetPendingNewsNumber();

        int GetSportTotalNewsNumber();
        int GetPoliticsTotalNewsNumber();
        int GetEducationTotalNewsNumber();
        int GetEconomyTotalNewsNumber();
        int GetHealthTotalNewsNumber();
        int GetMagazinTotalNewsNumber();
    }
}
