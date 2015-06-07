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
        string Str_Date = string.Format("{0}", DateTime.Now.Year) + "-" + string.Format("{0}", DateTime.Now.Month) + "-" + string.Format("{0}", DateTime.Now.Day);
        string str_datasoure;
        string str_InitialCatalog;
        int int_witchphoto;
        int int_pageId;
        string str_ConnectionString;
        string[] str_schema = { "f庭院照片_", "f內部照片_", "f慶生照片_", "f泡腳照片_", "f復健照片_", "f義剪照片_" };
        string[] str_folder = { "外觀", "內部", "慶生", "泡腳", "復健", "義剪" };
        List<string> list;
        //準備與讀取
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            //str_ConnectionString = @"Data Source=CR4-17\MSSQLSERVER2013;Initial Catalog=dbKSYY;Integrated Security=True";
            //str_ConnectionString = @"Data Source=SHAWN-PC;Integrated Security=SSPI;Initial Catalog=dbKSYY";
          str_ConnectionString = @" Data Source=WIN-R56ALTBAKPC\SQLEXPRESS;Initial Catalog=dbKSYY;Integrated Security=True";
            str_datasoure = @"WIN-R56ALTBAKPC\SQLEXPRESS";
       //          str_datasoure = @"CR4-17\MSSQLSERVER2013";            
            str_InitialCatalog = "dbKSYY";

            int_witchphoto = Convert.ToInt32(Request.QueryString["witchphoto"]);

            if (!IsPostBack)
            {
                m_initial();
            }

            int int_itemmount = ((DataView)Session["data"]).Count;
            int num = 1;
            while (int_itemmount > 0)
            {
                Button btn1 = new Button();
                btn1.CssClass = ((int_pageId + 1) != num) ? "myButton" : "myButton";
                btn1.ID = "btn_page_" + num;
                btn1.Text = "" + num++;
                btn1.Click += new EventHandler(Btn_pageclick);
                PlaceHolder1.Controls.Add(btn1);
                int_itemmount = int_itemmount - 10;
            }


        }
        private void m_initial()
        {
            try
            {
                switch (int_witchphoto)
                {
                    default:
                    case 0:
                        int_witchphoto = 0;
                        ListView_outlook.DataSource = m_getview(int_witchphoto, int_pageId);
                        ListView_outlook.DataBind();
                        break;
                    case 1:
                        ListView_inside.DataSource = m_getview(int_witchphoto, int_pageId);
                        ListView_inside.DataBind();
                        break;
                    case 2:
                        ListView_birthday.DataSource = m_getview(int_witchphoto, int_pageId);
                        ListView_birthday.DataBind();
                        break;
                    case 3:
                        ListView_washfoot.DataSource = m_getview(int_witchphoto, int_pageId);
                        ListView_washfoot.DataBind();
                        break;
                    case 4:
                        ListView_rehab.DataSource = m_getview(int_witchphoto, int_pageId);
                        ListView_rehab.DataBind();
                        break;
                    case 5:
                        ListView_cuthair.DataSource = m_getview(int_witchphoto, int_pageId);
                        ListView_cuthair.DataBind();
                        break;
                }
            }
            catch (Exception eed)
            {
                Session["data"] = null;
                m_initial();
            }
            btn_上傳.Text = "上傳至" + str_folder[int_witchphoto];
        }
        private DataView m_getview(int num, int page)
        {
            DataView d;
            if (Session["data"] == null)
            {
                SqlDataSource sds = new SqlDataSource();
                sds.ConnectionString = str_ConnectionString;
                string str_大欄位 = str_schema[num] + "l";
                string str_小欄位 = str_schema[num] + "s";
                sds.SelectCommand =
               "SELECT fid," + str_小欄位 + "," + str_大欄位 + " from  T康欣_活動剪影 WHERE " + str_小欄位 + " IS NOT NULL order by fid";
                d = (DataView)sds.Select(DataSourceSelectArguments.Empty);
                Session["data"] = d;
            }
            else
                d = (DataView)Session["data"];
            DataTable dt = new DataTable();
            dt = d.Table.Copy();
            DataView d2 = new DataView(dt);
            int int_min = ((page) == 0 )? 0 : (page * 10);
            int int_max = (page * 10 + 10) > d.Count ? d.Count - 1 : page * 10 + 9;
            d2.RowFilter = " fid >= " + d[int_min]["fid"].ToString() + " and fid <= " + d[int_max]["fid"].ToString();
            return d2;
            /*● DIV的排序*/
        }
        protected void Btn_pageclick(object sender, EventArgs e)
        {
            Button btn = ((Button)sender);
            int_pageId = (btn.ID == "Button_firstpage") ? 0 :
                                 (btn.ID == "Button_lastpage") ? (((DataView)Session["data"]).Count / 10) :
            (Convert.ToInt32(btn.Text) - 1);
            m_initial();
        }
        

        //刪除
        public void m_FindControlRecursive(Control root, Type type)
        {
            if (root.GetType() == type)
            {
                CheckBox c = ((CheckBox)root);
                if (c.Checked)
                    list.Add(c.Text);

            }
            foreach (Control c in root.Controls)
                m_FindControlRecursive(c, type);

        }
        protected void btn_delete_click(object sender, EventArgs e)
        {
            if (list != null)
                list.Clear();
            else
                list = new List<string>();

            m_FindControlRecursive(Panel1, typeof(CheckBox));

            string sql = "delete  T康欣_活動剪影  where 1=0 ";
            string str_temp;
            int a = sql.Length;
            string str_小欄位名稱 = str_schema[int_witchphoto] + "s";
            string str_1 = System.Web.Hosting.HostingEnvironment.MapPath("~");
            foreach (string s in list)
            {
                str_temp = str_1 + s.Substring(4, s.Length - 4);
                if (System.IO.File.Exists(str_temp))
                    System.IO.File.Delete(str_temp);
                sql += " or " + str_小欄位名稱 + "='" + s + "' ";

            }
            if (a < sql.Length)
            {
                new c_loadPhoto(str_ConnectionString).delete_pic(sql);
            Session["data"] = null;
            }
            m_initial();

        }
   //上傳
        protected void Btn_上傳_Click(object sender, EventArgs e)
        {
            c_loadPhoto c_loadpic = new c_loadPhoto(str_datasoure, str_InitialCatalog,
       str_schema[int_witchphoto] + "l", str_schema[int_witchphoto] + "s", str_folder[int_witchphoto]);
 
            foreach (HttpPostedFile postedFile in FileUpload1.PostedFiles)
            {
                         //執行圖片上傳與DB資料寫入  
                if ("jpg".Equals(postedFile.FileName.Substring(postedFile.FileName.LastIndexOf(".") + 1).ToLower()) ||
                         "png".Equals(postedFile.FileName.Substring(postedFile.FileName.LastIndexOf(".") + 1).ToLower()) ||
                         "bmp".Equals(postedFile.FileName.Substring(postedFile.FileName.LastIndexOf(".") + 1).ToLower()) ||
                         "gif".Equals(postedFile.FileName.Substring(postedFile.FileName.LastIndexOf(".") + 1).ToLower()))
                {
                    c_loadpic.Loadpic(postedFile);
                    postedFile.SaveAs(Server.MapPath(@"~\pic\康欣_照片\" + str_folder[int_witchphoto] + "\\" + postedFile.FileName));
                }
            }

            Session["data"] = null;
            m_initial();
            Response.Redirect(Request.Url.ToString());
        }


    }

    class c_loadPhoto
    {
        SqlConnectionStringBuilder Scsb;
        string str_datasoure;
        string str_InitialCatalog;
        string str_ConnectionString;
        HttpPostedFile postedFile;
        string str_大欄位名稱;
        string str_大欄位名稱_temp;
        string str_小欄位名稱;
        string str_資料夾;
        public c_loadPhoto(string str_datasoure, string str_InitialCatalog,
            string str_大欄位名稱, string str_小欄位名稱, string str_資料夾)
        {// 建構子  給上傳用
            this.str_datasoure = str_datasoure;
            this.str_InitialCatalog = str_InitialCatalog;
            this.str_大欄位名稱 = str_大欄位名稱;
            this.str_小欄位名稱 = str_小欄位名稱;
            this.str_資料夾 = str_資料夾;
            str_大欄位名稱_temp = str_大欄位名稱;
        }
        public c_loadPhoto(string str_ConnectionString)
        {//建構子 給刪除檔案用
            this.str_ConnectionString = str_ConnectionString;
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
             "Insert into T康欣_活動剪影(" + str_小欄位名稱 + "," + str_大欄位名稱_temp +
             ")  values(@小欄位值,@大欄位值)";
            SqlCommand cmd4 = new SqlCommand(
             sql, con);
            cmd4.Parameters.AddWithValue("@大欄位名稱", str_大欄位名稱);
            cmd4.Parameters.AddWithValue("@判斷欄位", str_檔案名稱);
            cmd4.Parameters.AddWithValue("@小欄位值", @"\..\pic\康欣_照片\" + str_資料夾 + "\\" + str_檔案名稱_temp);
            cmd4.Parameters.AddWithValue("@大欄位值", str_檔案名稱_temp);
            cmd4.ExecuteNonQuery();
            con.Close();
        }


        public void delete_pic(string deletesql)
        {
            SqlDataSource sds = new SqlDataSource();
            sds.ConnectionString = str_ConnectionString;
            sds.DeleteCommand = deletesql;
            sds.Delete();
        }

    }
}