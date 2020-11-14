<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="goal.ascx.cs" Inherits="Alivio_UI_Mockup.UserContols.goal1" %>

<div runat="server" id="divGOAL">
    <div class=" row form-group">
        <div class=" col-md-8  ">
            <asp:Label runat="server" ID="lblGoalName"> Goal Name</asp:Label>
            &nbsp;
            <asp:TextBox runat="server" ID="txtGoalName" CssClass="form-control" placeholder="Goal Name"> </asp:TextBox>
        </div>
    </div>

    <div class="row form-group">
        <div class="col-md-10">
            <asp:Label runat="server" ID="lblGoalDesc"> Goal Description</asp:Label>
            <asp:TextBox runat="server" ID="txtGoalDesc" CssClass="form-control" TextMode="MultiLine" placeholder="Goal Description"></asp:TextBox>
        </div>
    </div>
    <div class="row form-group">
        <div class="col-md-10">
            <asp:Label runat="server" ID="lblGoalActionSteps"> Goal Action Steps</asp:Label>
            <asp:TextBox runat="server" ID="txtGoalActionSteps" CssClass="form-control" TextMode="MultiLine" placeholder="Goal Action Steps"></asp:TextBox>
        </div>
    </div>

    <hr />
</div>
