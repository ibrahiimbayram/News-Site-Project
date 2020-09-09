using DataAcces.Concrete.Context;
using DataAcces.Interfaces;
using Entity.Interfaces;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace DataAcces.Concrete.Repositories
{
    public class EfGenericRepository<TEntity> : IGenericDal<TEntity> where TEntity : class, ITable, new()
    {
        private readonly DataContext _context;

        public EfGenericRepository(DataContext context)
        {
            _context = context;
        }

        public async Task AddAsync(TEntity entity)
        {
            await _context.AddAsync(entity);
            await _context.SaveChangesAsync();
        }

        public async Task<List<TEntity>> GetAllAsync()
        {

            return await _context.Set<TEntity>().ToListAsync();
        }

        public TEntity GetAllAsyncc(int id)
        {
            return _context.Set<TEntity>().Find(id);
        }

        public async Task<TEntity> GetByIdAsync(int id)
        {

            return await _context.Set<TEntity>().FindAsync(id);
        }


        public async Task RemoveAsync(TEntity entity)
        {

            _context.Remove(entity);
            await _context.SaveChangesAsync();

        }

        public async Task UpdateAsync(TEntity entity)
        {

            _context.Update(entity);
            await _context.SaveChangesAsync();
        }
    }
}
