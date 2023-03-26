<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="User_SignUp.aspx.cs" Inherits="Elib.User_SignUp" %>
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
     <div class="container-fluid mt-4">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card shadow" style="border-radius:2rem;">
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
                               <h4>Member Sign Up</h4>
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
                                    <asp:TextBox CssClass="form-control" placeholder="Full Name" ID="full_name" runat="server"></asp:TextBox>
                                </div> 
                            </div>
                             <div class="col-md-6">
                                 <div class="form-group">
                                    <label class="form-label"><i class="fa-regular fa-calendar-days"></i>Date of Birth</label>
                                    <asp:TextBox CssClass="form-control" placeholder="password" ID="dob" TextMode="Date" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                          <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label"><i class="fa-solid fa-address-book"></i> Contact Number</label>
                                    <asp:TextBox CssClass="form-control" placeholder="Contact" ID="contact_no" TextMode="Number" runat="server"></asp:TextBox>
                                </div> 
                            </div>
                             <div class="col-md-6">
                                 <div class="form-group">
                                    <label class="form-label"><i class="fa-solid fa-envelope"></i> Email ID</label>
                                    <asp:TextBox CssClass="form-control" placeholder="Email" ID="email" TextMode="Email" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                          <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="form-label"><i class="fa-solid fa-location-dot"></i> State </label>
                                    <asp:DropDownList CssClass="form-control" ID="ddl_state" runat="server">
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
                                    <asp:TextBox CssClass="form-control" placeholder="City" ID="city" runat="server"></asp:TextBox>
                                </div>
                            </div>
                               <div class="col-md-4">
                                 <div class="form-group">
                                    <label class="form-label"><i class="fa-regular fa-hashtag"></i> Pin Code</label>
                                    <asp:TextBox CssClass="form-control" placeholder="PinCode" ID="pincode" TextMode="Number" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="com-md-12">
                                  <div class="form-group">
                                    <label class="form-label"><i class="fa-regular fa-hashtag"></i> Full Address</label>
                                    <asp:TextBox CssClass="form-control" placeholder="Address" TextMode="MultiLine" ID="full_address"  runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <center>
                            <h4 class="badge text-bg-primary m-4">Login Credentials</h4>
                        </center>
                        <div class="row">
                            <div class="col-md-6">
                                 <div class="form-group">
                                    <label class="form-label"><i class="fa-regular fa-id-card text-success"></i> User ID</label>
                                    <asp:TextBox CssClass="form-control" placeholder="User ID" ID="member_id" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                  <div class="form-group">
                                    <label class="form-label"><i class="fa-solid fa-lock text-danger"></i> Password</label>
                                    <asp:TextBox CssClass="form-control" placeholder="password" ID="password" TextMode="Password" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                         <div class="row">
                             <div class="col">
                               
                                 
                                 <br />
                                 <div class="form-group">
                                 
                                     <center>
                                         <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                                      
                                         
                                         <a href="#" class="btn btn-primary">Login</a>
                                     </center>
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
