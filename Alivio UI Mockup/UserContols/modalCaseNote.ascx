<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="modalCaseNote.ascx.cs" Inherits="Alivio_UI_Mockup.UserContols.modalCaseNote" %>
<!-- Case Note Modal -->

<!--
    --
    --HOW TO OPEN:
    example:  <asp:LinkButton href="#" data-toggle="modal" data-target="#modalCaseNote" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton>
    example: <asp:Button type="button" CssClass="btn btn-primary" Text="Open Case Note Modal" runat="server" data-toggle="modal" data-target="#modalCaseNote"></asp:Button>
    --
    --
    -->
<div class="modal fade" id="modalCaseNote" tabindex="-1" role="dialog" aria-labelledby="modalCaseNoteLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalCaseNoteLabel">Add Case Note</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-group row justify-content-around">
                    <label for="<%= CaseNotePName.ClientID %>" class="col-sm-5 col-form-label">Participant</label>
                    <div class="col-sm-7">
                        <asp:Label type="text" CssClass="form-control-plaintext" ID="CaseNotePName" Text="Brittany Cope" ReadOnly="true" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="form-group row justify-content-around required">
                    <label for="<%= CaseNoteDate.ClientID %>" class="col-sm-5 col-form-label">Date</label>
                    <div class="col-sm-7">
                        <asp:TextBox type="date" CssClass="form-control" ID="CaseNoteDate" placeholder="Date" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row justify-content-around required">
                    <label for="<%= CaseNoteContactMethod.ClientID %>" class="col-sm-5 col-form-label">Contact Method</label>
                    <div class="col-sm-7">
                        <asp:DropDownList ID="CaseNoteContactMethod" CssClass="form-control selectpicker" runat="server">
                            <asp:ListItem Text="Call" Value="Call"></asp:ListItem>
                            <asp:ListItem Text="Meeting" Value="Meeting"></asp:ListItem>
                            <asp:ListItem Text="Email" Value="Email"></asp:ListItem>
                            <asp:ListItem Text="Video Call" Value="Video Call"></asp:ListItem>
                            <asp:ListItem Text="Text" Value="Text"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group row justify-content-around required">
                    <label for="<%= CaseNoteSummary.ClientID %>" class="col-sm-5 col-form-label">Summary</label>
                    <div class="col-sm-7">
                        <asp:TextBox ID="CaseNoteSummary" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                                <div class="form-group row justify-content-around required">
                    <label for="<%= CaseNoteActionItems.ClientID %>" class="col-sm-5 col-form-label">Action Items</label>
                    <div class="col-sm-7">
                        <asp:TextBox ID="CaseNoteActionItems" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <asp:Button type="button" class="btn btn-secondary" data-dismiss="modal" runat="server" Text="Close"></asp:Button>
                <asp:Button type="button" CssClass="btn btn-primary" ID="modalCaseNoteSubmit" Text="Save Case Note" runat="server" OnClick="btnSaveCaseNote_Click"></asp:Button>
            </div>
        </div>
    </div>
</div>
