<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Week2_WebApp.WebForm1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1" runat="server">
    <div>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="99px" Width="100px" ImageUrl="~/Assets/AirbusLogo.jpg" OnClick="ImageButton1_Click"/>
        <br />
        Haul Length&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Specific Route&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Manufacturer&nbsp;&nbsp;&nbsp;&nbsp; 
        Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Subtype&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registratie<br />
    </div>
    <div>
        &nbsp;<asp:DropDownList ID="TypeVlucht" runat="server">
            <asp:ListItem>Long Haul</asp:ListItem>
            <asp:ListItem>Mid Haul</asp:ListItem>
            <asp:ListItem>Short Haul</asp:ListItem>
        </asp:DropDownList>

        <asp:DropDownList ID="SpecificRoute" runat="server">
            <asp:ListItem>LH KJFK <> EHAM</asp:ListItem>
            <asp:ListItem>LH KDEN <> EHBK</asp:ListItem>
            <asp:ListItem>MH EHAM <> LSZH</asp:ListItem>
            <asp:ListItem>MH EHBK <> LGAV</asp:ListItem>
            <asp:ListItem>SH EHGR <> EBLG</asp:ListItem>
            <asp:ListItem>SH EHEH <> EDDF</asp:ListItem>
        </asp:DropDownList>

        <asp:DropDownList ID="PlaneBrand" runat="server">
            <asp:ListItem>Airbus</asp:ListItem>
            <asp:ListItem>Boeing</asp:ListItem>
            <asp:ListItem>Bombardier</asp:ListItem>
            <asp:ListItem>Embraer</asp:ListItem>
        </asp:DropDownList>

        <asp:DropDownList ID="PlaneType" runat="server">
            <asp:ListItem>A318</asp:ListItem>
            <asp:ListItem>A319</asp:ListItem>
            <asp:ListItem>A320</asp:ListItem>
            <asp:ListItem>A321</asp:ListItem>
            <asp:ListItem>A330</asp:ListItem>
            <asp:ListItem>A340</asp:ListItem>
            <asp:ListItem>A350</asp:ListItem>
            <asp:ListItem>A380</asp:ListItem>
            <asp:ListItem>B737</asp:ListItem>
            <asp:ListItem>B747</asp:ListItem>
            <asp:ListItem>B757</asp:ListItem>
            <asp:ListItem>B767</asp:ListItem>
            <asp:ListItem>B777</asp:ListItem>
            <asp:ListItem>B787</asp:ListItem>
            <asp:ListItem>EJET-E2</asp:ListItem>
        </asp:DropDownList>

        <asp:DropDownList ID="PlaneSubtype" runat="server">
            <asp:ListItem>n/a</asp:ListItem>
            <asp:ListItem>CJ</asp:ListItem>
            <asp:ListItem>LR</asp:ListItem>
            <asp:ListItem>MPA</asp:ListItem>
            <asp:ListItem>neo</asp:ListItem>
            <asp:ListItem>XWB</asp:ListItem>
            <asp:ListItem>100</asp:ListItem>
            <asp:ListItem>200</asp:ListItem>
            <asp:ListItem>200F</asp:ListItem>
            <asp:ListItem>300</asp:ListItem>
            <asp:ListItem>400</asp:ListItem>
            <asp:ListItem>500</asp:ListItem>
            <asp:ListItem>600</asp:ListItem>
            <asp:ListItem>700</asp:ListItem>
            <asp:ListItem>800</asp:ListItem>
            <asp:ListItem>900</asp:ListItem>
            <asp:ListItem>900R</asp:ListItem>
            <asp:ListItem>900F</asp:ListItem>
            <asp:ListItem>1000</asp:ListItem>
            <asp:ListItem>E175-E2</asp:ListItem>
            <asp:ListItem>E190-E2</asp:ListItem>
            <asp:ListItem>E195-E2</asp:ListItem>
        </asp:DropDownList>

        <asp:DropDownList ID="PlaneRegistration" runat="server" DataSourceID="SqlDataSource1" DataTextField="Registratienummer" DataValueField="Registratienummer">

        </asp:DropDownList>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Registratienummer" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="822px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Registratienummer" HeaderText="Registratienummer" ReadOnly="True" SortExpression="Registratienummer" />
                <asp:BoundField DataField="Toesteltype" HeaderText="Toesteltype" SortExpression="Toesteltype" />
                <asp:BoundField DataField="LaatsteOnderhoudsbeurtDatum" HeaderText="LaatsteOnderhoudsbeurtDatum" SortExpression="LaatsteOnderhoudsbeurtDatum" />
                <asp:BoundField DataField="TypeOnderhoud" HeaderText="TypeOnderhoud" SortExpression="TypeOnderhoud" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WebCoreDBConnectionString %>" DeleteCommand="DELETE FROM [Onderhoudstabel] WHERE [Registratienummer] = @Registratienummer" InsertCommand="INSERT INTO [Onderhoudstabel] ([Registratienummer], [Toesteltype], [LaatsteOnderhoudsbeurtDatum], [TypeOnderhoud]) VALUES (@Registratienummer, @Toesteltype, @LaatsteOnderhoudsbeurtDatum, @TypeOnderhoud)" ProviderName="<%$ ConnectionStrings:WebCoreDBConnectionString.ProviderName %>" SelectCommand="SELECT [Registratienummer], [Toesteltype], [LaatsteOnderhoudsbeurtDatum], [TypeOnderhoud] FROM [Onderhoudstabel]" UpdateCommand="UPDATE [Onderhoudstabel] SET [Toesteltype] = @Toesteltype, [LaatsteOnderhoudsbeurtDatum] = @LaatsteOnderhoudsbeurtDatum, [TypeOnderhoud] = @TypeOnderhoud WHERE [Registratienummer] = @Registratienummer">
            <DeleteParameters>
                <asp:Parameter Name="Registratienummer" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Registratienummer" Type="String" />
                <asp:Parameter Name="Toesteltype" Type="String" />
                <asp:Parameter Name="LaatsteOnderhoudsbeurtDatum" Type="DateTime" />
                <asp:Parameter Name="TypeOnderhoud" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Toesteltype" Type="String" />
                <asp:Parameter Name="LaatsteOnderhoudsbeurtDatum" Type="DateTime" />
                <asp:Parameter Name="TypeOnderhoud" Type="String" />
                <asp:Parameter Name="Registratienummer" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebCoreDBConnectionString %>" SelectCommand="SELECT * FROM [Onderhoudstabel] ORDER BY [Registratienummer]"></asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataSourceID="SqlDataSource2">
            <Fields>
                <asp:BoundField DataField="Registratie" HeaderText="Registratie" SortExpression="Registratie" />
                <asp:BoundField DataField="Merk" HeaderText="Merk" SortExpression="Merk" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="Subtype" HeaderText="Subtype" SortExpression="Subtype" />
                <asp:BoundField DataField="Introductiejaar" HeaderText="Introductiejaar" SortExpression="Introductiejaar" />
            </Fields>
        </asp:DetailsView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebCoreDBConnectionString %>" SelectCommand="SELECT * FROM [Toestellentabel] WHERE ([Registratie] = @Registratie)">
            <SelectParameters>
                <asp:FormParameter FormField="PlaneRegistration" Name="Registratie" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>
</div>
</asp:Content>



