using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testModel01
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Assess_Load();
        }

        protected void Assess_Load()
        {
            string path = Server.MapPath("..");
            path += @"\AssessFile\123.xlsx";
            string con = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Extended Properties='Excel 12.0;HDR=YES;IMEX=1'";
            OleDbConnection conn = new OleDbConnection(con);

            OleDbDataAdapter myCommand = new OleDbDataAdapter("select * from [Sheet1$]", conn);
            DataSet myDataSet = new DataSet();
            myCommand.Fill(myDataSet, "a");
            this.GridView1.DataSource = myDataSet.Tables["a"].DefaultView;
            this.GridView1.DataBind();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Assess_Load();
        }

    }
}