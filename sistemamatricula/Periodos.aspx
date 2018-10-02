<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Periodos.aspx.cs" Inherits="sistemamatricula.Periodos" %>

<!DOCTYPE html>

<html>
	<head runat="server">
		<title>Inicio-Universidad de Ciencias Tecnologícas</title>
		<meta charset="utf-8">
        <meta name="viewport" content="width=device-width">
        <meta name="description" content="Sistema de matricula de Universidad">
        <meta name="keywords" content="matricula estudiantes">
        <meta name="author" content="NIC">
		<link rel="stylesheet" href="css/main.css" />
	</head>
	<body class="subpage">
		<form id="form1" runat="server">
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header">
				<div class="container">
						<div class="row">
                            <div class="col-3 col-6-medium col-12-small">
                    <img src="css/images/scholarship (4).png" height="100" width="100"/>                           
                            </div>
							<div class="col-7">
							   <!-- Logo -->
                            <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="index.aspx" >Universidad de Ciencias Tecnologicas</a></h1> 	                                           
								<!-- Nav -->
									<nav id="nav">
										<a href="login.aspx" class="button-large">Iniciar sesion</a>
									</nav>
							</div>
						</div>
					</div>
				</section>

			<!-- Content -->
				<section id="content">
					<div class="container">
						<div class="row">
							<!--<div class="col-3 col-12-medium"> aqui se centran los labels con los txt
							-->

								<!-- Left Sidebar -->
									
							</div>
							 <div class="col-6 col-12-medium imp-medium">

								<!-- Main Content los labels y txt -->
					<br>				
				<div>
					<label for="Periodo">AÑO</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="perido" runat="server" Width="210px" Height="34px">
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2019</asp:ListItem>
                    </asp:DropDownList>
                    <br> <br>
                    <label for="cuatrimestre">Cuatrimestre</label>&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="209px">
                        <asp:ListItem>Cuatrimestre 1</asp:ListItem>
                        <asp:ListItem>Cuatrimestre 2</asp:ListItem>
                        <asp:ListItem>Cuatrimestre 3</asp:ListItem>
                    </asp:DropDownList>
                    <br> <br>
                    <label for="montoMatricula">Monto </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Monto" runat="server" Width="289px" Height="30px"></asp:TextBox>
                    <br> <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="IngresarPeríodo" runat="server" Text="Ingresar período" Width="144px" OnClick="IngresarPeríodo_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</div>

							</div>
							<div class="col-3 col-12-medium">
									
							</div>
						</div>
					</div>
				</section>

			<!-- Footer -->
				<section id="footer">
					<div class="container">
						<div class="row">
							<div class="col-8 col-12-medium">

								<!-- Links -->
									<section>
										<h2></h2>
										<div>
											<div class="row">
												<div class="col-3 col-12-small">
													<ul class="link-list last-child">
														<li><a href="#"></a></li>
														<li><a href="#"></a></li>
													</ul>
												</div>
												<div class="col-3 col-12-small">
													<ul class="link-list last-child">
														<li><a href="#"></a></li>
														<li><a href="#"></a></li>
													</ul>
												</div>
												<div class="col-3 col-12-small">
													<ul class="link-list last-child">
														<li><a href="#"></a></li>
														<li><a href="#"></a></li>		
													</ul>
												</div>
												<div class="col-3 col-12-small">
													<ul class="link-list last-child">
														<li><a href="#"></a></li>
														<li><a href="#"></a></li>
													</ul>
												</div>
											</div>
										</div>
									</section>

							</div>
							<div class="col-4 col-12-medium imp-medium">

								<!-- Blurb -->
									<section>
										<h2></h2>
										<p>
										</p>
									</section>

							</div>
						</div>
					</div>
				</section>

			<!-- Copyright -->
				<div id="copyright">
					&copy; Untitled. All rights reserved.
				</div>

		</div>

		<!-- Scripts -->
			<script src="js/jquery.min.js"></script>
			<script src="js/browser.min.js"></script>
			<script src="js/breakpoints.min.js"></script>
			<script src="js/util.js"></script>
			<script src="js/main.js"></script>
	        </form>
	    </form>
	</body>
</html>

   
