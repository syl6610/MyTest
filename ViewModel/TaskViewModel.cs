using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ViewModel
{
    public class TaskViewModel
    {
        public int T_ID { get; set; }
        [Display(Name = "Title")]
        [Required(ErrorMessage = "Title is required")]
        public string T_Title { get; set; }
        [Display(Name = "Due date")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public Nullable<System.DateTime> T_Duedate { get; set; }
        [Display(Name = "Priority")]
        public string T_Priority { get; set; }
        [Display(Name = "Contents")]
        public string T_Contents { get; set; }
        [Display(Name = "Leader")]
        public Nullable<int> U_ID { get; set; }     
        public string U_Name { get; set; }
        [Display(Name = "Situation")]
        public bool T_Situation { get; set; }
    }
}
