using CeuEscuro.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CeuEscuro.UI.User
{
    public partial class ConsultaFilme : System.Web.UI.Page
    {
        FilmeBLL filmeBLL = new FilmeBLL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void LoadGV2()

         {
                gv2.DataSource = filmeBLL.GetMovies();
                gv2.DataBind();
         }
    }
}