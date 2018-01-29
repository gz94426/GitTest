using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace VueLearn.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            return View();
        }


        public ActionResult UserManger()
        {
            return View();
        }


        public ActionResult VueManger()
        {
            return View();
        }

        public ActionResult GetData(int page, int rows = 5)
        {
            OAPEntities oa = new OAPEntities();

            List<Users> ulsit = oa.Users.OrderBy(a => a.Id).Skip((page - 1) * rows).Take(rows).ToList();

            return Json(ulsit, JsonRequestBehavior.AllowGet);
        }


    }
}
