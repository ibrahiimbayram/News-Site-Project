#pragma checksum "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\GetNewMessage.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "413c4939fc266e320428e515c64eefc1b556e234"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Admin_Views_Home_GetNewMessage), @"mvc.1.0.view", @"/Areas/Admin/Views/Home/GetNewMessage.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"413c4939fc266e320428e515c64eefc1b556e234", @"/Areas/Admin/Views/Home/GetNewMessage.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"aa54ab726aae7567f27c0929cda55e5ce5b58517", @"/Areas/Admin/Views/_ViewImports.cshtml")]
    public class Areas_Admin_Views_Home_GetNewMessage : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Message", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("page-link"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "GetNewMessage", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("btn btn-outline-info btn-sm pull-right"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_4 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Delete", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_5 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("action", new global::Microsoft.AspNetCore.Html.HtmlString("Message"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_6 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("method", "post", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\n");
#nullable restore
#line 2 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\GetNewMessage.cshtml"
  
    ViewData["Title"] = "GetNewMessage";
    Layout = "~/Areas/Admin/Views/Shared/_Layout.cshtml";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<div class=""container"">
    <div class=""row"">

        <div class=""message-wrap col-lg-6"">

            <div class=""msg-wrap"">
                <div class=""alert alert-info msg-date"">
                    <div class=""text-center"">
                        <font size=""5px""><strong>Gelen Kutusu</strong></font>
                    </div>
                </div>
                <font color=""black""><h4 class=""text-center"">");
#nullable restore
#line 18 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\GetNewMessage.cshtml"
                                                       Write(ViewBag.bos);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h4></font>\n");
#nullable restore
#line 19 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\GetNewMessage.cshtml"
                 foreach (var i in ViewBag.li)
                {


#line default
#line hidden
#nullable disable
            WriteLiteral("                    <div class=\"media msg\">\n                        <div class=\"media-body\">\n                            <font size=\"4px\"><small class=\"pull-right time\"><i class=\"fa fa-clock-o\"></i>");
#nullable restore
#line 24 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\GetNewMessage.cshtml"
                                                                                                    Write(i.Date.ToString("dd/MM/yyyy"));

#line default
#line hidden
#nullable disable
            WriteLiteral("</small></font>\n                            <div class=\"media-heading\">\n                                <font size=\"4px\">");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "413c4939fc266e320428e515c64eefc1b556e2347887", async() => {
#nullable restore
#line 26 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\GetNewMessage.cshtml"
                                                                                           Write(i.Name);

#line default
#line hidden
#nullable disable
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#nullable restore
#line 26 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\GetNewMessage.cshtml"
                                                                           WriteLiteral(i.Name);

#line default
#line hidden
#nullable disable
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("</font>\n                            </div>\n                        </div>\n                    </div>\n");
#nullable restore
#line 30 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\GetNewMessage.cshtml"
                }

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </div>\n            <div class=\"text-center\">\n                <ul class=\"pagination background-color=\" white\"\">\n\n");
#nullable restore
#line 36 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\GetNewMessage.cshtml"
                     for (int i = 1; i <= ViewBag.toplamsayfa; i++)
                    {

#line default
#line hidden
#nullable disable
            WriteLiteral("                        <li");
            BeginWriteAttribute("class", " class=\"", 1382, "\"", 1436, 2);
            WriteAttributeValue("", 1390, "page-item", 1390, 9, true);
#nullable restore
#line 38 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\GetNewMessage.cshtml"
WriteAttributeValue(" ", 1399, ViewBag.AktifSayfa==i?"active":"", 1400, 36, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">\n                            ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "413c4939fc266e320428e515c64eefc1b556e23411725", async() => {
#nullable restore
#line 39 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\GetNewMessage.cshtml"
                                                                                           Write(i);

#line default
#line hidden
#nullable disable
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_2.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-page", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#nullable restore
#line 39 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\GetNewMessage.cshtml"
                                                                                WriteLiteral(i);

#line default
#line hidden
#nullable disable
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["page"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-page", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["page"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\n                        </li>\n");
#nullable restore
#line 41 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\GetNewMessage.cshtml"
                    }

#line default
#line hidden
#nullable disable
            WriteLiteral("\n                </ul>\n            </div>\n        </div>\n");
#nullable restore
#line 46 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\GetNewMessage.cshtml"
         if (ViewBag.liste != null)
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("            ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "413c4939fc266e320428e515c64eefc1b556e23414921", async() => {
                WriteLiteral("\n                <div class=\"col-lg-6\">\n\n\n");
#nullable restore
#line 52 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\GetNewMessage.cshtml"
                     foreach (var it in ViewBag.liste)
                    {

#line default
#line hidden
#nullable disable
                WriteLiteral("                        <div class=\"msg-wrap\">\n                            <div class=\"text-center\">\n                                <font size=\"4px\">");
#nullable restore
#line 56 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\GetNewMessage.cshtml"
                                            Write(it.Name);

#line default
#line hidden
#nullable disable
                WriteLiteral("</font>\n                            </div>\n                            <div class=\"media msg\">\n                                <div class=\"media-body\">\n                                    <font size=\"4px\"><small>");
#nullable restore
#line 60 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\GetNewMessage.cshtml"
                                                       Write(it.Message);

#line default
#line hidden
#nullable disable
                WriteLiteral("</small></font>\n                                </div>\n                            </div>\n\n\n                        </div>\n                        ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "413c4939fc266e320428e515c64eefc1b556e23416666", async() => {
                    WriteLiteral("Sil");
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_3);
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_4.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_4);
                if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
                {
                    throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
                }
                BeginWriteTagHelperAttribute();
#nullable restore
#line 66 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\GetNewMessage.cshtml"
                                                                                                WriteLiteral(it.Name);

#line default
#line hidden
#nullable disable
                __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
                __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\n");
#nullable restore
#line 67 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\GetNewMessage.cshtml"

                    }

#line default
#line hidden
#nullable disable
                WriteLiteral("\n                </div>\n            ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_5);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Method = (string)__tagHelperAttribute_6.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_6);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\n");
#nullable restore
#line 72 "C:\Users\İbrahim Bayram\Documents\GitHub\Haber-Sitesi-Projesi\Proje\Web\Areas\Admin\Views\Home\GetNewMessage.cshtml"
        }

#line default
#line hidden
#nullable disable
            WriteLiteral("    </div>\n</div>\n\n");
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
