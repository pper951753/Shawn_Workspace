using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testModel01.BackEnd
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*TextBox fContentEditor = (TextBox)table2.FindControl("fContentTextBox");
            Literal fContentJS = (Literal)table2.FindControl("fContentTextBoxJavascript");
            UpdateEditorJS(fContentEditor, fContentJS);*/
        }

        protected void UpdateEditorJS(TextBox TextBoxCtl, Literal LiteralCtl)
        {
            /*LiteralCtl.Text = "<script type='Text/javascript'>";
            LiteralCtl.Text += "CKEDITOR.replace('";
            LiteralCtl.Text += TextBoxCtl.ClientID;
            LiteralCtl.Text += "');</script>";*/
        }

        protected void InsertButton_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
            Response.Redirect("BS_收費標準表.aspx");
        }

        protected void InsertCancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("BS_收費標準表.aspx");
        }
    }
}