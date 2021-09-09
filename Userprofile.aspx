<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Userprofile.aspx.cs" Inherits="DBMSproject.Userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fluid">
        <div class="row">
            <div class="col-md-5 mx-auto">
                
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
                                    <h4>Your Profile</h4>
                                    <span>Account status - </span>
                                    <asp:Label class="badge rounded-pill bg-info text-dark" ID="Label1" runat="server" 
                                        Text="Your Status"></asp:Label>
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
                                 <label class="form-label">Sate</label>
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
                            <div class="col-md-4">
                                 <label class="form-label">Login ID</label>
                                    <div class="form-group">
                                        <asp:TextBox Class="form-control" ID="TextBox8"
                                            runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>
                                    </div>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">old Password</label>
                                    <div class="form-group">
                                        <asp:TextBox Class="form-control" ID="TextBox9"
                                            runat="server" placeholder="Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                    </div>
                            </div>                            
                            <div class="col-md-4">
                                <label class="form-label">New Password</label>
                                    <div class="form-group">
                                        <asp:TextBox Class="form-control" ID="TextBox10"
                                            runat="server" placeholder="Password" TextMode="Password" ReadOnly="False"></asp:TextBox>
                                    </div>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col-md-8 mx-auto">              
                                        <br />
                                    <div class="form-group">
                                       <center>
                                        <asp:Button CssClass="btn btn-primary btn-block btn-lg" ID="Button1"
                                            runat="server" Text="update" OnClick="Button1_Click" />
                                        </center>
                                    </div>

                                </div>
                            </div>
                        </div>                    
                    </div>                    
                <br />
                </div>
            
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/logo.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Customer Care Complain Management<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MaketManagementDBConnectionString %>" SelectCommand="SELECT [Bill_no], [product_code], [product_type], [selling_date], [warrantyperoid], [customer_name], [complaint] FROM [Sold_product_data]"></asp:SqlDataSource>
                                    </h4>
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
                                <asp:GridView class="table table-striped table-bordered"
                                    ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="Bill_no" HeaderText="Bill_no" SortExpression="Bill_no" />
                                        <asp:BoundField DataField="product_code" HeaderText="product_code" SortExpression="product_code" />
                                        <asp:BoundField DataField="product_type" HeaderText="product_type" SortExpression="product_type" />
                                        <asp:BoundField DataField="selling_date" HeaderText="selling_date" SortExpression="selling_date" />
                                        <asp:BoundField DataField="warrantyperoid" HeaderText="warrantyperoid" SortExpression="warrantyperoid" />
                                        <asp:BoundField DataField="customer_name" HeaderText="customer_name" SortExpression="customer_name" />
                                        <asp:BoundField DataField="complaint" HeaderText="complaint" SortExpression="complaint" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>              
                   </div>                    
                 </div> 
            </div>
        </div>
    </div>

</asp:Content>
