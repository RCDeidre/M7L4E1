using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module7Exercise4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataListPictures.DataSource = RefreshPictureGrid();
                DataListPictures.DataBind();
            }
            
 
        }

        private DataSet RefreshPictureGrid()
        {
            string name = ConfigurationManager.ConnectionStrings["ConnectionStringName"].ConnectionString;
            DAL_Project.DAL dal = new DAL_Project.DAL(name);
            return dal.ExecuteProcedure("spGetPictures");
        }

      
       
        

    }
}