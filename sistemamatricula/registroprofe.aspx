<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registroprofe.aspx.cs" Inherits="sistemamatricula.registroprofe" %>

<!DOCTYPE html>

<html>
	<head runat="server">
		<title>Inicio-Universidad de las ciencias tecnologicas</title>
		<meta charset="utf-8">
        <meta name="viewport" content="width=device-width">
        <meta name="description" content="Sistema de matricula de Universidad">
        <meta name="keywords" content="matricula estudiantes">
        <meta name="author" content="NIC">
		<link rel="stylesheet" href="css/main.css" />
	    <style type="text/css">
            .auto-style1 {
                margin-left: 40px;
            }
        </style>
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
                            <h1><a href="index.aspx">Universidad de Ciencias Tecnologicas</a></h1> 	                                           
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
					<p class="auto-style1">
					<label for="nomestud">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Cedula de identificación: </label>&nbsp;&nbsp;&nbsp;       
					<asp:TextBox ID="cedula" runat="server" Width="289px" Height="30px"></asp:TextBox>
                    <br class="auto-style1"> <br class="auto-style1">
                    <label for="cedula">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; Nombre completo:</label>
                     &nbsp;&nbsp;&nbsp; <asp:TextBox ID="Nombre" runat="server" Width="289px" Height="30px"></asp:TextBox>
                    <br class="auto-style1"> <br class="auto-style1">
                    <label for="nomestud">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Teléfono:&nbsp;&nbsp;</label><asp:TextBox ID="telefono" runat="server" Width="289px" Height="30px"></asp:TextBox>
                    <br class="auto-style1"> <br class="auto-style1">
                    <label for="nomestud">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Especialidad:&nbsp;</label>&nbsp;&nbsp;  
                    <asp:TextBox ID="especialidad" runat="server" Width="289px" Height="30px"></asp:TextBox>
                    <br class="auto-style1"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br class="auto-style1">
                    <label for="nomestud">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Contraseña:</label>&nbsp; &nbsp;&nbsp;       
					<asp:TextBox ID="contraseña" runat="server" Width="289px" Height="30px"></asp:TextBox>
                    <br> &nbsp;&nbsp;&nbsp; <br>
                    <label for="nomestud">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nombre carrera:&nbsp;&nbsp;&nbsp; </label>
                    <asp:DropDownList ID="Dropcarrers" runat="server" Width="296px" OnSelectedIndexChanged="Dropcarrers_SelectedIndexChanged">
                    </asp:DropDownList>
                    <br class="auto-style1"> <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Registrar" runat="server" Text="Registrarme" Width="144px" OnClick="Registrar_Click"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Cancelar" runat="server" Text="Cancelar" Width="144px" />
				    </p>
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
										<h2>Links to Important Stuff</h2>
										<div>
											<div class="row">
												<div class="col-3 col-12-small">
													<ul class="link-list last-child">
														<li><a href="#">Neque amet dapibus</a></li>
														<li><a href="#">Sed mattis quis rutrum</a></li>
													</ul>
												</div>
											</div>
										</div>
									</section>
							</div>
							<div class="col-4 col-12-medium imp-medium">
								<!-- Blurb -->
									<section>
										<h2>An Informative Text Blurb</h2>
										<p>
											Duis neque nisi, dapibus sed mattis quis, rutrum accumsan sed. Suspendisse eu
											
										</p>
									</section>
							</div>
						</div>
					</div>
				</section>

			<!-- Copyright -->
				<div id="copyright">
					&copy; Untitled. All rights reserved. | Design: <a href="http://html5up.net">Create to Carlo GC</a>
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