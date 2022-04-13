<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="LabraryProject.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="container">
      <div class="row">
         <div class="сol-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="images/membericon.png" />
                        </center>
                     </div>
                  </div>
				</div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Ваш профиль</h4>                         
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Инициалы</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Ф.И.О"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Дата рождения</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Телефон</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Номер" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Почта</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Почта" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Область</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Область" Value="select" />
                              <asp:ListItem Text="Челябинская" Value="Chelyabinskay" />
                              <asp:ListItem Text="Архангельская" Value="Arhangelskaya" />
                              <asp:ListItem Text="Московская" Value="Moscowskaya" />
                              <asp:ListItem Text="Астраханская" Value="Astrahanskaya" />    
							  <asp:ListItem Text="Брянская" Value="Bryanskaya" />  
							  <asp:ListItem Text="Ивановская" Value="Ivanovskaya" />  
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Город</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="Город"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Индекс</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Код" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Адрес проживания</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Адрес" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info"></span>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Имя пользователя</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Логин"></asp:TextBox>
                        </div>
                     </div>
                   
                     <div class="col-md-6">
                        <label>Пароль</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Пароль" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>
				  <br />
                  <div class="row">
                     <div class="col">
                        <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-primary btn-block" ID="Button1" runat="server" Text="Зарегистрироваться" OnClick="Button1_Click" />
                           </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Начальная страница</a><br><br>
         </div>   
      </div>
</asp:Content>
