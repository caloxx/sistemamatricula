<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroCarreras.aspx.cs" Inherits="sistemamatricula.RegistroCarreras" %>

<!DOCTYPE html>

<html>
	<head runat="server">
		<title>Carreras-Universidad de Ciencias Tecnologícas</title>
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
					<label for="NombreCarrera">Nombre de la carrera:</label>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;       
					<asp:TextBox ID="txtNombreCarrera" runat="server" Width="289px" Height="30px" OnTextChanged="txtNombreCarrera_TextChanged"></asp:TextBox>
                    <br> <br>
                    <label for="CodigoCarrera">Código de carrera:</label>&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="txtCodCarrera" runat="server" Width="289px" Height="30px"></asp:TextBox>
                    <br> <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="RegistarNuevaCarrera" runat="server" Text="Registrar carrera" Width="144px" OnClick="RegistarNuevaCarrera_Click" />
                    
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
										<h2>
                               	<asp:Image ImageUrl="css/images/LogoCarreras.jpg" runat="server"  Height="250px" Width="1197px" margin="0 auto%" float="right" overflow="scroll"/><h2 style="width: 813px">Ten el coraje para hacer lo que te dice tu corazón y tu intuición.  ~Steve Jobs</h2>
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

   
