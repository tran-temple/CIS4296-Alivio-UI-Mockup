<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Alivio_UI_Mockup.Dashboard" %>

<%@ Register Src="~/UserContols/modalCaseNote.ascx" TagPrefix="uc1" TagName="modalCaseNote" %>
<%@ Register Src="~/UserContols/modalFundsDisbursement.ascx" TagPrefix="uc2" TagName="modalFundsDisbursement" %>
<%@ Register Src="~/UserContols/modalIndicators.ascx" TagPrefix="uc3" TagName="modalIndicators" %>
<%@ Register Src="~/UserContols/modalChangeCycle.ascx" TagPrefix="uc1" TagName="modalChangeCycle" %>



<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceholder" runat="server">
    <style>
     
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyPlaceholder" runat="server">
    <script>
                    $("#navlinkDashboard").addClass("active");
    </script>

    <uc1:modalCaseNote runat="server" ID="modalCaseNote" />
    <uc2:modalFundsDisbursement runat="server" ID="modalFundsDisbursement" />
    <uc3:modalIndicators runat="server" ID="modalIndicators" />
    <uc1:modalChangeCycle runat="server" ID="modalChangeCycle" />

    <div class="row justify-content-center mt-5">
        <div class="col text-center">
            <h1 class="display-4 text-uppercase font-weight-bold">Dashboard</h1>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col text-center">
            <p class="text-uppercase font-weight-bold lead">
                Current Cycle 2019-2020 <span data-toggle="modal" data-target="#modalChangeCycle"><i class="fas fa-cog hover noselect"></i></span>
            </p>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-md my-3">
            <div class="card pb-4 pt-3 overflow-auto cardDash">
                <div class="text-center d-flex justify-content-center flex-column align-items-center pb-3">
                    <h4>Indicator Progress</h4>
                    <div class="row w-100 justify-content-center">
                        <div class="col-10 m-2">
                            <div class="m-1">Financial Literacy</div>

                            <div class="progress">
                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-success" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%">75%</div>
                            </div>
                        </div>
                    </div>
                    <div class="row w-100 justify-content-center mt-3">
                        <div class="col-10 m-2">
                            <div class="m-1">Digital Literacy</div>

                            <div class="progress">
                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-info" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%">50%</div>
                            </div>
                        </div>
                    </div>
                    <div class="row w-100 justify-content-center mt-3">
                        <div class="col-10 m-2">
                            <div class="m-1">Career Development</div>

                            <div class="progress">
                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-warning" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">30%</div>
                            </div>
                        </div>
                    </div>
                    <div class="row w-100 justify-content-center mt-3">
                        <div class="col-10 m-2">
                            <div class="m-1">Mental Health</div>
                            <div class="progress">
                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" role="progressbar" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100" style="width: 15%">15%</div>
                            </div>
                        </div>
                    </div>
                    <div class="row w-100 justify-content-center mt-3">
                        <div class="col-10 m-2">
                            <div class="m-1">General Educational Development</div>
                            <div class="progress">
                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-info" role="progressbar" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100" style="width: 65%">65%%</div>
                            </div>
                        </div>
                    </div>
                    <div class="row w-100 justify-content-center mt-3">
                        <div class="col-10 m-2">
                            <div class="m-1">Financial Independance</div>
                            <div class="progress">
                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-success" role="progressbar" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100" style="width: 90%">90%</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md">
            <div class="card pb-4 pt-3 my-3 h-100 text-center cardDash">
                <h4>Funds</h4>

                <div class="text-center d-flex justify-content-around flex-column align-items-center h-100">
                    <div class="row w-100 justify-content-center">
                        <div id="ProgressCircle"><strong class="noselect"></strong></div>
                    </div>
                                            <div><h3 class="">Spent $750 out of $1000</h3></div>
                    <div><asp:LinkButton href="Funds.aspx" Text="Go To Funds" runat="server" CssClass="btn btn-success stretched-link"/></div>
                </div>
            </div>
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
                            <th scope="col" class="text-xl-right noselect">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Brittany</td>
                            <td>Cope</td>
                            <td>242640</td>
                            <td class="text-xl-right noselect">
                                <asp:LinkButton href="ParticipantProfile.aspx?Profile=242640" data-toggle="tooltip" data-placement="top" title="Profile" runat="server"><i class="fas fa-user"></i></asp:LinkButton>
                                <span data-toggle="modal" data-target="#modalIndicators">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Indicator" runat="server"><i class="fas fa-check-square"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalCaseNote">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Case Note" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Disbured Funds" runat="server"><i class="fas fa-dollar-sign"></i></asp:LinkButton></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Kellan</td>
                            <td>Cordova</td>
                            <td>861436</td>
                            <td class="text-xl-right noselect">
                                <asp:LinkButton href="ParticipantProfile.aspx?Profile=242640" data-toggle="tooltip" data-placement="top" title="Profile" runat="server"><i class="fas fa-user"></i></asp:LinkButton>
                                <span data-toggle="modal" data-target="#modalIndicators">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Indicator" runat="server"><i class="fas fa-check-square"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalCaseNote">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Case Note" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Disbured Funds" runat="server"><i class="fas fa-dollar-sign"></i></asp:LinkButton></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Barbara</td>
                            <td>Glass</td>
                            <td>197858</td>
                            <td class="text-xl-right noselect">
                                <asp:LinkButton href="ParticipantProfile.aspx?Profile=242640" data-toggle="tooltip" data-placement="top" title="Profile" runat="server"><i class="fas fa-user"></i></asp:LinkButton>
                                <span data-toggle="modal" data-target="#modalIndicators">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Indicator" runat="server"><i class="fas fa-check-square"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalCaseNote">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Case Note" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Disbured Funds" runat="server"><i class="fas fa-dollar-sign"></i></asp:LinkButton></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Mathilda</td>
                            <td>Herrera</td>
                            <td>610675</td>
                            <td class="text-xl-right noselect">
                                <asp:LinkButton href="ParticipantProfile.aspx?Profile=242640" data-toggle="tooltip" data-placement="top" title="Profile" runat="server"><i class="fas fa-user"></i></asp:LinkButton>
                                <span data-toggle="modal" data-target="#modalIndicators">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Indicator" runat="server"><i class="fas fa-check-square"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalCaseNote">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Case Note" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Disbured Funds" runat="server"><i class="fas fa-dollar-sign"></i></asp:LinkButton></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Elora</td>
                            <td>Ingram</td>
                            <td>480198</td>
                            <td class="text-xl-right noselect">
                                <asp:LinkButton href="ParticipantProfile.aspx?Profile=242640" data-toggle="tooltip" data-placement="top" title="Profile" runat="server"><i class="fas fa-user"></i></asp:LinkButton>
                                <span data-toggle="modal" data-target="#modalIndicators">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Indicator" runat="server"><i class="fas fa-check-square"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalCaseNote">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Case Note" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Disbured Funds" runat="server"><i class="fas fa-dollar-sign"></i></asp:LinkButton></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Jenna</td>
                            <td>Lawson</td>
                            <td>539049</td>
                            <td class="text-xl-right noselect">
                                <asp:LinkButton href="ParticipantProfile.aspx?Profile=242640" data-toggle="tooltip" data-placement="top" title="Profile" runat="server"><i class="fas fa-user"></i></asp:LinkButton>
                                <span data-toggle="modal" data-target="#modalIndicators">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Indicator" runat="server"><i class="fas fa-check-square"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalCaseNote">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Case Note" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Disbured Funds" runat="server"><i class="fas fa-dollar-sign"></i></asp:LinkButton></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Anas</td>
                            <td>Manning</td>
                            <td>973274</td>
                            <td class="text-xl-right noselect">
                                <asp:LinkButton href="ParticipantProfile.aspx?Profile=242640" data-toggle="tooltip" data-placement="top" title="Profile" runat="server"><i class="fas fa-user"></i></asp:LinkButton>
                                <span data-toggle="modal" data-target="#modalIndicators">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Indicator" runat="server"><i class="fas fa-check-square"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalCaseNote">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Case Note" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Disbured Funds" runat="server"><i class="fas fa-dollar-sign"></i></asp:LinkButton></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Tonisha</td>
                            <td>Michael</td>
                            <td>509505</td>
                            <td class="text-xl-right noselect">
                                <asp:LinkButton href="ParticipantProfile.aspx?Profile=242640" data-toggle="tooltip" data-placement="top" title="Profile" runat="server"><i class="fas fa-user"></i></asp:LinkButton>
                                <span data-toggle="modal" data-target="#modalIndicators">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Indicator" runat="server"><i class="fas fa-check-square"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalCaseNote">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Case Note" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Disbured Funds" runat="server"><i class="fas fa-dollar-sign"></i></asp:LinkButton></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Aleah</td>
                            <td>Salt</td>
                            <td>655158</td>
                            <td class="text-xl-right noselect">
                                <asp:LinkButton href="ParticipantProfile.aspx?Profile=242640" data-toggle="tooltip" data-placement="top" title="Profile" runat="server"><i class="fas fa-user"></i></asp:LinkButton>
                                <span data-toggle="modal" data-target="#modalIndicators">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Indicator" runat="server"><i class="fas fa-check-square"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalCaseNote">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Case Note" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Disbured Funds" runat="server"><i class="fas fa-dollar-sign"></i></asp:LinkButton></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Janelle</td>
                            <td>Vickers</td>
                            <td>501101</td>
                            <td class="text-xl-right noselect">
                                <asp:LinkButton href="ParticipantProfile.aspx?Profile=242640" data-toggle="tooltip" data-placement="top" title="Profile" runat="server"><i class="fas fa-user"></i></asp:LinkButton>
                                <span data-toggle="modal" data-target="#modalIndicators">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Indicator" runat="server"><i class="fas fa-check-square"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalCaseNote">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Add Case Note" runat="server"><i class="fas fa-comment-alt"></i></asp:LinkButton></span>
                                <span data-toggle="modal" data-target="#modalFundsDisbursement">
                                    <asp:LinkButton href="#participantsTable" data-toggle="tooltip" data-placement="top" title="Disbured Funds" runat="server"><i class="fas fa-dollar-sign"></i></asp:LinkButton></span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="EndBodyPlaceholder" runat="server">
    <script src="js/circle-progress.min.js"></script>
    <script>
        $(document).ready(function () {

            $('[data-toggle="tooltip"]').tooltip();

            $('#participantsTable').DataTable({
                "lengthChange": false,
                columnDefs: [
        { responsivePriority: 1, targets: 0 },
                    { responsivePriority: 2, targets: 1 },
                    { orderable: false, targets: -1 },
                 
                ]
            });
            $('#ProgressCircle').circleProgress({
                value: 0.75,
                thickness: 20,
                size: 225,
                fill: { gradient: ['#28a745', '#2dbc4e', '#49d369'] },
            }).on('circle-animation-progress', function (event, progress, stepValue) {
                $(this).find('strong').text((stepValue * 100).toFixed(0) + "%\nSpent");
            });
        });
    </script>
</asp:Content>
