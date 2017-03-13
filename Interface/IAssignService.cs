using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Interface
{
    public interface IAssignService
    {
        bool AddUser(Users user);
        bool AddTask(Tasks task);
        IEnumerable<Users> GetUser();
        IEnumerable<Tasks> GetTask();

    }
}
