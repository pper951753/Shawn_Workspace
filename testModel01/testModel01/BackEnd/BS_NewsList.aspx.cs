using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testModel01
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        DateTime dt = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtDate.Text = dt.ToLongDateString();
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
            txtDate.Text = dt.ToLongDateString();
            txtSubject.Text = "";
            CKEditorControl1.Text = "";
        }
    }
}