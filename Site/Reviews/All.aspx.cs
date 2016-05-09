using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reviews_All : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
        {
            var allReviews = from Review in myEntities.Reviews
                             where Review.Authorized == true
                             orderby Review.CreateDateTime descending
                             select Review;
            GridView1.DataSource = allReviews.ToList();
            GridView1.DataBind();
        }
    }
}