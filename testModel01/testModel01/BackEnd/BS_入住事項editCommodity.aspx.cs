using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testModel01.BackEnd
{
    public partial class BS_入住事項edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox fContentEditor = (TextBox)FormView1.FindControl("fContentTextBox");
            Literal fContentJS = (Literal)FormView1.FindControl("fContentTextBoxJavascript");
            UpdateEditorJS(fContentEditor, fContentJS);
        }

        protected void UpdateEditorJS(TextBox TextBoxCtl, Literal LiteralCtl)
        {
            LiteralCtl.Text = "<script type='Text/javascript'>";
            LiteralCtl.Text += "CKEDITOR.replace('";
            LiteralCtl.Text += TextBoxCtl.ClientID;
            LiteralCtl.Text += "');</script>";
        }

        protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName == "Cancel")
            {
                Response.Redirect("BS_入住事項.aspx");
            }
        }

        protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
            Response.Redirect("BS_入住事項.aspx");
        }
    }
}