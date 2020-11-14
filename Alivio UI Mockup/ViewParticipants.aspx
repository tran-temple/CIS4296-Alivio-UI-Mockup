<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ViewParticipants.aspx.cs" Inherits="Alivio_UI_Mockup.ViewParticipants" %>
 
<%@ Register Src="~/UserContols/modalCaseNote.ascx" TagPrefix="uc1" TagName="modalCaseNote" %>
<%@ Register Src="~/UserContols/modalFundsDisbursement.ascx" TagPrefix="uc2" TagName="modalFundsDisbursement" %>
<%@ Register Src="~/UserContols/modalIndicators.ascx" TagPrefix="uc3" TagName="modalIndicators" %>
<%@ Register Src="~/UserContols/modalChangeCycle.ascx" TagPrefix="uc1" TagName="modalChangeCycle" %>
 
 
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceholder" runat="server">
    <style>
     
    </style>
</asp:Content>
 
<asp:Content ID="Content2" ContentPlaceHolderID="BodyPlaceholder" runat="server">
    <script>$("#navlinkParticipants").addClass("active");</script>
 
 
    <uc1:modalCaseNote runat="server" ID="modalCaseNote" />
    <uc2:modalFundsDisbursement runat="server" ID="modalFundsDisbursement" />
    <uc3:modalIndicators runat="server" ID="modalIndicators" />
    <uc1:modalChangeCycle runat="server" ID="modalChangeCycle" />
 
    <div class="row justify-content-center mt-5">
        <div class="col text-center">
            <h1 class="display-4 text-uppercase font-weight-bold">Participants </h1>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col text-center">
            <p class="text-uppercase font-weight-bold lead">
                Current Cycle 2019-2020 <span data-toggle="modal" data-target="#modalChangeCycle"><i class="fas fa-cog hover noselect"></i></span>
            </p>
        </div>
    </div>
 
    <div class="row mt-4">
        <div class="col-md">
            <div class="table-responsive-xl">
                <table class="table table-hover table-bordered dt-responsive nowrap" id="participantsTable">
                    <thead>
                        <tr>
                            <td class="font-weight-bold">First Name</td>
                            <th scope="col">Last Name</th>
                            <th scope="col">CWDS ID</th>
                            <th scope="col">Workforce Advisor</th>
                            <th scope="col">Zip Code</th>
                            <th scope="col"> Employer</th>
                            <th scope="col" class="text-xl-right noselect">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Brittany</td>
                            <td>Cope</td>
                            <td>242640</td>
                            <td>Mathilda Herrera</td>
                            <td>19135</td>
                            <td>N/A</td>
                             <td class="text-xl-right noselect">
                                <asp:LinkButton href="ParticipantProfile.aspx?Profile=242640" data-toggle="tooltip" data-placement="top" title="Profile" runat="server"><i class="fas fa-user"></i></asp:LinkButton>
                                <span data-toggle="modal" data-target="#modalIndicators">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Indicator" runat="server"><i class="fas fa-check-square"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalCaseNote">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Case Note" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Disbured Funds" runat="server"><i class="fas fa-dollar-sign"></i></asp:LinkButton></span>
                             <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Deactivate" runat="server"><i class="fas fa-trash"></i></asp:LinkButton></span>
                            </td>
 
                        </tr>
                        <tr>
                            <td>Kellan</td>
                            <td>Cordova</td>
                            <td>861436</td>
                            <td>Mathilda Herrera</td>
                            
                            <td>19113</td>
                            <td> ShopRite</td>
                             <td class="text-xl-right noselect">
                                <asp:LinkButton href="ParticipantProfile.aspx?Profile=242640" data-toggle="tooltip" data-placement="top" title="Profile" runat="server"><i class="fas fa-user"></i></asp:LinkButton>
                                <span data-toggle="modal" data-target="#modalIndicators">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Indicator" runat="server"><i class="fas fa-check-square"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalCaseNote">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Case Note" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Disbured Funds" runat="server"><i class="fas fa-dollar-sign"></i></asp:LinkButton></span>
                             <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Deactivate" runat="server"><i class="fas fa-trash"></i></asp:LinkButton></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Barbara</td>
                            <td>Glass</td>
                            <td>197858</td>
                            <td>Mathilda Herrera</td>
                            <td>19113</td>
                            <td>Checkers</td>
                             <td class="text-xl-right noselect">
                                <asp:LinkButton href="ParticipantProfile.aspx?Profile=242640" data-toggle="tooltip" data-placement="top" title="Profile" runat="server"><i class="fas fa-user"></i></asp:LinkButton>
                                <span data-toggle="modal" data-target="#modalIndicators">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Indicator" runat="server"><i class="fas fa-check-square"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalCaseNote">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Case Note" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Disbured Funds" runat="server"><i class="fas fa-dollar-sign"></i></asp:LinkButton></span>
                             <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Deactivate" runat="server"><i class="fas fa-trash"></i></asp:LinkButton></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Mathilda</td>
                            <td>Herrera</td>
                            <td>610675</td>
                            <td>Eshaal Herman</td>
                            <td>19114</td>
                            <td>N/A</td>
                              <td class="text-xl-right noselect">
                                <asp:LinkButton href="ParticipantProfile.aspx?Profile=242640" data-toggle="tooltip" data-placement="top" title="Profile" runat="server"><i class="fas fa-user"></i></asp:LinkButton>
                                <span data-toggle="modal" data-target="#modalIndicators">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Indicator" runat="server"><i class="fas fa-check-square"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalCaseNote">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Case Note" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Disbured Funds" runat="server"><i class="fas fa-dollar-sign"></i></asp:LinkButton></span>
                             <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Deactivate" runat="server"><i class="fas fa-trash"></i></asp:LinkButton></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Elora</td>
                            <td>Ingram</td>
                            <td>480198</td>
                            <td>Eshaal Herman</td>
                            <td>19114</td>
                            <td>Giant</td>
                             <td class="text-xl-right noselect">
                                <asp:LinkButton href="ParticipantProfile.aspx?Profile=242640" data-toggle="tooltip" data-placement="top" title="Profile" runat="server"><i class="fas fa-user"></i></asp:LinkButton>
                                <span data-toggle="modal" data-target="#modalIndicators">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Indicator" runat="server"><i class="fas fa-check-square"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalCaseNote">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Case Note" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Disbured Funds" runat="server"><i class="fas fa-dollar-sign"></i></asp:LinkButton></span>
                             <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Deactivate" runat="server"><i class="fas fa-trash"></i></asp:LinkButton></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Jenna</td>
                            <td>Lawson</td>
                            <td>539049</td>
                            <td>Roksana Brooks</td>
                            <td>19118</td>
                            <td>N/A</td>
                             <td class="text-xl-right noselect">
                                <asp:LinkButton href="ParticipantProfile.aspx?Profile=242640" data-toggle="tooltip" data-placement="top" title="Profile" runat="server"><i class="fas fa-user"></i></asp:LinkButton>
                                <span data-toggle="modal" data-target="#modalIndicators">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Indicator" runat="server"><i class="fas fa-check-square"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalCaseNote">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Case Note" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Disbured Funds" runat="server"><i class="fas fa-dollar-sign"></i></asp:LinkButton></span>
                             <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Deactivate" runat="server"><i class="fas fa-trash"></i></asp:LinkButton></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Anas</td>
                            <td>Manning</td>
                            <td>973274</td>
                            <td>Roksana Brooks</td>
                            <td>19119</td>
                            <td> 7-11</td>
                             <td class="text-xl-right noselect">
                                <asp:LinkButton href="ParticipantProfile.aspx?Profile=242640" data-toggle="tooltip" data-placement="top" title="Profile" runat="server"><i class="fas fa-user"></i></asp:LinkButton>
                                <span data-toggle="modal" data-target="#modalIndicators">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Indicator" runat="server"><i class="fas fa-check-square"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalCaseNote">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Case Note" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Disbured Funds" runat="server"><i class="fas fa-dollar-sign"></i></asp:LinkButton></span>
                             <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Deactivate" runat="server"><i class="fas fa-trash"></i></asp:LinkButton></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Tonisha</td>
                            <td>Michael</td>
                            <td>509505</td>
                            <td>Emma-Louise Holder</td>
                            <td>19115</td>
                            <td>Concentra</td>
                             <td class="text-xl-right noselect">
                                <asp:LinkButton href="ParticipantProfile.aspx?Profile=242640" data-toggle="tooltip" data-placement="top" title="Profile" runat="server"><i class="fas fa-user"></i></asp:LinkButton>
                                <span data-toggle="modal" data-target="#modalIndicators">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Indicator" runat="server"><i class="fas fa-check-square"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalCaseNote">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Case Note" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Disbured Funds" runat="server"><i class="fas fa-dollar-sign"></i></asp:LinkButton></span>
                             <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Deactivate" runat="server"><i class="fas fa-trash"></i></asp:LinkButton></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Aleah</td>
                            <td>Salt</td>
                            <td>655158</td>
                            <td>Emma-Louise Holder</td>
                            <td>19115</td>
                            <td> N/A</td>
                             <td class="text-xl-right noselect">
                                <asp:LinkButton href="ParticipantProfile.aspx?Profile=242640" data-toggle="tooltip" data-placement="top" title="Profile" runat="server"><i class="fas fa-user"></i></asp:LinkButton>
                                <span data-toggle="modal" data-target="#modalIndicators">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Indicator" runat="server"><i class="fas fa-check-square"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalCaseNote">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Case Note" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Disbured Funds" runat="server"><i class="fas fa-dollar-sign"></i></asp:LinkButton></span>
                             <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Deactivate" runat="server"><i class="fas fa-trash"></i></asp:LinkButton></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Janelle</td>
                            <td>Vickers</td>
                            <td>501101</td>
                            <td>Emma-Louise Holder</td>
                            <td>19116</td>
                            <td>Cousins</td>
                             <td class="text-xl-right noselect">
                                <asp:LinkButton href="ParticipantProfile.aspx?Profile=242640" data-toggle="tooltip" data-placement="top" title="Profile" runat="server"><i class="fas fa-user"></i></asp:LinkButton>
                                <span data-toggle="modal" data-target="#modalIndicators">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Indicator" runat="server"><i class="fas fa-check-square"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalCaseNote">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Case Note" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Disbured Funds" runat="server"><i class="fas fa-dollar-sign"></i></asp:LinkButton></span>
                             <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Deactivate" runat="server"><i class="fas fa-trash"></i></asp:LinkButton></span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
 
</asp:Content>
 
<asp:Content ID="Content3" ContentPlaceHolderID="EndBodyPlaceholder" runat="server">
    <script>
        function confirmation() {
            if (confirm("Are you sure you want to remove this participant from the current cycle?") == true) {
                return true;
            } else {
                return false;
            }
        }
        $(document).ready(function () {
              $('[data-toggle="tooltip"]').tooltip()
 
            $('#participantsTable').DataTable({
                "lengthChange": false,
                responsive: true,
                columnDefs: [
 
                    { orderable: false, targets: -1 },
 
                ]
            });
        });
    </script>
</asp:Content>