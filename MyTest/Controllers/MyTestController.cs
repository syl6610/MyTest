using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ViewModel;
using BLL;


namespace MyTest.Controllers
{
    public class MyTestController : Controller
    {
        // GET: MyTest
        public ActionResult Index()
        {
            return View();
        }

        TaskManager taskmanager = new TaskManager();
        UserManager usermanager = new UserManager();

        public ActionResult AssignTask(int page)
        {



            PageHelper pagehelper = new PageHelper(page,taskmanager.GetAllTask());

            ViewBag.PageInfo = pagehelper;


            return View();
        }

        public ActionResult EditTask1(int taskID)
        {
            ViewBag.UserList = usermanager.GetUser();
            ViewTask vtask = new ViewTask();
            vtask = taskmanager.GetTaskByID(taskID);
            return View("EditTask", vtask);
            
        }

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