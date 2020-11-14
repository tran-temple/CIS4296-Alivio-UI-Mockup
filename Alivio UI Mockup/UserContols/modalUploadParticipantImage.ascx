<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="modalUploadParticipantImage.ascx.cs" Inherits="Alivio_UI_Mockup.UserContols.modalUploadParticipantImage" %>
<!-- Upload Participant Image Modal -->

<!--
    --
    --HOW TO OPEN:
    example:  <asp:LinkButton href="#" data-toggle="modal" data-target="#modalUploadParticipantImage" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton>
    example: <asp:Button type="button" CssClass="btn btn-primary" Text="Open Upload Participant Image Modal" runat="server" data-toggle="modal" data-target="#modalUploadParticipantImage"></asp:Button>
    --
    --
    -->


<div class="modal fade" id="modalUploadParticipantImage" tabindex="-1" role="dialog" aria-labelledby="modalUploadParticipantImageLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalUploadParticipantImageLabel">Upload Image</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-group row justify-content-around">
                    <label for="<%= UploadPName.ClientID %>" class="col-sm-5 col-form-label">Participant</label>
                    <div class="col-sm-7">
                        <asp:Label type="text" class="form-control-plaintext text-primary text-uppercase font-weight-bold" ID="UploadPName" Text="Kellen Corvada" ReadOnly="true" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="custom-file col-sm-12">
                        <input type="file" class="custom-file-input" id="customFile">
                        <label class="custom-file-label" for="customFile">Choose file</label>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <asp:Button type="button" class="btn btn-secondary" data-dismiss="modal" runat="server" Text="Close"></asp:Button>
                <asp:Button type="button" class="btn btn-primary" ID="modalImageUpload" runat="server" Text="Upload"></asp:Button>
            </div>
        </div>
    </div>
</div>
