using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module7Exercise4
{
    public partial class PictureInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string PictureID = Request.QueryString["pictureID"].ToString();

                if (!IsPostBack)
                {
                    gvPicture.DataSource = RefreshPictureGrid(PictureID);
                    gvPicture.DataBind();
                }
            }
            catch
            {
                Response.Redirect("Home.aspx");
            }
        }


        private object RefreshPictureGrid(string PictureID)
        {
            string name = ConfigurationManager.ConnectionStrings["ConnectionStringName"].ConnectionString;
            DAL_Project.DAL dal = new DAL_Project.DAL(name);
            dal.AddParam("PictureID", PictureID);
            return dal.ExecuteProcedure("spGetPictures");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}