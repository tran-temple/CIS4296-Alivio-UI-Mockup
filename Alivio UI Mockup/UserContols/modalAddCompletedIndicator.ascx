<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="modalAddCompletedIndicator.ascx.cs" Inherits="Alivio_UI_Mockup.UserContols.modalAddCompletedIndicator" %>
<!--Add Completed Indicator Modal -->

<!--
    --
    --HOW TO OPEN:
    example:  <asp:LinkButton href="#" data-toggle="modal" data-target="#modalAddCompletedIndicator" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton>
    example: <asp:Button type="button" CssClass="btn btn-primary" Text="Open Add Completed Indicator Modal" runat="server" data-toggle="modal" data-target="#modalAddCompletedIndicator"></asp:Button>
    --
    --
    -->


<div class="modal fade" id="modalAddCompletedIndicator" tabindex="-1" role="dialog" aria-labelledby="modalAddCompletedIndicatorLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalAddCompletedIndicatorLabel">Add Completed Indicator</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-group row justify-content-around">
                    <label for="<%= IndicatorsPName.ClientID %>" class="col-sm-5 col-form-label">Participant</label>
                    <div class="col-sm-7">
                        <asp:Label type="text" class="form-control-plaintext text-primary" ID="IndicatorsPName" Text="Kellen Corvada" ReadOnly="true" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="form-group row justify-content-around">
                    <label for="<%= ddlCompletedIndicator.ClientID %>" class="col-sm-5 col-form-label">Completed Indicators</label>
                    <div class="col-sm-7">
                        <asp:DropDownList ID="ddlCompletedIndicator" class="form-control" runat="server">
                            <asp:ListItem Enabled="true" Text="Financial Literacy" Value="76543"></asp:ListItem>
                            <asp:ListItem Text="Digital Literacy" Value="96457"></asp:ListItem>
                            <asp:ListItem Text="Career Development" Value="24567"></asp:ListItem>
                            <asp:ListItem Text="Mental Health" Value="89764"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group row justify-content-around">
                    <label for="<%= ddlIndicator.ClientID %>" class="col-sm-5 col-form-label">Select Indicator to Add</label>
                    <div class="col-sm-7">
                        <asp:DropDownList ID="ddlIndicator" class="form-control" runat="server">
                            <asp:ListItem Enabled="true" Text="Select Indicator..." Value=""></asp:ListItem>
                            <asp:ListItem Text="Financial Literacy" Value="76543"></asp:ListItem>
                            <asp:ListItem Text="Digital Literacy" Value="96457"></asp:ListItem>
                            <asp:ListItem Text="Career Development" Value="24567"></asp:ListItem>
                            <asp:ListItem Text="Mental Health" Value="89764"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <asp:Button type="button" class="btn btn-secondary" data-dismiss="modal" runat="server" Text="Close"></asp:Button>
                <asp:Button type="button" class="btn btn-primary" ID="modalIndicatorAdd" runat="server" Text="Add"></asp:Button>
            </div>
        </div>
    </div>
</div>
