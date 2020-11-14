<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Cycle.aspx.cs" Inherits="Alivio_UI_Mockup.Cycle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceholder" runat="server">
    <style>


    </style>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>
    <script>



       
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyPlaceholder" runat="server">

     <div class="row justify-content-center mt-5">
        <div class="col text-center">
            <h1 class="display-4 text-uppercase font-weight-bold">CREATE CYCLE </h1>

            <br /><br />
        </div>
    </div>
   

     <div class="form-group row justify-content-around">
    <label for="ddlPastCycle" class="col-sm-5 col-form-label">View Past Cycles:</label>
                
          <div class="col-sm-7">
                    <asp:DropDownList runat="server" ID="ddlPastCycle" CssClass="form-control">
                        <asp:ListItem Value="-1"> Select Cycle...</asp:ListItem>
                        <asp:ListItem Value="Alivio 2018-2019"> Alivio 2018-2019 </asp:ListItem>
                        <asp:ListItem Value="Alivio 2017-2018">Alivio 2017-2018</asp:ListItem>
                        <asp:ListItem Value="Alivio 2016-2017">Alivio 2016-2017</asp:ListItem>
                    
                    </asp:DropDownList>

              <br />
              <div class="form-group row justify-content-around">
                   <asp:Button type="button" CssClass="btn btn-primary" ID="ViewPastCycleButton" Text="View" runat="server"    ></asp:Button>
                  </div>
         </div>
       </div>
   <div id="displayPastCycleInfo">



   </div>




    <br /><br />
    <div class="form-group row justify-content-around">
                    <label for="CycleName" class="col-sm-5 col-form-label">New Cycle Name:</label>
                    <div class="col-sm-7">
                        <asp:TextBox type="text" CssClass="form-control" ID="CycleName" Text="" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row justify-content-around required">
                    <label for="CycleStartDate" class="col-sm-5 col-form-label">Start Date:</label>
                    <div class="col-sm-7">
                        <asp:TextBox type="date" CssClass="form-control" ID="CycleStartDate" placeholder="Date" runat="server"></asp:TextBox>
                    </div>
                </div>

     <div class="form-group row justify-content-around required">
                    <label for="CycleEndDate" class="col-sm-5 col-form-label">End Date:</label>
                    <div class="col-sm-7">
                        <asp:TextBox type="date" CssClass="form-control" ID="CycleEndDate" placeholder="Date" runat="server"></asp:TextBox>
                    </div>
                </div>
    <div class="form-group row justify-content-around required">
                    <label for="txtGrantSize" class="col-sm-5 col-form-label">Grant Size:</label>
                    <div class="col-sm-7">
                        <asp:TextBox CssClass="form-control" ID="txtGrantSize" placeholder="$20,000" runat="server"></asp:TextBox>
                    </div>
                </div>
    <br />
                <div class="form-group row justify-content-around">
                   <asp:Button type="button" CssClass="btn btn-primary" ID="NewCycleButton" Text="Create New Cycle" runat="server"></asp:Button>
                  </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="EndBodyPlaceholder" runat="server">
</asp:Content>
