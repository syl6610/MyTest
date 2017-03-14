using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ViewModel;
using Model;
using AutoMapper;

namespace MyTest.Controllers
{

    public class MyTestController : Controller
    {
        private readonly AssignEntities _context = null;

        public MyTestController()
        {
            _context = new AssignEntities();
        }

        public ActionResult AssignTask()
        {
            return View();
        }

        /// <summary>
        /// Pagination
        /// </summary>
        /// <param name="rows"></param>
        /// <param name="page"></param>
        /// <returns>Current page data</returns>
        [HttpGet]
        public ActionResult TaskPage(int rows, int page)
        {
            var model = new PageViewModel();
            model.Records = _context.Tasks.Count();//total records
            model.Total = (int)Math.Ceiling(model.Records / (double)rows);//total pages
            model.Page = page;//current page
            model.Rows = _context.Tasks.OrderByDescending(x => x.T_ID)
                .Skip(rows * (page - 1))
                .Take(rows)
                .Select(x => new TaskViewModel
                {
                    T_ID = x.T_ID,
                    T_Title = x.T_Title,
                    T_Duedate = x.T_Duedate,
                    T_Priority = x.T_Priority,
                    T_Situation = x.T_Situation == "Done" ? true : false,
                    T_Contents = x.T_Contents,
                    U_ID = x.U_ID,
                    U_Name = x.Users.U_Name
                })
                .ToList();

            return Json(model, JsonRequestBehavior.AllowGet);
        }


        /// <summary>
        /// Task edit page 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        public ActionResult EditTask(int id)
        {
            
            var vtask = new TaskViewModel();
            vtask = _context.Tasks.Where(x => x.T_ID == id)
                .Select(x => new TaskViewModel
                {
                    T_ID = x.T_ID,
                    T_Title = x.T_Title,
                    T_Duedate = x.T_Duedate,
                    T_Priority = x.T_Priority,
                    T_Situation = x.T_Situation == "Done" ? true : false,
                    T_Contents = x.T_Contents,
                    U_ID = x.U_ID,
                }).FirstOrDefault();

            var userList = new SelectList(_context.Users, "U_ID", "U_Name", (vtask == null ? 0 : vtask.U_ID));
            ViewData["userList"]= userList;
            return View("EditTask", vtask);
            
        }


        /// <summary>
        /// Processing data
        /// 1. TaskID == 0 : Add task
        /// 2. TaskID != 0 : Update task
        /// </summary>
        /// <param name="vtask"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult EditTask(TaskViewModel vtask)
        {
            string tip = "";
            Tasks task = new Tasks()
            {
                T_ID = vtask.T_ID,
                T_Title = vtask.T_Title,
                T_Duedate = vtask.T_Duedate,
                T_Priority = vtask.T_Priority,
                T_Situation = vtask.T_Situation ? "Done" : null,
                T_Contents = vtask.T_Contents,
                U_ID = vtask.U_ID,
            };
            if (vtask.T_ID == 0)
            {
                _context.Entry<Tasks>(task).State = System.Data.Entity.EntityState.Added;
                tip = "Task has been added";
            }
            else
            {
                _context.Entry<Tasks>(task).State = System.Data.Entity.EntityState.Modified;
                tip = "Task has been updated";
            }
            _context.SaveChanges();
            var userList = new SelectList(_context.Users, "U_ID", "U_Name", vtask.U_ID);
            ViewData["userList"] = userList;
            ViewData["tip"] = tip;
            return View("EditTask", vtask);

        }

    }
}