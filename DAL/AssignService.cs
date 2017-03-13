using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using System.Data.Entity.Infrastructure;
using AutoMapper;
using ViewModel;
using System.Data.SqlClient;

namespace DAL
{
    public class AssignService
    {
        AssignEntities context = new AssignEntities();

        public List<ViewUser> GetUser()
        {
            Mapper.Initialize(x => x.CreateMap<Users, ViewUser>());
            List<ViewUser> vusers = new List<ViewUser>();
            try
            {
                var users = (from a in context.Users
                              select a);
                foreach (var user in users)
                {
                    vusers.Add(Mapper.Map<Users, ViewUser>(user));
                }
                return vusers;
            }
            catch
            {
                
                return null;
            }
        }

        public List<ViewTask> GetAllTask()
        {
            Mapper.Initialize(x => x.CreateMap<Tasks, ViewTask>().ForMember(vtask => vtask.U_Name,(map) => map.MapFrom(task => task.Users.U_Name)));
            List<ViewTask> vtasks = new List<ViewTask>();
            try
            {
                var tasks = (from a in context.Tasks
                             orderby a.T_ID descending
                              select a);
                foreach (var task in tasks)
                {
                    vtasks.Add(Mapper.Map<Tasks, ViewTask>(task));
                }
                return vtasks;
            }
            catch
            {
                return null;
            }
        }

        public ViewTask GetTaskByID(int taskID)
        {
            Mapper.Initialize(x => x.CreateMap<Tasks, ViewTask>());
            ViewTask vtask = new ViewTask();
            try
            {
                var task = (from a in context.Tasks
                             where a.T_ID == taskID
                             select a);


                vtask = Mapper.Map<Tasks, ViewTask>(task.FirstOrDefault());

                return vtask;
            }
            catch
            {
                return null;
            }
        }


        public bool AddTask(ViewTask vtask)
        {
            Mapper.Initialize(x => x.CreateMap<ViewTask, Tasks>());
            Tasks task = new Tasks();
            try
            {
                task = Mapper.Map<ViewTask, Tasks>(vtask);
                context.Tasks.Add(task);
                context.Entry<Tasks>(task).State = System.Data.Entity.EntityState.Added;
                context.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool UpdateTask(ViewTask vtask)
        {
            Mapper.Initialize(x => x.CreateMap<ViewTask, Tasks>());
            Tasks task = new Tasks();
            try
            {
                task = Mapper.Map<ViewTask, Tasks>(vtask);
                context.Entry<Tasks>(task).State = System.Data.Entity.EntityState.Modified;
                context.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

    }
}
