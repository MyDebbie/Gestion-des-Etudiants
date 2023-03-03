using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Gestion_des_Etudiants
{
    public partial class Home : System.Web.UI.Page
    {

        Etudiants etudiants;
        List<Etudiants> etudiant = new List<Etudiants>();
        DateTime dateTime = DateTime.Today;
        protected void Page_Load(object sender, EventArgs e)
        {

            var date = dateTime.ToString("dd/MM/yyyy");
            
            display();

        }

        private void display()
        {
           
        }
        public String consString = "Data Source=LAPTOP-688VBC74;Initial Catalog=dbetudiants;Integrated Security=True";

        protected void btnAdd_Click(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

        }

        protected void btnModify_Click(object sender, EventArgs e)
        {

        }
    }
}