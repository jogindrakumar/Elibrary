<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin_login.aspx.cs" Inherits="Elib.Admin_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #userimg {
    width: 150px;
}

#backtohome {
    text-decoration: none;
    font-size: 1.2rem;
}
    </style>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card shadow" style="border-radius:2rem;">
                    <div class="card-body">
                        <div class="row">
                             <div class="col">
                            <center>
                               
                                <img src="image/generaluser.png" id="userimg"  alt="Alternate Text" />
                               
                            </center>
                        </div>
                        </div>
                       
                        <div class="row">
                             <div class="col">
                           <center>
                               <h3>Admin Login</h3>
                           </center>
                        </div>
                        </div>
                        <div class="row">
                             <div class="col">
                                 <hr />
                        </div>
                        </div>
                         <div class="row">
                             <div class="col">
                                <div class="form-group">
                                    <label class="form-label"><i class="fa-regular fa-id-card text-success"></i> Member ID</label>
                                    <asp:TextBox CssClass="form-control" placeholder="Member ID" ID="TextBox1" runat="server"></asp:TextBox>
                                </div>
                                  <div class="form-group">
                                    <label class="form-label"><i class="fa-solid fa-lock text-danger"></i> Password</label>
                                    <asp:TextBox CssClass="form-control" placeholder="password" ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>
                                </div>
                                 <br />
                                 <div class="form-group d-grid gap-2">
                                     <asp:Button ID="Button1" CssClass="btn btn-success btn-lg" runat="server" Text="Login" />
                                     <input id="Button2" type="button" class="btn btn-info btn-lg" value="Sign Up" />
                                 </div>
                                 
                        </div>
                        </div>
                       
                    </div>
                    
                </div>
               <a href="homepage.aspx" id="backtohome"><i class="fa-solid fa-backward"></i>  Back to Home</a>
            </div>
             
        </div>
    </div>
</asp:Content>
