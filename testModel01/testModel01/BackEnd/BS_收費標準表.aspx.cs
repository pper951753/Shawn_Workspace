using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testModel01
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource2.Insert();
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //CKEditorControl2.Text = GridView2.Rows[e.NewEditIndex].Cells[2].Text.ToString();
            
            

        }

        protected void GridView2_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {

        
           
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //row = GridView2.Rows[e.RowIndex];
            //a = Convert.ToInt32( GridView2.Rows[e.RowIndex].ToString());
            //GridView1.Rows[3].Cells[1].Text = CKEditorControl2.Text;

           
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //GridView1.Rows[3].Cells[1].Text = CKEditorControl2.Text;
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //CKEditorControl2.Text = GridView1.Rows[e.NewEditIndex].Cells[1].Text.ToString();
        }

       
    }
}