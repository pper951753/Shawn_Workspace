using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testModel01.BackEnd
{
    public partial class BS_NewsContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
        {
            DataList1.EditItemIndex = e.Item.ItemIndex;
            DataList1.DataBind();
            Response.Redirect("BS_NewsList.aspx");
        }

        protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            String id = DataList1.DataKeys[e.Item.ItemIndex].ToString();
            String date = ((TextBox)e.Item.FindControl("txtDate")).Text;
            String subject = ((TextBox)e.Item.FindControl("txtSubject")).Text;
            String content = ((TextBox)e.Item.FindControl("txtContent")).Text;

            SqlDataSource2.UpdateParameters["fID"].DefaultValue = id;
            SqlDataSource2.UpdateParameters["fDate"].DefaultValue = date;
            SqlDataSource2.UpdateParameters["fSubject"].DefaultValue = subject;
            SqlDataSource2.UpdateParameters["fContent"].DefaultValue = content;
            SqlDataSource2.Update();

            DataList1.EditItemIndex = -1;
            DataList1.DataBind();
            Response.Redirect("BS_NewsList.aspx");
        }

        protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
        {
            DataList1.EditItemIndex = -1;
            DataList1.DataBind();
            Response.Redirect("BS_NewsList.aspx");
        }
    }
}