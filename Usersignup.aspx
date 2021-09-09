<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Usersignup.aspx.cs" Inherits="DBMSproject.Usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 mx-auto">
                
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width = "100px" src="imgs/generaluser.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Members Signup</h4>
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
                                 <label class="form-label">FULL NAME</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                        runat="server" placeholder="Full name"></asp:TextBox>
                                    </div>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Date Of Birth</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2"
                                            runat="server" placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                                    </div>
                            </div>
                        </div>

                        
                        <div class="row">
                            <div class="col-md-6">
                                 <label class="form-label">Contact Number</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3"
                                            runat="server" placeholder="contact Number" TextMode="Number"></asp:TextBox>
                                    </div>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Email Id</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4"
                                            runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                    </div>
                            </div>
                        </div>

                        
                        <div class="row">
                            <div class="col-md-4">
                                 <label class="form-label">State</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5"
                                            runat="server" placeholder="State"></asp:TextBox>
                                    </div>
                            </div>                            
                            <div class="col-md-4">
                                 <label class="form-label">City</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6"
                                            runat="server" placeholder="City"></asp:TextBox>
                                    </div>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">PINCODE</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox7"
                                            runat="server" placeholder="PIN CODE" TextMode="Number"></asp:TextBox>
                                    </div>
                            </div>
                        </div>

                        
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                 <label class="form-label">Login ID</label>
                                    <div class="form-group">
                                        <asp:TextBox Class="form-control" ID="TextBox8"
                                            runat="server" placeholder="User ID"></asp:TextBox>
                                    </div>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Password</label>
                                    <div class="form-group">
                                        <asp:TextBox Class="form-control" ID="TextBox9"
                                            runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    </div>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col">                                                               
                                   <div class="form-group d-grid gap-2">
                                        <br />
                                        <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" Onclick="Button1_Click"/>
                                    </div>

                                </div>
                            </div>
                        </div>                    
                         <a href="homepage.aspx"><<<< Back to home</a>

                    </div>    
                
                <br />
                </div>            
            </div>
        </div>


</asp:Content>
