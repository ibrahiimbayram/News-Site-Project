using System.Threading.Tasks;
using AutoMapper;
using Business.Concrete;
using DataAcces.Interfaces;
using Dto.DTOS.KategoriDtos;
using Entity.Concrete;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Web.StringInfo;

namespace Web.Areas.Admin.Controllers
{
    [Area(RuleInfo.Admin)]
    [Authorize]
    public class CategoryController : Controller
    {

        private readonly IGenericDal<Category> _genericDal;
        private readonly IMapper _mapper;
        private readonly CategoryManager _categoryManager;
        public CategoryController(IGenericDal<Category> genericDal, IMapper mapper, CategoryManager categoryManager)
        {
            _genericDal = genericDal;
            _mapper = mapper;
            _categoryManager = categoryManager;
        }

        public async Task<IActionResult> Index()
        {
            ViewBag.category = await _genericDal.GetAllAsync();
            return View();
        }

        public async Task<IActionResult> Create()
        {

            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Create(CategoryAddDto category)
        {
            if (ModelState.IsValid)
            {
                await _categoryManager.Create(category);
                return RedirectToAction("Index");
            }
            return View();
        }

        public async Task<IActionResult> Delete(int id)
        {
            await _genericDal.RemoveAsync(new Category { Id = id });
            return RedirectToAction("Index");
        }


        public async Task<IActionResult> Update(int id)
        {
            TempData["Id"] = id;
            ViewBag.category = _categoryManager.Update(id);
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Update(CategoryUpdateDto categoryUpdateDtos)
        {
            if (ModelState.IsValid)
            {
                await _genericDal.UpdateAsync(_mapper.Map<Category>(categoryUpdateDtos));

                return RedirectToAction("Index");
            }
            else
            {

            }
            return View();
        }

    }
}
