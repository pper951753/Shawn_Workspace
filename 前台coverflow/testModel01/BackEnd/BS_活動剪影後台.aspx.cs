using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testModel01
{
    public partial class WebForm10 : System.Web.UI.Page
    {

        SqlConnectionStringBuilder Scsb;
        string Str_Date = string.Format("{0}", DateTime.Now.Year) + "-" + string.Format("{0}", DateTime.Now.Month) + "-" + string.Format("{0}", DateTime.Now.Day);
        string str_datasoure { get; set; }
        string str_InitialCatalog { get; set; }
        
        string pageId;
        string str_witchpage = "";
        string str_ConnectionString = "";
        string[] str_schema = {"f庭院照片_", "f內部照片_","f慶生照片_","f泡腳照片_",
                            "f復健照片_","f義剪照片_"};


        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    
            str_ConnectionString = @"Data Source=CR4-17\MSSQLSERVER2013;Initial Catalog=dbKSYY;Integrated Security=True";
           // str_ConnectionString = @"Data Source=SHAWN-PC;Integrated Security=SSPI;Initial Catalog=dbKSYY";
      //      str_ConnectionString = @"  Data Source=WIN-R56ALTBAKPC\SQLEXPRESS;Initial Catalog=dbKSYY;Integrated Security=True";
           
            m_initial();

             if (Session["test"] != null)
                 Label1.Text = (string)Session["test"] +(int)Session["num"];

             if (Session["num"] != null)
             Label1.Text += (int)Session["num"];
        }



        protected void Button4_Click(object sender, EventArgs e)
        {
            string sql = "delete  T康欣_活動剪影  where 1=0";
            int a = sql.Length;
            string str_小欄位名稱 = str_schema[Convert.ToInt32(pageId)] + "s";
            int b = 0;
            foreach (Control c in Panel_outlook.Controls)
            {
                Session["num"] = b++;
                if (c.GetType() == typeof(CheckBox))
                {
                    CheckBox t = (CheckBox)c;

                    if (Session["test"] != null)
                    {
                        Session["test"] = (string)Session["test"] +
                            System.IO.Directory.GetCurrentDirectory()+t.Text;
                    }
                    else
                        Session["test"] = t.Text;

                    /* if (System.IO.File.Exists(t.Text))
                         System.IO.File.Delete(t.Text);
                     sql+=(" or " + str_小欄位名稱 + " = " + t.Text);*/
                }
            }
        }


        private void m_initial()
        {
            SqlDataSource sds = new SqlDataSource();
             sds.ConnectionString = str_ConnectionString;
             switch (pageId)
             { 
                 case "0":
                 default:
            sds.SelectCommand = "SELECT fid,f庭院照片_s from  T康欣_活動剪影 WHERE f庭院照片_s IS NOT NULL";
            ListView_outlook.DataSource = sds.Select(DataSourceSelectArguments.Empty);
            ListView_outlook.DataBind();
            break;

                 case "1":

            break;

             
             }

        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            string sql = "delete  T康欣_活動剪影  where 1=0";
            int a = sql.Length;
            string str_小欄位名稱 = str_schema[Convert.ToInt32(pageId)] + "s";

            foreach (Control c in Panel_outlook.Controls)
            {
                if (c.GetType() == typeof(CheckBox))
                {
                    CheckBox t = (CheckBox)c;

                    if (
                    Session["test"] != null)
                    {
                        Session["test"] = (string)Session["test"] +
                            System.IO.Directory.GetCurrentDirectory();
                    }
                    else
                        Session["test"] = t.Text;

                    /* if (System.IO.File.Exists(t.Text))
                         System.IO.File.Delete(t.Text);
                     sql+=(" or " + str_小欄位名稱 + " = " + t.Text);*/
                }
            }
        }



        protected void Btn_上傳_外觀_Click(object sender, EventArgs e)
        {
            //建立一個新的連線類別

            switch (str_witchpage)
            {
                case "外觀":
                default:
                    c_loadPhoto c_loadpic = new c_loadPhoto(str_datasoure, str_InitialCatalog,
               "f庭院照片_l", "f庭院照片_s", "外觀");

                    foreach (HttpPostedFile postedFile in FileUpload1.PostedFiles)
                    {
                        //執行圖片上傳與DB資料寫入  

                        if (".jpg".Equals(postedFile.FileName.Substring(postedFile.FileName.LastIndexOf(".") + 1).ToLower()) ||
                                 ".png".Equals(postedFile.FileName.Substring(postedFile.FileName.LastIndexOf(".") + 1).ToLower()) ||
                                 ".bmp".Equals(postedFile.FileName.Substring(postedFile.FileName.LastIndexOf(".") + 1).ToLower()) ||
                                 ".gif".Equals(postedFile.FileName.Substring(postedFile.FileName.LastIndexOf(".") + 1).ToLower()))
                        {
                            c_loadpic.Loadpic(postedFile);
                            postedFile.SaveAs(Server.MapPath(@"\..\pic\康欣_照片\外觀\" + postedFile.FileName));
                        }
                    }



                    break;

                case "內部":
                    /*
                    //建立一個新的連線類別
                    c_loadPhoto c_loadpic = new c_loadPhoto(str_datasoure, str_InitialCatalog,
                      "f內部照片_l", "f內部照片_s", "內部");
                    foreach (HttpPostedFile postedFile in FileUpload1.PostedFiles)
                    {
                        //執行圖片上傳與DB資料寫入  
                        c_loadpic.Loadpic(postedFile);
                        //postedFile.SaveAs(Server.MapPath(@"pic\康欣_照片\內部\" + postedFile.FileName));
                    }  //建立一個新的連線類別
            c_loadPhoto c_loadpic = new c_loadPhoto(str_datasoure, str_InitialCatalog,
              "f慶生照片_l", "f慶生照片_s", "慶生");
            foreach (HttpPostedFile postedFile in FileUpload1.PostedFiles)
            {
                //執行圖片上傳與DB資料寫入  
                c_loadpic.Loadpic(postedFile);
                //postedFile.SaveAs(Server.MapPath(@"pic\康欣_照片\慶生\" + postedFile.FileName));
            }
            //建立一個新的連線類別
            c_loadPhoto c_loadpic = new c_loadPhoto(str_datasoure, str_InitialCatalog,
              "f泡腳照片_l", "f泡腳照片_s", "泡腳");
            foreach (HttpPostedFile postedFile in FileUpload1.PostedFiles)
            {
                //執行圖片上傳與DB資料寫入  
                c_loadpic.Loadpic(postedFile);
                //postedFile.SaveAs(Server.MapPath(@"pic\康欣_照片\泡腳\" + postedFile.FileName));
            }
            //建立一個新的連線類別
            c_loadPhoto c_loadpic = new c_loadPhoto(str_datasoure, str_InitialCatalog,
              "f復健照片_l", "f復健照片_s", "復健");
            foreach (HttpPostedFile postedFile in FileUpload1.PostedFiles)
            {
                //執行圖片上傳與DB資料寫入  
                c_loadpic.Loadpic(postedFile);
                //postedFile.SaveAs(Server.MapPath(@"pic\康欣_照片\復健\" + postedFile.FileName));
            }
            //建立一個新的連線類別
            c_loadPhoto c_loadpic = new c_loadPhoto(str_datasoure, str_InitialCatalog,
              "f義剪照片_l", "f義剪照片_s", "義剪");
            foreach (HttpPostedFile postedFile in FileUpload1.PostedFiles)
            {
                //執行圖片上傳與DB資料寫入  
                c_loadpic.Loadpic(postedFile);
                //postedFile.SaveAs(Server.MapPath(@"pic\康欣_照片\復健\" + postedFile.FileName));
            }
                    */
                    break;

            }




        }


        
        
   

    }


    class c_loadPhoto
    {
        SqlConnectionStringBuilder Scsb;
        string Str_Date = string.Format("{0}", DateTime.Now.Year) + "-" + string.Format("{0}", DateTime.Now.Month) + "-" + string.Format("{0}", DateTime.Now.Day);
        string str_datasoure { get; set; }
        string str_InitialCatalog { get; set; }
        HttpPostedFile postedFile { get; set; }
        string str_大欄位名稱 { get; set; }
        string str_大欄位名稱_temp { get; set; }
        string str_小欄位名稱 { get; set; }
        string  str_資料夾{get;set;}
        public c_loadPhoto(string str_datasoure, string str_InitialCatalog,
            string str_大欄位名稱, string str_小欄位名稱, string str_資料夾)
        {
            this.str_datasoure = str_datasoure;
            this.str_InitialCatalog = str_InitialCatalog;
            this.str_大欄位名稱 = str_大欄位名稱;
            this.str_小欄位名稱 = str_小欄位名稱;
            this.str_資料夾 = str_資料夾;
            str_大欄位名稱_temp = str_大欄位名稱;
        }

        public void Loadpic(HttpPostedFile postedFile)
        {
            this.postedFile = postedFile;
            string str_檔案名稱;
            Scsb = new SqlConnectionStringBuilder();
            Scsb.DataSource = str_datasoure;
            Scsb.InitialCatalog = str_InitialCatalog;
            Scsb.IntegratedSecurity = true;
            SqlConnection con = new SqlConnection(Scsb.ToString());

            str_檔案名稱 = postedFile.FileName;
            string str_檔案名稱_temp = str_檔案名稱;
            con.Open();

            string sql =
                 "if not exists(Select * from T康欣_活動剪影 where @大欄位名稱=@判斷欄位)" +
             "Insert into T康欣_活動剪影("+str_小欄位名稱+","+str_大欄位名稱_temp+
             ")  values(@小欄位值,@大欄位值)";
            SqlCommand cmd4 = new SqlCommand(
             sql, con);
            cmd4.Parameters.AddWithValue("@大欄位名稱", str_大欄位名稱);
            cmd4.Parameters.AddWithValue("@判斷欄位", str_檔案名稱);
            cmd4.Parameters.AddWithValue("@小欄位值", @"~\pic\康欣_照片\"+str_資料夾+"\\" + str_檔案名稱_temp);
            cmd4.Parameters.AddWithValue("@大欄位值", str_檔案名稱_temp);

            cmd4.ExecuteNonQuery();
            con.Close();
        }


        public void delete_pic(string deletesql)
        {

            string str_檔案名稱;
            Scsb = new SqlConnectionStringBuilder();
            Scsb.DataSource = str_datasoure;
            Scsb.InitialCatalog = str_InitialCatalog;
            Scsb.IntegratedSecurity = true;
            SqlConnection con = new SqlConnection(Scsb.ToString());

            string str_deletepath = deletesql;
            con.Open();

            SqlCommand cmd4 = new SqlCommand(
             deletesql, con);

            cmd4.ExecuteNonQuery();

            con.Close();
        }

    }
}