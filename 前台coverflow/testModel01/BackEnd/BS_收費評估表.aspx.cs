using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testModel01
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn上傳收費評估表_Click(object sender, EventArgs e)
        {
            string path = Server.MapPath("..");
            FileUpload_收費評估表.SaveAs(path + @"\AssessFile\123.xlsx");
        }
    }
}