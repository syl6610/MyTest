﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace Interface
{
    public interface IUserManager
    {
        string AddUser(Users user);
        IEnumerable<Users> GetUser();

    }
}
