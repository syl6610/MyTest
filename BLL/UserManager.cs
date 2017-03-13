using Ninject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using DAL;
using AutoMapper;
using ViewModel;


namespace BLL
{
    public class UserManager
    {
        AssignService assignservice = new AssignService();
        public List<ViewUser> GetUser()
        {
           
          
            return assignservice.GetUser();
        }

    }
}
