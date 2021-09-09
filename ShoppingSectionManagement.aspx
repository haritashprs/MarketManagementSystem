<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShoppingSectionManagement.aspx.cs" Inherits="DBMSproject.ShoppingSectionManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <script type="text/javascript">
        $(document).ready(function () {
            $('.table').DataTable({
                "scrollY": 200,
                "scrollX": true
            });
        });
     </script>
   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Sold Product Details</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/logo.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Bill Upload</label>
                        <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Bill No.</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Bill No."></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Product Code</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Product Code"></asp:TextBox>
                        </div>
                     </div>
                      <div class="col-md-4">
                        <label>Customer Contact</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Customer Contact"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Product Type</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Product Type"></asp:TextBox>
                        </div> 
                     </div>
                     <div class="col-md-4">
                        <label>Selling Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                        </div>                        
                     </div>
                     <div class="col-md-4">
                        <label>Selling Price</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Rs." TextMode="Number"></asp:TextBox>
                        </div>                        
                     </div>                     
                  <div class="row">
                     <div class="col-md-4">
                        <label>Warrany Period</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Customer Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="customer Name"  ReadOnly="False"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Seller Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Seller Name" ReadOnly="False"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">                      
                     <div class="col-4">
                         <br />
                        <asp:Button ID="Button7" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button7_Click" />
                     </div>
                     <div class="col-4">
                         <br />
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                     </div>
                     <div class="col-4"><br />
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button2_Click" />
                     </div>
                  </div>
               </div>
            </div>
            <br>
         </div>
       </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Sold Products Inventory List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MaketManagementDBConnectionString %>" SelectCommand="SELECT [Bill_no], [product_code], [product_type], [selling_date], [selling_price], [warrantyperoid], [seller_name], [customer_name], [customer_contact] FROM [Sold_product_data] ORDER BY [selling_date] DESC"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="Bill_no" HeaderText="Bill_no" SortExpression="Bill_no" />
                                <asp:BoundField DataField="product_code" HeaderText="product_code" SortExpression="product_code" />
                                <asp:BoundField DataField="product_type" HeaderText="product_type" SortExpression="product_type" />
                                <asp:BoundField DataField="selling_date" HeaderText="selling_date" SortExpression="selling_date" />
                                <asp:BoundField DataField="selling_price" HeaderText="selling_price" SortExpression="selling_price" />
                                <asp:BoundField DataField="warrantyperoid" HeaderText="warrantyperoid" SortExpression="warrantyperoid" />
                                <asp:BoundField DataField="seller_name" HeaderText="seller_name" SortExpression="seller_name" />
                                <asp:BoundField DataField="customer_name" HeaderText="customer_name" SortExpression="customer_name" />
                                <asp:BoundField DataField="customer_contact" HeaderText="customer_contact" SortExpression="customer_contact" />
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
