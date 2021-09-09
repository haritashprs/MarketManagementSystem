<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShoppingSectionlogin.aspx.cs" Inherits="DBMSproject.ShoppingSectionlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px"  src="imgs/adminuser.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>SHOPPING SECTION LOGIN</h3>
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
                                                                    
                                    <label class="form-label">Login ID</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                        runat="server" placeholder="Login-Id"></asp:TextBox>
                                    </div>
                                    
                                    <label class="form-label">Password</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2"
                                        runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    </div>
                             
                                   
                                    <div class="form-group d-grid gap-2">
                                        <br />
                                        <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button1"
                                            runat="server" Text="Login" OnClick="Button1_Click" />
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
