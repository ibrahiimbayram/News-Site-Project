using AutoMapper;
using DataAcces.Interfaces;
using Dto.DTOS.KategoriDtos;
using Entity.Concrete;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Business.Concrete
{
    public class CategoryManager
    {
        private readonly IGenericDal<Category> _genericDal;
        private readonly IMapper _mapper;

        public CategoryManager(IGenericDal<Category> genericDal, IMapper mapper)
        {
            _genericDal = genericDal;
            _mapper = mapper;
        }

        public List<CategoryUpdateDto> Update(int id)
        {
            //TempData["Id"] = id;

            var updateCategory = _genericDal.GetAllAsyncc(id);

            //var updateCategory = await _genericDal.GetByIdAsync(id);

            List<CategoryUpdateDto> update = new List<CategoryUpdateDto>();

            CategoryUpdateDto model = new CategoryUpdateDto();
            model.Id = updateCategory.Id;
            model.Name = updateCategory.Name;


            update.Add(model);

            return update;
        }

        public async Task<Category> Create(CategoryAddDto category)
        {
                await _genericDal.AddAsync(new Category()
                {
                    Name = category.Name

                });
            return null;
        }
    }
}
