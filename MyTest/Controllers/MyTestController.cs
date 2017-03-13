using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ViewModel;
using BLL;
using Model;

namespace MyTest.Controllers
{
    public class TaskViewModel
    {
        public int T_ID { get; set; }
        public string T_Title { get; set; }
        public Nullable<System.DateTime> T_Duedate { get; set; }
        public Nullable<int> U_ID { get; set; }
        public string T_Priority { get; set; }
        public string T_Situation { get; set; }
        public string T_Contents { get; set; }
    }

    public class PageViewModel
    {
        public int Records { set; get; }
        public int Page { set; get; }
        public int Total { set; get; }
        public List<TaskViewModel> Rows { set; get; }
    }

    public class MyTestController : Controller
    {
        private readonly AssignEntities _context = null;

        public MyTestController()
        {
            _context = new AssignEntities();
        }

        // GET: MyTest
        public ActionResult Index()
        {
            return View();
        }

        TaskManager taskmanager = new TaskManager();
        UserManager usermanager = new UserManager();

        public ActionResult AssignTask()
        {
            return View();
        }

        //page start with 1
        [HttpGet]
        public ActionResult TaskPage(int rows, int page)
        {
            var model = new PageViewModel();
            model.Records = _context.Tasks.Count();

            model.Total = (model.Records / rows) + (model.Records % rows == 0 ? 0 : 1);
            model.Page = page;
            model.Rows = _context.Tasks.OrderBy(x => x.T_ID)
                .Skip(rows * (page - 1))
                .Take(rows)
                .Select(x => new TaskViewModel
                {
                    T_ID = x.T_ID,
                    T_Title = x.T_Title,
                    T_Duedate = x.T_Duedate,
                    T_Priority = x.T_Priority,
                    T_Situation = x.T_Situation,
                    T_Contents = x.T_Contents,
                    U_ID = x.U_ID
                })
                .ToList();
            return Json(model, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public ActionResult EditTask(int id)
        {
            ViewBag.UserList = usermanager.GetUser();
            ViewTask vtask = new ViewTask();
            vtask = taskmanager.GetTaskByID(id);
            return View("EditTask", vtask);
            
        }

        [HttpPost]
        public ActionResult EditTask(ViewTask vtask)
        {
            ViewBag.UserList = usermanager.GetUser();
            if (vtask.T_ID == 0)
            {
                taskmanager.AddTask(vtask);
            }
            else
            {
                taskmanager.UpdateTask(vtask);
            }
            return View(vtask);
               
        }

    }
}