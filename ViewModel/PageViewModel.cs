using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ViewModel
{
    public class PageViewModel
    {
        public int Records { set; get; }
        public int Page { set; get; }
        public int Total { set; get; }
        public List<TaskViewModel> Rows { set; get; }
    }
}
