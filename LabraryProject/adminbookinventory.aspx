<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="LabraryProject.adminbookinventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<script type="text/javascript">
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
       });

       function readURL(input) {
           if (input.files && input.files[0]) {
               var reader = new FileReader();

               reader.onload = function (e) {
                   $('#imgview').attr('src', e.target.result);
               };

               reader.readAsDataURL(input.files[0]);
           }
       }

   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	 <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Данные Книги</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img id="imgview" Width="100px" Height="100px" src="book_img/bookdefault.png" />
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
                        <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-3">
                        <label>№ Книги</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID книги"></asp:TextBox>
							   <asp:Button class="form-control btn btn-primary" ID="Button4" runat="server" Text="Поиск" OnClick="Button4_Click" />
                           </div>
                        </div>
                     </div>
                     <div class="col-md-9">
                        <label>Название Книги</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Название Книги"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Язык</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Русский" Value="Русский" />
                              <asp:ListItem Text="Украинский" Value="Украинский" />
                              <asp:ListItem Text="Китайский" Value="Китайский" />
                              <asp:ListItem Text="Корейский" Value="Корейский" />
                              <asp:ListItem Text="Немецкий" Value="Немецкий" />
                           </asp:DropDownList>
                        </div>
                        <label>Название Издателя</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                              <asp:ListItem Text="Publisher 1" Value="Publisher 1" />
                              <asp:ListItem Text="Publisher 2" Value="Publisher 2" />
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Имя Автора</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                              <asp:ListItem Text="A1" Value="a1" />
                              <asp:ListItem Text="a2" Value="a2" />
                           </asp:DropDownList>
                        </div>
                        <label>Дата Издания</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Дата" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Жанр</label>
                        <div class="form-group">
                           <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                              <asp:ListItem Text="Экшн" Value="Экшн" />
                              <asp:ListItem Text="Приключение" Value="Приключение" />
                              <asp:ListItem Text="Мотивация" Value="Мотивация" />                       
                              <asp:ListItem Text="Преступление" Value="Преступление" />
                              <asp:ListItem Text="Драма" Value="Драма" />
                              <asp:ListItem Text="Фэнтези" Value="Фэнтези" />
                              <asp:ListItem Text="Хоррор" Value="Хоррор" />                            
                              <asp:ListItem Text="Роман" Value="Роман" />
                              <asp:ListItem Text="Наука" Value="Наука" />
                              <asp:ListItem Text="Триллер" Value="Триллер" />        
                              <asp:ListItem Text="Путешествие" Value="Путешествие" />
                           </asp:ListBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Тираж</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Edition"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Цена</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Цена" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Страниц</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Страниц" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>На складе</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Наличие" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>В наличии</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Доступно" TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>На руках</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Выдано" TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12">
                        <label>Описание книги</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Описание" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
				   <br>
                  <div class="row">
                     <div class="col-4">
                        <asp:Button ID="Button1" class="btn btn-block btn-success" runat="server" Text="Добавить" OnClick="Button1_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button3" class="btn btn-block btn-warning" runat="server" Text="Обновить" OnClick="Button3_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button2" class="btn btn-block btn-danger" runat="server" Text="Удалить" OnClick="Button2_Click" />
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Начальная страница</a><br>
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Список доступных книг</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
					  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:libraryDBConnectionString %>"
						  SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False"
							DataKeyNames="book_id" DataSourceID="SqlDataSource1">
							<Columns>
								<asp:BoundField DataField="book_id" HeaderText="№" ReadOnly="True" SortExpression="book_id">
								</asp:BoundField>
								
								<asp:TemplateField>
									<ItemTemplate>
										<div class="container-fluid">
											<div class="row">
												<div class="col-lg-10">
													<div class="row">
														<div class="col-12">
															Название книги -
															<asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True"></asp:Label>
													    </div>
													</div>

													<div class="row">
														<div class="col-12">

													    	Автор -
															<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True" Text='<%# Eval("author_name") %>'></asp:Label>
															&nbsp;&amp; 
															Жанр -
															<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True" Text='<%# Eval("genre") %>'></asp:Label>
															&nbsp;&amp; 
															Язык -
															<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True" Text='<%# Eval("language") %>'></asp:Label>

													    </div>
													</div>

													<div class="row">
														<div class="col-12">

													    	Издательство -
															<asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
															&nbsp;&amp; 
															Дата издания -
															<asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True" Text='<%# Eval("publish_date") %>'></asp:Label>
															&nbsp;&amp;
															Страниц -
															<asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
															&nbsp;&amp; 
															Тираж -
															<asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True" Text='<%# Eval("edition") %>'></asp:Label>

													    </div>
													</div>

													<div class="row">
														<div class="col-12">

													    	Стоимость -
															<asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True" Text='<%# Eval("book_cost") %>'></asp:Label>
															&nbsp;&amp;
															На складе -
															<asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
															&nbsp;&amp; 
															В наличии -
															<asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True" Text='<%# Eval("current_stock") %>'></asp:Label>

													    </div>
													</div>

													<div class="row">
														<div class="col-12">

													    	Описание -
															<asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True" Text='<%# Eval("book_description") %>'></asp:Label>

													    </div>
													</div>

										        </div>
											<div class="col-lg-2">
													<asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
											   </div>
											</div>
										</div>
									</ItemTemplate>
								</asp:TemplateField>
								
							</Columns>
						 </asp:GridView>	
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
