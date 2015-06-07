using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace testModel01.BackEnd
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        // string str_Data_Source = @"CR4-17\MSSQLSERVER2013";//資策
        //  string str_Data_Source = @"SHAWN-PC";//家3
        string str_Data_Source = @"WIN-R56ALTBAKPC\SQLEXPRESS";//家2

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataSource sds_outlook = new SqlDataSource();
            sds_outlook.ConnectionString = "Data Source=" + str_Data_Source + ";Initial Catalog=dbKSYY;Integrated Security=True";
            sds_outlook.SelectCommand = "SELECT fid,f庭院照片_s from  T康欣_活動剪影 WHERE f庭院照片_s IS NOT NULL";
            DataView dv1 = (DataView)sds_outlook.Select(DataSourceSelectArguments.Empty);
            sds_outlook.SelectCommand = "SELECT fid,f庭院照片_l from  T康欣_活動剪影 WHERE f庭院照片_s IS NOT NULL";
            DataView dv2 = (DataView)sds_outlook.Select(DataSourceSelectArguments.Empty);
        
            GridView2.DataSource = dv2;

            GridView2.DataBind();
           
            if (Session["data1"]==null)
            Session["data1"] = dv1;
            if (Session["data2"] == null)
                Session["data2"] = dv2;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataView dv = (DataView)Session["data"];
            dv[1]["3"] = "欄位3";
            dv[2]["3"] = "這是一個按鈕產生的資料";
            Session["data"] = dv;
            
        }
    }
}