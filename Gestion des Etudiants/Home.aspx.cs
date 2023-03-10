using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Gestion_des_Etudiants
{
    public partial class Home : System.Web.UI.Page
    {

        Etudiants etudiants;
        List<Etudiants> etudiant = new List<Etudiants>();
       
        protected void Page_Load(object sender, EventArgs e)
        {

           // var date = dateTime.ToString("dd/MM/yyyy");
            
            display();

        }

        private void display()
        {
           
        }
       
        protected void btnAdd_Click(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

        }

        protected void btnModify_Click(object sender, EventArgs e)
        {

        }

        protected void gvStudent_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=LAPTOP-688VBC74; Initial Catalog=dbetudiants;Integrated Security=True";
            SqlConnection connection = new SqlConnection(connectionString);

            connection.Open();

            SqlCommand cmd = connection.CreateCommand();

            cmd.CommandText = "Insert or Update into Etudiants(Name, LastName, Address, Birthday, Email, Phone) Values(@Name, @LastName, @Address, @Birthday, @Email, @Phone)";
            cmd.Parameters.AddWithValue("@Name", txtfirstName.Text);
            cmd.Parameters.AddWithValue("@LastName", txtlastName.Text);
            cmd.Parameters.AddWithValue("@Address", txtAdresse.Text);
            cmd.Parameters.AddWithValue("@Birthday", txtBirthday.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);

            cmd.ExecuteNonQuery();
            connection.Close();

            //string insertData = "Insert into Etudiants(Name, LastName, Address, Birthday,Email,Phone) Values('" + txtfirstName + "','" + txtlastName + "','" + txtAdresse + "','" + txtBirthday + "','" + txtEmail + "','" + txtPhone + "')";
            //connection.Open();
            //SqlCommand cmd = new SqlCommand(insertData, connection);
            //cmd.ExecuteNonQuery();
            //connection.Close();
        }
    }
}