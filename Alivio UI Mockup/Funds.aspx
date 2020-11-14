<%@ Page Title="Funds" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Funds.aspx.cs" Inherits="Alivio_UI_Mockup.Funds" %>

<%@ Register Src="~/UserContols/modalChangeCycle.ascx" TagPrefix="uc1" TagName="modalChangeCycle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyPlaceholder" runat="server">
        <script>$("#navlinkFunds").addClass("active");</script>
    <uc1:modalChangeCycle runat="server" ID="modalChangeCycle" />

    <div class="row justify-content-center mt-5">
        <div class="col text-center">
            <h1 class="display-4 text-uppercase font-weight-bold">Funds</h1>
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
                <table class="table table-hover table-bordered dt-responsive nowrap" id="fundsTable">
                    <thead>
                        <tr>
                            <td class="font-weight-bold">First Name</td>
                            <th scope="col">Last Name</th>
                            <th scope="col">CWDS ID</th>
                            <th scope="col" class="text-xl-right">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Brittany</td>
                            <td>Cope</td>
                            <td>242640</td>
                            <td class="text-xl-right">$50</td>
                        </tr>
                        <tr>
                            <td>Kellan</td>
                            <td>Cordova</td>
                            <td>861436</td>
                            <td class="text-xl-right">$15</td>

                        </tr>
                        <tr>
                            <td>Barbara</td>
                            <td>Glass</td>
                            <td>197858</td>
                            <td class="text-xl-right">$32</td>

                        </tr>
                        <tr>
                            <td>Mathilda</td>
                            <td>Herrera</td>
                            <td>610675</td>
                            <td class="text-xl-right">$15</td>

                        </tr>
                        <tr>
                            <td>Elora</td>
                            <td>Ingram</td>
                            <td>480198</td>
                            <td class="text-xl-right">$28</td>

                        </tr>
                        <tr>
                            <td>Jenna</td>
                            <td>Lawson</td>
                            <td>539049</td>
                            <td class="text-xl-right">$32</td>

                        </tr>
                        <tr>
                            <td>Anas</td>
                            <td>Manning</td>
                            <td>973274</td>
                            <td class="text-xl-right">$43</td>

                        </tr>
                        <tr>
                            <td>Tonisha</td>
                            <td>Michael</td>
                            <td>509505</td>
                            <td class="text-xl-right">$32</td>

                        </tr>
                        <tr>
                            <td>Aleah</td>
                            <td>Salt</td>
                            <td>655158</td>
                            <td class="text-xl-right">$18</td>

                        </tr>
                        <tr>
                            <td>Janelle</td>
                            <td>Vickers</td>
                            <td>501101</td>
                            <td class="text-xl-right">$5</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="EndBodyPlaceholder" runat="server">
    <script>
        $(document).ready(function () {
            $('#fundsTable').DataTable({
                "lengthChange": false,
                columnDefs: [
                    { responsivePriority: 1, targets: 0 },
                    { responsivePriority: 2, targets: 1 }
                ]
            });
        });
    </script>
</asp:Content>
