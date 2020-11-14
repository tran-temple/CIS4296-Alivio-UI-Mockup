<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="modalFundsDisbursement.ascx.cs" Inherits="Alivio_UI_Mockup.UserContols.modalFundsDisbursement" %>
<!--Funds Disbursement Modal -->

<!--
    --
    --HOW TO OPEN:
    example:  <asp:LinkButton href="#" data-toggle="modal" data-target="#modalFundsDisbursement" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton>
    example: <asp:Button type="button" CssClass="btn btn-primary" Text="Open Funds Disbursement Modal" runat="server" data-toggle="modal" data-target="#modalFundsDisbursement"></asp:Button>
    --
    --
    -->

<div class="modal fade" id="modalFundsDisbursement" tabindex="-1" role="dialog" aria-labelledby="modalFundsDisbursementLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalFundsDisbursementLabel">Record Funds Disbursement</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-group row justify-content-around">
                    <label for="<%= FundsPName.ClientID %>" class="col-sm-5 col-form-label">Participant</label>
                    <div class="col-sm-7">
                        <asp:Label type="text" CssClass="form-control-plaintext" ID="FundsPName" Text="Brittany Cope" ReadOnly="true" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="form-group row justify-content-around required">
                    <label for="<%= ddlRelatedCaseNote.ClientID %>" class="col-sm-5 col-form-label">Related Case Note</label>
                    <div class="col-sm-7">
                        <asp:DropDownList ID="ddlRelatedCaseNote" CssClass="form-control selectpicker" runat="server">
                            <asp:ListItem Enabled="true" Text="Select Note..." Value=""></asp:ListItem>
                            <asp:ListItem Text="Thursday, February 27th, Call" Value="76543"></asp:ListItem>
                            <asp:ListItem Text="Monday, March 2nd, Meeting" Value="96457"></asp:ListItem>
                            <asp:ListItem Text="Sunday, March 8th, Text" Value="24567"></asp:ListItem>
                            <asp:ListItem Text="Tuesday, March 18th, Call" Value="89764"></asp:ListItem>
                            <asp:ListItem Text="Thursday, March 25th, Video Chat" Value="56732"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group row justify-content-around required">
                    <label for="<%= txtAmountDisbursed.ClientID %>" class="col-sm-5 col-form-label">Amount Disbursed</label>
                    <div class="col-sm-7">
                        <asp:Textbox ID="txtAmountDisbursed" CssClass="form-control" runat="server"></asp:Textbox>
                    </div>
                </div>
                <div class="form-group row justify-content-around required">
                    <label for="<%= txtDisbursementComments.ClientID %>" class="col-sm-5 col-form-label">Comments</label>
                    <div class="col-sm-7">
                        <asp:TextBox ID="txtDisbursementComments" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <asp:Button type="button" class="btn btn-secondary" data-dismiss="modal" runat="server" Text="Close"></asp:Button>
                <asp:Button type="button" CssClass="btn btn-primary" ID="modalCaseNoteSubmit" Text="Record Funds" runat="server" OnClick="btnSaveFundsDisbursement_Click"></asp:Button>
            </div>
        </div>
    </div>
</div>
