﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="TallerDeReparaciones.Usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />

    <div class="container text-center">
        <h1>Usuarios</h1>
    </div>

    <br />
    <br />

    <div class="container text-center">
        <asp:GridView ID="datagrid" PageSize="10" HorizontalAlign="Center"
            CssClass="mydatagrid" AutoGenerateColumns="true" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
            RomStyle-CssClass="rows" AllowPaging="true" runat="server">
        </asp:GridView>
    </div>

    <br />
    <br />

    <div class="container text-center">
        Codigo de Usuario:
    <asp:DropDownList ID="DropDownList1" class="form-control" runat="server"></asp:DropDownList>
        Nombre del Usuario:
    <asp:TextBox ID="TextBoxusername" class="form-control" runat="server"></asp:TextBox>
        Correo Electronico:
    <asp:TextBox ID="TextBoxemail" class="form-control" runat="server"></asp:TextBox>
        Telefono:
    <asp:TextBox ID="TextBoxphonenumber" class="form-control" runat="server"></asp:TextBox>
    </div>

    <br />
    <br />

    <div class="container text-center">
        <asp:Button ID="Button1" class="btn btn-outline-primary" runat="server" Text="Agregar" OnClick="Button1_Click" />
        <asp:Button ID="Button2" class="btn btn-outline-danger" runat="server" Text="Borrar" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" class="btn btn-outline-primary" Text="Modificar" OnClick="Button3_Click" />
        <asp:Button ID="Bconsulta" runat="server" class="btn btn-outline-primary" Text="Consultar" OnClick="Bconsulta_Click" />
    </div>
</asp:Content>
