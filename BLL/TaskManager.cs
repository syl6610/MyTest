using Ninject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ViewModel;
using DAL;


namespace BLL
{
    public class TaskManager
    {

        AssignService assignservice = new AssignService();

        public bool AddTask(ViewTask task)
        {
            return assignservice.AddTask(task);
        }

        public bool UpdateTask(ViewTask task)
        {
            return assignservice.UpdateTask(task);
        }

        public IEnumerable<ViewTask> GetAllTask()
        {
            return assignservice.GetAllTask();
        }

        public ViewTask GetTaskByID(int taskID)
        {
            return assignservice.GetTaskByID(taskID);
        }


    }
}
