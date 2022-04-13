﻿using System;
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
	public partial class adminmembermanagment : System.Web.UI.Page
	{
		string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

		protected void Page_Load(object sender, EventArgs e)
		{
			GridView1.DataBind();
		}
		// переход
		protected void LinkButton4_Click(object sender, EventArgs e)
		{
			getMemberByID();// вызываем фунцию
		}
		// подтвердить
		protected void LinkButton1_Click(object sender, EventArgs e)
		{
			updateMemberStatusID("Активирован");
		}
		// остановить
		protected void LinkButton2_Click(object sender, EventArgs e)
		{
			updateMemberStatusID("Приостановлен");
		}
		// удалить
		protected void LinkButton3_Click(object sender, EventArgs e)
		{
			updateMemberStatusID("Деактивирован");
		}

		void getMemberByID()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}

				SqlCommand cmd = new SqlCommand("select * from member_master_tbl where member_id='"
					+ TextBox1.Text.Trim() +"'", con);

				SqlDataReader dr = cmd.ExecuteReader();

				if (dr.HasRows)
				{
					while (dr.Read())
					{
						TextBox2.Text = dr.GetValue(0).ToString();
						TextBox7.Text = dr.GetValue(10).ToString();
						TextBox8.Text = dr.GetValue(1).ToString();
						TextBox3.Text = dr.GetValue(2).ToString();
						TextBox4.Text = dr.GetValue(3).ToString();
						TextBox9.Text = dr.GetValue(4).ToString();
						TextBox10.Text = dr.GetValue(5).ToString();
						TextBox11.Text = dr.GetValue(6).ToString();
						TextBox6.Text = dr.GetValue(7).ToString();
					}
					
				}
				else
				{
					Response.Write("<script>alert('Проверьте правильность данных');</script>");
				}
			}

			catch (Exception ex)
			{

			}
		}

		void updateMemberStatusID(string status)
		{
			if (checkIfMemberExist())
			{
				try
				{
					SqlConnection con = new SqlConnection(strcon);
					if (con.State == ConnectionState.Closed)
					{
						con.Open();
					}

					SqlCommand cmd = new SqlCommand("UPDATE member_master_tbl SET account_status='" +
						status + "' WHERE member_id='" + TextBox1.Text.Trim() + "'", con);

					cmd.ExecuteNonQuery();
					con.Close();
					GridView1.DataBind();

				}

				catch (Exception ex)
				{

				}
				
			}
			else
			{
				Response.Write("<script>alert('Проверьте правильность ID');</script>");
			}

		}

		void deleteMemberById()
		{
			if (checkIfMemberExist())
			{
				try
				{
					SqlConnection con = new SqlConnection(strcon);
					if (con.State == ConnectionState.Closed)
					{
						con.Open();
					}

					SqlCommand cmd = new SqlCommand("DELETE FROM member_master_tbl WHERE member_id='" + TextBox1.Text.Trim() + "'", con);

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
			else
			{
				Response.Write("<script>alert('Проверьте правильность ID');</script>");
			}
			
		}
		void clearForm()
		{
			TextBox2.Text = "";
			TextBox7.Text = "";
			TextBox8.Text = "";
			TextBox3.Text = ""; 
			TextBox4.Text = "";
			TextBox9.Text = "";
			TextBox10.Text = ""; 
			TextBox11.Text = "";
			TextBox6.Text = "";
		}

		bool checkIfMemberExist()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}

				SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl where member_id='" + TextBox1.Text.Trim() + "';", con);

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

		protected void Button2_Click(object sender, EventArgs e)
		{
			deleteMemberById();
		}
	}
	
}