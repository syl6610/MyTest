using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BLL;
using Model;
using Interface;
using Ninject;

namespace Tasks.Controllers
{
    public class AssignController : Controller
    {
        // GET: Assign
        public ActionResult Index()
        {
            return View();
        }


        public ActionResult TaskView(Tasks task)
        {

            private static IKernel kernel = new StandardKernel(new MyModule());
            IAssignService assignservice = kernel.Get<IAssignService>();
            return View();
        }
    }
}