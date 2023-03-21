<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="User_Profile.aspx.cs" Inherits="Elib.User_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
        #userimg {
    width: 100px;
}

#backtohome {
    text-decoration: none;
    font-size: 1.2rem;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid mt-2">
        <div class="row">
            <div class="col-md-5">
                <div class="card shadow">
                    <div class="card-body">
                        <div class="row">
                             <div class="col">
                            <center>
                               
                                <img src="image/generaluser.png" id="userimg" alt="Alternate Text" />
                               
                            </center>
                        </div>
                        </div>
                       
                        <div class="row">
                             <div class="col">
                           <center>
                               <h4>Your Profile</h4>
                               <span>Account Status - </span>
                               <asp:Label ID="Label1" CssClass="badge text-bg-success" runat="server" Text="Active"></asp:Label>
                           </center>
                        </div>
                        </div>
                        <div class="row">
                             <div class="col">
                                 <hr />
                        </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label"><i class="fa-regular fa-id-card text-success"></i> Full Name</label>
                                    <asp:TextBox CssClass="form-control" placeholder="Full Name" ID="TextBox1" runat="server"></asp:TextBox>
                                </div> 
                            </div>
                             <div class="col-md-6">
                                 <div class="form-group">
                                    <label class="form-label"><i class="fa-regular fa-calendar-days"></i>Date of Birth</label>
                                    <asp:TextBox CssClass="form-control" placeholder="password" ID="TextBox2" TextMode="Date" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                          <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label"><i class="fa-solid fa-address-book"></i> Contact Number</label>
                                    <asp:TextBox CssClass="form-control" placeholder="Contact" ID="TextBox3" TextMode="Number" runat="server"></asp:TextBox>
                                </div> 
                            </div>
                             <div class="col-md-6">
                                 <div class="form-group">
                                    <label class="form-label"><i class="fa-solid fa-envelope"></i> Email ID</label>
                                    <asp:TextBox CssClass="form-control" placeholder="Email" ID="TextBox4" TextMode="Email" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                          <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="form-label"><i class="fa-solid fa-location-dot"></i> State </label>
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="selct" />
                                         <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                <asp:ListItem Text="Assam" Value="Assam" />
                                <asp:ListItem Text="Bihar" Value="Bihar" />
                                <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                                <asp:ListItem Text="Delhi" Value="Delhi" />
                                <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                <asp:ListItem Text="Goa" Value="Goa" />
                                <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                <asp:ListItem Text="Haryana" Value="Haryana" />
                                <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                                <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                <asp:ListItem Text="Kerala" Value="Kerala" />
                                <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                <asp:ListItem Text="Manipur" Value="Manipur" />
                                <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                <asp:ListItem Text="Odisha" Value="Odisha" />
                                <asp:ListItem Text="Punjab" Value="Punjab" />
                                <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                <asp:ListItem Text="Telangana" Value="Telangana" />
                                <asp:ListItem Text="Tripura" Value="Tripura" />
                                <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                                <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                    </asp:DropDownList>
                                </div> 
                            </div>
                             <div class="col-md-4">
                                 <div class="form-group">
                                    <label class="form-label"><i class="fa-solid fa-location-dot"></i> City</label>
                                    <asp:TextBox CssClass="form-control" placeholder="City" ID="TextBox6" runat="server"></asp:TextBox>
                                </div>
                            </div>
                               <div class="col-md-4">
                                 <div class="form-group">
                                    <label class="form-label"><i class="fa-regular fa-hashtag"></i> Pin Code</label>
                                    <asp:TextBox CssClass="form-control" placeholder="PinCode" ID="TextBox7" TextMode="Number" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="com-md-12">
                                  <div class="form-group">
                                    <label class="form-label"><i class="fa-regular fa-hashtag"></i> Full Address</label>
                                    <asp:TextBox CssClass="form-control" placeholder="Address" TextMode="MultiLine" ID="TextBox8" ReadOnly="true"  runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <center>
                            <h4 class="badge text-bg-primary m-4">Login Credentials</h4>
                        </center>
                        <div class="row">
                            <div class="col-md-4">
                                 <div class="form-group">
                                    <label class="form-label"><i class="fa-regular fa-id-card text-success"></i> User ID</label>
                                    <asp:TextBox CssClass="form-control" placeholder="User ID" ID="TextBox5" ReadOnly="true" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                  <div class="form-group">
                                    <label class="form-label"><i class="fa-solid fa-lock text-danger"></i> Password</label>
                                    <asp:TextBox CssClass="form-control" placeholder="password" ID="TextBox9" ReadOnly="true" TextMode="Password" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                  <div class="form-group">
                                    <label class="form-label"><i class="fa-solid fa-lock text-danger"></i> New Password</label>
                                    <asp:TextBox CssClass="form-control" placeholder="password" ID="TextBox10" TextMode="Password" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                         <div class="row">
                             <div class="col">
                               
                                 
                                 <br />
                                 <div class="form-group">
                                 
                                     <center>
                                         <input id="Button2" type="button" class="btn btn-warning" value="Update" />
                                        <%-- <a href="#" class="btn btn-primary">Login</a>--%>
                                     </center>
                                 </div>
                                 
                        </div>
                        </div>
                       
                    </div>
                    
                </div>
               <a href="homepage.aspx" id="backtohome"><i class="fa-solid fa-backward"></i>  Back to Home</a>
            </div>

            <div class="col-md-6">
                <div class="card shadow">
                    <div class="card-body">
                        <div class="row">
                             <div class="col">
                            <center>
                               
                                <img src="image/books1.png" id="userimg" alt="Alternate Text" />
                               
                            </center>
                        </div>
                        </div>
                       
                        <div class="row">
                             <div class="col">
                           <center>
                               <h4>Your Issue Books</h4>
                              
                               <asp:Label ID="Label2" CssClass="badge text-bg-success" runat="server" Text="Your Book Info"></asp:Label>
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
                                 <asp:GridView ID="GridView1" class="table table-striped table-bordered"
                                     runat="server"></asp:GridView>  
                        </div>
                        </div>
                        
                       
                    </div>
                    
                </div>
            </div>
             
        </div>
    </div>
</asp:Content>
