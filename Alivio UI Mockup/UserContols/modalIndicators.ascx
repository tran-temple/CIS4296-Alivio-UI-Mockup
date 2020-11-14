<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="modalIndicators.ascx.cs" Inherits="Alivio_UI_Mockup.UserContols.modalIndicators" %>
<!--Funds Disbursement Modal -->

<!--
    --
    --HOW TO OPEN:
    example:  <asp:LinkButton href="#" data-toggle="modal" data-target="#modalIndicators" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton>
    example: <asp:Button type="button" CssClass="btn btn-primary" Text="Open Indicators Modal" runat="server" data-toggle="modal" data-target="#modalIndicators"></asp:Button>
    --
    --
    -->


<div class="modal fade" id="modalIndicators" tabindex="-1" role="dialog" aria-labelledby="modalIndicatorsLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalIndicatorsLabel">Add Indicator</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-group row justify-content-around">
                    <label for="<%= IndicatorsPName.ClientID %>" class="col-sm-5 col-form-label">Participant</label>
                    <div class="col-sm-7">
                        <asp:Label type="text" CssClass="form-control-plaintext" ID="IndicatorsPName" Text="Brittany Cope" ReadOnly="true" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="form-group row justify-content-around required">
                    <label for="<%= ddlIndicator.ClientID %>" class="col-sm-5 col-form-label">Add Indicator</label>
                    <div class="col-sm-7">
                        <asp:DropDownList ID="ddlIndicator" CssClass="form-control selectpicker" runat="server">
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
                <asp:Button type="button" CssClass="btn btn-primary" ID="modalIndicatorSubmit" Text="Save Indicator" runat="server" OnClick="btnSaveIndicator_Click"></asp:Button>
            </div>
        </div>
    </div>
</div>
