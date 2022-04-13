﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="viewbooks.aspx.cs" Inherits="LabraryProject.viewbooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

	 <script type="text/javascript">
            $(document).ready(function () {
                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            });
        </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<div class="col-sm-12">
		<center>
			<h3>
				Список книг
			</h3>
		</center>
		
		<br />
		<div class="row">
			 <div class="card">
               <div class="card-body">
                  
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


</asp:Content>
