using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ViewModel
{
    public class ViewTask
    {
        public int T_ID { get; set; }
        public string T_Title { get; set; }
        public Nullable<System.DateTime> T_Duedate { get; set; }
        public Nullable<int> U_ID { get; set; }
        public string T_Priority { get; set; }
        public string T_Situation { get; set; }
        public string T_Contents { get; set; }
        public string U_Name { get; set; }
    }
}
