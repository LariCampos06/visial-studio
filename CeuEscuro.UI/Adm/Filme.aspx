<%@ Page Title="" Language="C#" MasterPageFile="~/Adm/ManagerUser.Master" AutoEventWireup="true" CodeBehind="Filme.aspx.cs" Inherits="CeuEscuro.UI.Adm.Filme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="lblSession" runat="server" Text=""></asp:Label>

    <ul>
        <li>
            <asp:TextBox ID="txtId" placeholder="Id:" runat="server"></asp:TextBox>
        </li>

        <li>
            <asp:TextBox ID="txtTitulo" placeholder="Title:" runat="server" MaxLength="150"></asp:TextBox>
            <asp:Label ID="lblTitulo" runat="server" Text=""></asp:Label>
        </li>
        

        <li>
            <asp:TextBox ID="txtProdutora" placeholder="Producer:" runat="server" MaxLength="150"></asp:TextBox>
            <asp:Label ID="lblProdutora" runat="server" Text=""></asp:Label>
        </li>

        <%--<li>
            <asp:TextBox ID="txtSenha" placeholder="Password:" runat="server" MaxLength="6"></asp:TextBox>
            <asp:Label ID="lblSenha" runat="server" Text=""></asp:Label>
        </li>--%>

        <%--<li>
            <asp:TextBox ID="txtDataNascUsuario" onkeypress="$(this).mask('00/00/0000')" placeholder="Birth Date:" runat="server"></asp:TextBox>
            <asp:Label ID="lblDataNascUsuario" runat="server" Text=""></asp:Label>
        </li>--%>

        <%--Listinha dos tipos de classificações--%>
        <li><span>Select the classification:</span></li>
        <li>
            <asp:DropDownList ID="ddlClassif" Width="160px" Height="27px" AutoPostBack="false" DataValueField="Id" DataTextField="DescricaoClassificacao" runat="server"></asp:DropDownList>
        </li>
        <%------------------%>

        <%--Listinha dos tipos de genêros--%>
        <li><span>Select the type of movie:</span></li>
        <li>
            <asp:DropDownList ID="ddlGenero" Width="160px" Height="27px" AutoPostBack="false" DataValueField="Id" DataTextField="Descricao" runat="server"></asp:DropDownList>

        </li>

        <li>
            <asp:FileUpload ID="FileUpload" runat="server"/>
            <asp:Label ID="lblFileUp" runat="server" Text=""></asp:Label>
        </li>

        <li>
            <asp:Button ID="btnRecord" runat="server" Text="Record" Onclick="btnRecord_Click"/>
            <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClientClick="if(!confirm('Deseja excluir este usuário?')) return false" OnClick ="btnDelete_Click" />


             </li>     



        <%--SearchByName--%>
        <li>
            <asp:TextBox ID="txtSearch" runat="server" placeholder="Search by Name"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click"/>
            <asp:Label ID="lblSearch" runat="server" Text=""></asp:Label>
        </li>
        <li>  
            <asp:TextBox ID="txtGenero" runat="server" placeholder="Search By Genere"></asp:TextBox> 
            <asp:Button ID="Button1" runat="server" Text="Filtrar" OnClick="Button1_Click"/>
            <asp:Button ID="Button2" runat="server" Text="Limpar filtro" OnClick="btnSearch_Click"/>



        </li>
    </ul>

    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>


    <asp:GridView ID="gv2" AutoGenerateColumns="false" runat="server" OnSelectedIndexChanged="gv2_SelectedIndexChanged">

        <Columns>
            <asp:CommandField ShowSelectButton="true" ButtonType="Button" HeaderText="Opções"/>
            <asp:BoundField DataField="Id" HeaderText="Id" />
            <asp:BoundField DataField="Titulo" HeaderText="Title" />
            <asp:BoundField DataField="Produtora" HeaderText="Produtora" />
            <asp:BoundField DataField="Classificacao_Id" HeaderText="Classification" />
            <asp:BoundField DataField="Genero_Id" HeaderText="Type" />
            <asp:ImageField DataImageUrlField="UrlImg" HeaderText="Imagem" ControlStyle-Width="100" />
        </Columns>

    </asp:GridView>

</asp:Content>
