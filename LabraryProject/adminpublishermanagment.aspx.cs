using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabraryProject
{
	public partial class adminpublishermanagment : System.Web.UI.Page
	{
		string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

		protected void Page_Load(object sender, EventArgs e)
		{
			GridView1.DataBind();
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			getPublisherById();
		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			if (checkIfPublisherExist())
			{
				Response.Write("<script>alert('Издатель с данным номером существует, попробуйте другой');</script>");
			}
			else
			{
				addNewPublisher();
			}
		}

		protected void Button3_Click(object sender, EventArgs e)
		{
			if (checkIfPublisherExist())
			{
				updatePublisher();
			}
			else
			{
				Response.Write("<script>alert('Вы не можете изменить то, чего нет');</script>");
			}
		}

		protected void Button4_Click(object sender, EventArgs e)
		{
			if (checkIfPublisherExist())
			{
				deletePublisher();
			}
			else
			{
				Response.Write("<script>alert('Вы не можете изменить то, чего нет');</script>");
			}
		}


		void getPublisherById()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}

				SqlCommand cmd = new SqlCommand("SELECT * from publisher_master_tbl where publisher_id='" + TextBox1.Text.Trim() + "';", con);

				SqlDataAdapter da = new SqlDataAdapter(cmd);

				DataTable dt = new DataTable();

				da.Fill(dt);

				if (dt.Rows.Count >= 1)
				{
					TextBox2.Text = dt.Rows[0][1].ToString();
				}
				else
				{

				}

			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");

			}
		}

		void deletePublisher()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}

				SqlCommand cmd = new SqlCommand("DELETE FROM publisher_master_tbl WHERE publisher_id='" + TextBox1.Text.Trim() + "'", con);

				cmd.ExecuteNonQuery();
				con.Close();
				//Response.Write("<script>alert('Данные об авторе удалены');</script>");
				clearForm();
				GridView1.DataBind();
			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
			}
		}

		void updatePublisher()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}

				SqlCommand cmd = new SqlCommand("UPDATE publisher_master_tbl SET publisher_name=@publisher_name WHERE publisher_id='" + TextBox1.Text.Trim() + "'", con);

				cmd.Parameters.AddWithValue("@publisher_name", TextBox2.Text.Trim());


				cmd.ExecuteNonQuery();
				con.Close();
				//Response.Write("<script>alert('Данные изменены');</script>");
				clearForm();
				GridView1.DataBind();
			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
			}
		}

		void addNewPublisher()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}

				SqlCommand cmd = new SqlCommand("INSERT INTO publisher_master_tbl(publisher_id,publisher_name)" +
					"values(@publisher_id,@publisher_name)", con);

				cmd.Parameters.AddWithValue("@publisher_id", TextBox1.Text.Trim());
				cmd.Parameters.AddWithValue("@publisher_name", TextBox2.Text.Trim());


				cmd.ExecuteNonQuery();
				con.Close();
				//Response.Write("<script>alert('Новый автор добавлен');</script>");
				clearForm();
				GridView1.DataBind();
			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
			}
		}

		bool checkIfPublisherExist()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}

				SqlCommand cmd = new SqlCommand("SELECT * from publisher_master_tbl where publisher_id='" + TextBox1.Text.Trim() + "';", con);

				SqlDataAdapter da = new SqlDataAdapter(cmd);

				DataTable dt = new DataTable();

				da.Fill(dt);

				if (dt.Rows.Count >= 1)
				{
					return true;
				}
				else
				{
					return false;
				}

			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
				return false;
			}

		}

		void clearForm()
		{
			TextBox1.Text = "";
			TextBox2.Text = "";
		}

		protected void GridView1_DataBound(object sender, EventArgs e)
		{
			GridView1.HeaderRow.Cells[0].Text = "Номер издателя";
			GridView1.HeaderRow.Cells[1].Text = "Имя издателя";
		}
	}
}