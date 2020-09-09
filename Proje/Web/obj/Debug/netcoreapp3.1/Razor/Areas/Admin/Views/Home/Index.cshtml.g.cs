#pragma checksum "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "1ff922d5263960f9598594d79fbc2be18cdd11c6"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Admin_Views_Home_Index), @"mvc.1.0.view", @"/Areas/Admin/Views/Home/Index.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\_ViewImports.cshtml"
using Web;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\_ViewImports.cshtml"
using Dto.DTOS.NewsDtos;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"1ff922d5263960f9598594d79fbc2be18cdd11c6", @"/Areas/Admin/Views/Home/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"aa54ab726aae7567f27c0929cda55e5ce5b58517", @"/Areas/Admin/Views/_ViewImports.cshtml")]
    public class Areas_Admin_Views_Home_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\n");
#nullable restore
#line 2 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\Index.cshtml"
  
    ViewData["Title"] = "Index";
    Layout = "~/Areas/Admin/Views/Shared/_Layout.cshtml";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<h1 class=""text-center"">Haber Verileri</h1>
<br />
<br />
<div class=""row"">
    <div class=""col-md-4"">
        <div class=""card text-white bg-info mb-3"" style=""width:22rem; max-width: 22rem;min-height: 13rem;"">
            <div class=""card-body"">
                <br />
                <h5 class=""card-title text-center"">Toplam Haber</h5>
                <h1 class=""text-center"">");
#nullable restore
#line 16 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\Index.cshtml"
                                   Write(ViewBag.GetTotalNewsNumber);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h1>
            </div>
        </div>
    </div>
    <div class=""col-md-4"">
        <div class=""card text-white bg-danger mb-3"" style=""width:22rem; max-width: 22rem; min-height: 13rem;"">
            <div class=""card-body"">
                <br />
                <h5 class=""card-title text-center"">Güncel Haber</h5>
                <h1 class=""text-center"">");
#nullable restore
#line 25 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\Index.cshtml"
                                   Write(ViewBag.GetActiveNewsNumber);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h1>
            </div>
        </div>
    </div>
    <div class=""col-md-4"">
        <div class=""card text-white bg-warning mb-3"" style=""width:22rem; max-width: 22rem; min-height: 13rem;"">
            <div class=""card-body"">
                <br />
                <h5 class=""card-title text-center"">Bekleyen Haber</h5>
                <h1 class=""text-center"">");
#nullable restore
#line 34 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\Index.cshtml"
                                   Write(ViewBag.GetPendingNewsNumber);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h1>
            </div>
        </div>
    </div>

</div>
<div class=""row"">
    <div class=""col-md-4"">
        <div class=""card text-white bg-danger mb-3"" style=""width:22rem; max-width: 22rem; min-height: 13rem;"">
            <div class=""card-body"">
                <br />
                <h5 class=""card-title text-center"">Spor Haberleri</h5>
                <h1 class=""text-center"">");
#nullable restore
#line 46 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\Index.cshtml"
                                   Write(ViewBag.GetSportTotalNewsNumber);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h1>
            </div>
        </div>
    </div>
    <div class=""col-md-4"">
        <div class=""card text-white bg-warning mb-3"" style=""width:22rem; max-width: 22rem; min-height: 13rem;"">
            <div class=""card-body"">
                <br />
                <h5 class=""card-title text-center"">Siyaset Haberleri</h5>
                <h1 class=""text-center"">");
#nullable restore
#line 55 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\Index.cshtml"
                                   Write(ViewBag.GetPoliticsTotalNewsNumber);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h1>
            </div>
        </div>
    </div>
    <div class=""col-md-4"">
        <div class=""card text-white bg-info mb-3"" style=""width:22rem; max-width: 22rem; min-height: 13rem;"">
            <div class=""card-body"">
                <br />
                <h5 class=""card-title text-center"">Eğitim Haberleri</h5>
                <h1 class=""text-center"">");
#nullable restore
#line 64 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\Index.cshtml"
                                   Write(ViewBag.GetEducationTotalNewsNumber);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h1>
            </div>
        </div>
    </div>
</div>

<div class=""row"">
    <div class=""col-md-4"">
        <div class=""card text-white bg-warning mb-3"" style=""width:22rem; max-width: 22rem; min-height: 13rem;"">
            <div class=""card-body"">
                <br />
                <h5 class=""card-title text-center"">Ekonomi Haberleri</h5>
                <h1 class=""text-center"">");
#nullable restore
#line 76 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\Index.cshtml"
                                   Write(ViewBag.GetEconomyTotalNewsNumber);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h1>
            </div>
        </div>
    </div>
    <div class=""col-md-4"">
        <div class=""card text-white bg-info mb-3"" style=""width:22rem; max-width: 22rem; min-height: 13rem;"">
            <div class=""card-body"">
                <br />
                <h5 class=""card-title text-center"">Sağlık Haberleri</h5>
                <h1 class=""text-center"">");
