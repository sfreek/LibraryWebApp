﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="LabraryProject.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<div class="container">
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150px" img src="images/membericon.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Пользователь</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Имя пользователя</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Имя"></asp:TextBox>
                        </div>
                        <label>Пароль</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Пароль" TextMode="Password"></asp:TextBox>
                        </div>
						 <br />
                        <div class="form-group">
                           <asp:Button class="btn btn-block btn-dark" ID="Button1" runat="server" Text="Войти" OnClick="Button1_Click" />
                        </div>
						 <br />
                        <div class="form-group">
                            <a href="usersignup.aspx"><input class="btn btn-primary btn-block" id="Button2" type="button" value="Новый" /></a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><<На начальную страницу</a><br><br>
         </div>
      </div>
   </div>

</asp:Content>
