using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testModel01
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        string str_Data_Source = @"CR4-17\MSSQLSERVER2013";//資策
      //  string str_Data_Source = @"SHAWN-PC";//家3

        protected void Page_Load(object sender, EventArgs e)
        {
            Initial_loadpage();
        }

        private void Initial_loadpage()
        {
            SqlDataSource sds_outlook = new SqlDataSource();
            sds_outlook.ConnectionString = "Data Source=" + str_Data_Source + ";Initial Catalog=dbKSYY;Integrated Security=True";
            sds_outlook.SelectCommand = "SELECT fid,f庭院照片_s,f庭院照片_l from  T康欣_活動剪影 WHERE f庭院照片_s IS NOT NULL";
            ListView_outlook.DataSource = sds_outlook.Select(DataSourceSelectArguments.Empty);
            ListView_outlook.DataBind();
          
            SqlDataSource sds_inside = new SqlDataSource();
            sds_inside.ConnectionString = "Data Source=" + str_Data_Source + ";Initial Catalog=dbKSYY;Integrated Security=True";
            sds_inside.SelectCommand = "SELECT fid,f內部照片_s,f內部照片_l from  T康欣_活動剪影 WHERE f內部照片_s IS NOT NULL";
            ListView_inside.DataSource = sds_inside.Select(DataSourceSelectArguments.Empty);
            ListView_inside.DataBind();
            
            SqlDataSource sds_birthday = new SqlDataSource();
            sds_birthday.ConnectionString = "Data Source=" + str_Data_Source + ";Initial Catalog=dbKSYY;Integrated Security=True";
            sds_birthday.SelectCommand = "SELECT fid,f慶生照片_s,f慶生照片_l from  T康欣_活動剪影 WHERE f慶生照片_s IS NOT NULL";
            ListView_birthday.DataSource = sds_birthday.Select(DataSourceSelectArguments.Empty);
            ListView_birthday.DataBind();
            
            SqlDataSource sds_rehab = new SqlDataSource();
            sds_rehab.ConnectionString = "Data Source=" + str_Data_Source + ";Initial Catalog=dbKSYY;Integrated Security=True";
            sds_rehab.SelectCommand = "SELECT fid,f復健照片_s,f復健照片_l from  T康欣_活動剪影 WHERE f復健照片_s IS NOT NULL";
            ListView_rehab.DataSource = sds_rehab.Select(DataSourceSelectArguments.Empty);
            ListView_rehab.DataBind();

            SqlDataSource sds_cuthair = new SqlDataSource();
            sds_cuthair.ConnectionString = "Data Source=" + str_Data_Source + ";Initial Catalog=dbKSYY;Integrated Security=True";
            sds_cuthair.SelectCommand = "SELECT fid,f義剪照片_s,f義剪照片_l from  T康欣_活動剪影 WHERE f義剪照片_l IS NOT NULL";
            ListView_cuthair.DataSource = sds_cuthair.Select(DataSourceSelectArguments.Empty);
            ListView_cuthair.DataBind();


        }



    }
}