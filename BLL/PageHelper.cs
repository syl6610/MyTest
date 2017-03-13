using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ViewModel;

namespace BLL
{
    public class PageHelper
    {

        private IEnumerable<ViewTask> Data;

        private int PageSize;

        private int PageCount;

        public int PageIndex;

        public int StartPage;

        public int EndPage;


        public PageHelper(int pageindex, IEnumerable<ViewTask> data)
        {
            PageIndex = pageindex;
            PageSize = 5;
            Data = data;
            PageCount = (int)Math.Ceiling(Data.Count() / (double)PageSize);

            if(PageCount <= 5)
            {
                StartPage = 1;
                EndPage = PageCount;
            }
            else if(PageIndex - 2 < 1)
            {
                StartPage = 1;
                EndPage = 5;
            }
            else if (PageIndex + 2 > PageCount)
            {
                StartPage = PageCount - 4;
                EndPage = PageCount;
            }
            else
            {
                StartPage = PageIndex -2;
                EndPage = PageIndex + 2;
            }
        }

        public IEnumerable<ViewTask> GetData()
        {
            return Data.Skip((PageIndex - 1) * PageSize).Take(PageSize);
        }
    }
}
