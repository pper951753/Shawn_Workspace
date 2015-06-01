using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testModel01.FrontEnd
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnectionStringBuilder Scsb = new SqlConnectionStringBuilder();
           // Scsb.DataSource = @"CR4-17\MSSQLSERVER2013"; //加上@ 忽略反斜線的字元
            Scsb.DataSource = @"WIN-R56ALTBAKPC\SQLEXPRESS"; //加上@ 忽略反斜線的字元
           
            
            Scsb.InitialCatalog = "dbKSYY";//資料庫名稱
            Scsb.IntegratedSecurity = true;
            SqlConnection con = new SqlConnection(Scsb.ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand
                ("SELECT fid,f庭院照片_s,f庭院照片_l from  T康欣_活動剪影 WHERE f庭院照片_s IS NOT NULL", con);           
            SqlDataReader reader = cmd.ExecuteReader();


            while (reader.Read())
            {
                
                Image im = new Image();
                im.ImageUrl= string.Format("{0}", reader["f庭院照片_s"]);
                im.CssClass = "cover";
               
                PlaceHolder1.Controls.Add(im);
            }

            con.Close();

            /*
            <img class="cover" src="demo/attic.jpg"/>
				<img class="cover" src="demo/aurora.jpg"/>*/
        }
    }
}