#nullable restore
#line 85 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\Index.cshtml"
                                   Write(ViewBag.GetHealthTotalNewsNumber);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h1>
            </div>
        </div>
    </div>
    <div class=""col-md-4"">
        <div class=""card text-white bg-danger mb-3"" style=""width:22rem; max-width: 22rem; min-height: 13rem;"">
            <div class=""card-body"">
                <br />
                <h5 class=""card-title text-center"">Magazin Haberleri</h5>
                <h1 class=""text-center"">");
#nullable restore
#line 94 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\Index.cshtml"
                                   Write(ViewBag.GetMagazinTotalNewsNumber);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h1>
            </div>
        </div>
    </div>
</div>

<h1 class=""text-center"">Duyuru Verileri</h1>
<br /><br />
<div class=""row"">
    <div class=""col-md-4"">
        <div class=""card text-white bg-success mb-3"" style=""width:22rem; max-width: 22rem; min-height: 13rem;"">
            <div class=""card-body"">
                <br />
                <h5 class=""card-title text-center"">Toplam Duyuru</h5>
                <h1 class=""text-center"">");
#nullable restore
#line 108 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\Index.cshtml"
                                   Write(ViewBag.GetTotalAnnouncementNumber);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h1>
            </div>
        </div>
    </div>
    <div class=""col-md-4"">
        <div class=""card text-white bg-danger mb-3"" style=""width:22rem; max-width: 22rem; min-height: 13rem;"">
            <div class=""card-body"">
                <br />
                <h5 class=""card-title text-center"">Aktif Duyuru</h5>
                <h1 class=""text-center"">");
#nullable restore
#line 117 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\Index.cshtml"
                                   Write(ViewBag.GetActiveAnnouncementNumber);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h1>
            </div>
        </div>
    </div>
    <div class=""col-md-4"">
        <div class=""card text-white bg-info mb-3"" style=""width:22rem; max-width: 22rem; min-height: 13rem;"">
            <div class=""card-body"">
                <br />
                <h5 class=""card-title text-center"">Bekleyen Duyuru</h5>
                <h1 class=""text-center"">");
#nullable restore
#line 126 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\Index.cshtml"
                                   Write(ViewBag.GetPendingAnnouncementNumber);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h1>
            </div>
        </div>
    </div>
</div>

<div class=""row"">
    <div class=""col-md-4"">
        <div class=""card text-white bg-danger mb-3"" style=""width:22rem; max-width: 22rem; min-height: 13rem;"">
            <div class=""card-body"">
                <br />
                <h5 class=""card-title text-center"">Spor Duyuruları</h5>
                <h1 class=""text-center"">");
#nullable restore
#line 138 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\Index.cshtml"
                                   Write(ViewBag.GetSportTotalDuyuruNumber);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h1>
            </div>
        </div>
    </div>
    <div class=""col-md-4"">
        <div class=""card text-white bg-info mb-3"" style=""width:22rem; max-width: 22rem; min-height: 13rem;"">
            <div class=""card-body"">
                <br />
                <h5 class=""card-title text-center"">Siyaset Duyuruları</h5>
                <h1 class=""text-center"">");
#nullable restore
#line 147 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\Index.cshtml"
                                   Write(ViewBag.GetPoliticsTotalDuyuruNumber);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h1>
            </div>
        </div>
    </div>
    <div class=""col-md-4"">
        <div class=""card text-white bg-success mb-3"" style=""width:22rem; max-width: 22rem; min-height: 13rem;"">
            <div class=""card-body"">
                <br />
                <h5 class=""card-title text-center"">Eğitim Duyuruları</h5>
                <h1 class=""text-center"">");
#nullable restore
#line 156 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\Index.cshtml"
                                   Write(ViewBag.GetEducationTotalDuyuruNumber);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h1>
            </div>
        </div>
    </div>
</div>

<div class=""row"">
    <div class=""col-md-4"">
        <div class=""card text-white bg-info mb-3"" style=""width:22rem; max-width: 22rem; min-height: 13rem;"">
            <div class=""card-body"">
                <br />
                <h5 class=""card-title text-center"">Ekonomi Duyuruları</h5>
                <h1 class=""text-center"">");
#nullable restore
#line 168 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\Index.cshtml"
                                   Write(ViewBag.GetEconomyTotalDuyuruNumber);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h1>
            </div>
        </div>
    </div>
    <div class=""col-md-4"">
        <div class=""card text-white bg-success mb-3"" style=""width:22rem; max-width: 22rem; min-height: 13rem;"">
            <div class=""card-body"">
                <br />
                <h5 class=""card-title text-center"">Sağlık Duyuruları</h5>
                <h1 class=""text-center"">");
#nullable restore
#line 177 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\Index.cshtml"
                                   Write(ViewBag.GetHealthTotalDuyuruNumber);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h1>
            </div>
        </div>
    </div>
    <div class=""col-md-4"">
        <div class=""card text-white bg-danger mb-3"" style=""width:22rem; max-width: 22rem; min-height: 13rem;"">
            <div class=""card-body"">
                <br />
                <h5 class=""card-title text-center"">Magazin Duyuruları</h5>
                <h1 class=""text-center"">");
#nullable restore
#line 186 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\Index.cshtml"
                                   Write(ViewBag.GetMagazinTotalDuyuruNumber);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h1>\n            </div>\n        </div>\n    </div>\n</div>\n\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591