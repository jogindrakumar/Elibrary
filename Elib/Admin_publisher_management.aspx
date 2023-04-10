<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin_publisher_management.aspx.cs" Inherits="Elib.Admin_publisher_management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
.page-img{
    width:100px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container mt-3">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Publisher Details</h4>
                                    </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                        <img class="page-img" src="image/publisher.png" />         
                                    </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Publisher ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="publisher_id" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <label>Publisher Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="publisher_name" runat="server" placeholder="Publisher Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-4">
                                <asp:Button CssClass="btn btn-lg btn-block btn-success" ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" CssClass="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button4" CssClass="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button4_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx"><< Back to Home</a><br>
                <br>
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Publisher List</h4>
                                    </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibDBConnectionString %>" SelectCommand="SELECT * FROM [publisher_master_tbl]"></asp:SqlDataSource>
                            <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" SortExpression="publisher_id" />
                                    <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
