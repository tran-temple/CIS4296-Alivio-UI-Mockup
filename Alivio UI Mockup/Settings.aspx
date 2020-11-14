<%@ Page Title="Settings" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="Alivio_UI_Mockup.Settings" %>

<%@ Register Src="~/UserContols/modalChangeCycle.ascx" TagPrefix="uc1" TagName="modalChangeCycle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyPlaceholder" runat="server">
    <script>$("#navlinkSettings").addClass("active");</script>
    <uc1:modalChangeCycle runat="server" ID="modalChangeCycle" />

    <div class="modal fade" id="modalAddPC" tabindex="-1" role="dialog" aria-labelledby="modalAddPCLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalAddPCLabel">Add Program Coordinator</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group row justify-content-around required">
                        <label for="<%= AddPCFName.ClientID %>" class="col-sm-5 col-form-label">First Name</label>
                        <div class="col-sm-7">
                            <asp:TextBox type="text" CssClass="form-control" ID="AddPCFName" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row justify-content-around required">
                        <label for="<%= AddPCLName.ClientID %>" class="col-sm-5 col-form-label">Last Name</label>
                        <div class="col-sm-7">
                            <asp:TextBox type="text" CssClass="form-control" ID="AddPCLName" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row justify-content-around required">
                        <label for="<%= AddPCEmail.ClientID %>" class="col-sm-5 col-form-label">Email Address</label>
                        <div class="col-sm-7">
                            <asp:TextBox type="text" CssClass="form-control" ID="AddPCEmail" runat="server"></asp:TextBox>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <asp:Button type="button" class="btn btn-secondary" data-dismiss="modal" runat="server" Text="Close"></asp:Button>
                    <asp:Button type="button" CssClass="btn btn-primary" ID="modalAddPCSave" Text="Add Program Coordinator" runat="server"></asp:Button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="modalAddValidation" tabindex="-1" role="dialog" aria-labelledby="modalAddValidationLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalAddValidationLabel">Add Validation Value</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group row justify-content-around required">
                        <label for="<%= lblValidationTable.ClientID %>" class="col-sm-5 col-form-label">Validation Table:</label>
                        <div class="col-sm-7 d-flex align-items-center">
                            <asp:Label type="text" CssClass="" ID="lblValidationTable" runat="server">Partner Agency</asp:Label>
                        </div>
                    </div>
                    <div class="form-group row justify-content-around required">
                        <label for="<%= txtValidationValue.ClientID %>" class="col-sm-5 col-form-label">Value:</label>
                        <div class="col-sm-7">
                            <asp:TextBox type="text" CssClass="form-control" ID="txtValidationValue" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button type="button" class="btn btn-secondary" data-dismiss="modal" runat="server" Text="Close"></asp:Button>
                    <asp:Button type="button" CssClass="btn btn-primary" ID="Button1" Text="Add Validation Value" runat="server"></asp:Button>
                </div>
            </div>
        </div>
    </div>
    <div class="row justify-content-center mt-5">
        <div class="col text-center">
            <h1 class="display-4 text-uppercase font-weight-bold">Settings</h1>
        </div>
    </div>
    <div class="row justify-content-center mt-5">
        <div class="col-10">
            <div class="card">
                <div class="card-header">
                    Change Cycle
                </div>
                <div class="card-body">
                    <h5 class="card-title">Current Cycle: 2019-2020</h5>
                    <p class="card-text">Change the active cycle to edit current cycle participants or view past cycle information.</p>
                    <div class="card-text">
                        <div class="row">
                            <button type="button" class="btn btn-primary mx-3" data-toggle="modal" data-target="#modalChangeCycle">Change Cycle</button>

                            <a href="Cycle.aspx" class="btn btn-primary">Add Cycle</a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row justify-content-center mt-5">
        <div class="col-10">
            <div class="card">
                <div class="card-header">
                    Manage Program Coordinators
                </div>
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col">
                            <div class="card-title">Program Coordinators:</div>
                        </div>
                        <div class="col text-right">
                            <asp:LinkButton CssClass="btn btn-primary" Text="Add" runat="server" data-toggle="modal" data-target="#modalAddPC" />
                        </div>

                    </div>
                    <div class="card-text">
                        <div class="row mt-4">
                            <div class="col-md">
                                <div class="table-responsive-xl">
                                    <table class="table table-hover table-bordered dt-responsive nowrap" id="participantsTable">
                                        <thead>
                                            <tr>
                                                <td class="font-weight-bold">First Name</td>
                                                <th scope="col">Last Name</th>
                                                <th scope="col">Email</th>
                                                <th scope="col" class="text-xl-right">Manage</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Brittany</td>
                                                <td>Cope</td>
                                                <td>brittany.cope@email.com</td>
                                                <td>
                                                    <asp:LinkButton runat="server" CssClass="btn btn-danger float-right" ID="LinkButton6" Text="Deactivate" /></td>

                                            </tr>
                                            <tr>
                                                <td>Kellan</td>
                                                <td>Cordova</td>
                                                <td>kellan.cordova@email.com</td>
                                                <td>
                                                    <asp:LinkButton runat="server" CssClass="btn btn-danger float-right" ID="LinkButton1" Text="Deactivate" /></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row justify-content-center mt-5">
        <div class="col-10">
            <div class="card">
                <div class="card-header">
                    Manage Validation Tables
                </div>
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col">
                            <div class="card-title">Validation Tables:</div>
                        </div>


                    </div>
                    <div class="card-text">
                        <div class="row mt-4">
                            <div class="col-6">
                                <asp:DropDownList runat="server" CssClass="form-control" ID="ddlValidation">
                                    <asp:ListItem Value="">Partner Agency</asp:ListItem>
                                    <asp:ListItem Value="">Mental Care</asp:ListItem>
                                    <asp:ListItem Value="">Race</asp:ListItem>
                                    <asp:ListItem Value="">Marital Status</asp:ListItem>
                                    <asp:ListItem Value="">Medical Care</asp:ListItem>
                                    <asp:ListItem Value="">Education Level</asp:ListItem>
                                    <asp:ListItem Value="">Disability Validation</asp:ListItem>
                                    <asp:ListItem Value="">Drug Abuse</asp:ListItem>
                                    <asp:ListItem Value="">Ethnicity</asp:ListItem>
                                    <asp:ListItem Value="">Languages</asp:ListItem>
                                    <asp:ListItem Value="">Alcohol Abuse</asp:ListItem>
                                    <asp:ListItem Value="">Safety Level</asp:ListItem>
                                    <asp:ListItem Value="">Contact Method</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col text-right">
                                <asp:LinkButton CssClass="btn btn-primary" Text="Add" runat="server" data-toggle="modal" data-target="#modalAddValidation" />
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-md">
                                <div class="table-responsive-xl">
                                    <table class="table table-hover table-bordered dt-responsive nowrap" id="validationTable">
                                        <thead>
                                            <tr>
                                                <td class="font-weight-bold">Value</td>
                                                <th scope="col" class="text-xl-right">Deactivate</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Child Welfare</td>
                                                <td><asp:LinkButton runat="server" CssClass="btn btn-danger float-right" Text="Deactivate" /></td>

                                            </tr>
                                            <tr>
                                                <td>Domestic Violence Services</td>
                                                <td><asp:LinkButton runat="server" CssClass="btn btn-danger float-right" Text="Deactivate" /></td>
                                            </tr>
                                                                                        <tr>
                                                <td>Mental Health Vervices</td>
                                                <td><asp:LinkButton runat="server" CssClass="btn btn-danger float-right" Text="Deactivate" /></td>
                                            </tr>
                                                                                        <tr>
                                                <td>Corrections/Parole & Probation</td>
                                                <td><asp:LinkButton runat="server" CssClass="btn btn-danger float-right" Text="Deactivate" /></td>
                                            </tr>
                                            <tr>
                                                <td>WIC</td>
                                                <td><asp:LinkButton runat="server" CssClass="btn btn-danger float-right" Text="Deactivate" /></td>
                                            </tr>
                                            <tr>
                                                <td>Social Security</td>
                                                <td><asp:LinkButton runat="server" CssClass="btn btn-danger float-right" Text="Deactivate" /></td>
                                            </tr>
                                            <tr>
                                                <td>Legal Assistance/Aid</td>
                                                <td><asp:LinkButton runat="server" CssClass="btn btn-danger float-right" Text="Deactivate" /></td>
                                            </tr>
                                            <tr>
                                                <td>Division of Child Support</td>
                                                <td><asp:LinkButton runat="server" CssClass="btn btn-danger float-right" Text="Deactivate" /></td>
                                            </tr>
                                            <tr>
                                                <td>Drug or Alcohol Service</td>
                                                <td><asp:LinkButton runat="server" CssClass="btn btn-danger float-right" Text="Deactivate" /></td>
                                            </tr>
                                            <tr>
                                                <td>CareerLink</td>
                                                <td><asp:LinkButton runat="server" CssClass="btn btn-danger float-right" Text="Deactivate" /></td>
                                            </tr>
                                            <tr>
                                                <td>PACL</td>
                                                <td><asp:LinkButton runat="server" CssClass="btn btn-danger float-right" Text="Deactivate" /></td>
                                            </tr>
                                            <tr>
                                                <td>Support Groups</td>
                                                <td><asp:LinkButton runat="server" CssClass="btn btn-danger float-right" Text="Deactivate" /></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row justify-content-center mt-5">
        <div class="col-10">
            <div class="card">
                <div class="card-header">
                    Export Data
                </div>
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col">
                            <div class="card-title">Select Participant:</div>
                        </div>
                    </div>
                    <div class="row align-items-center">
                        <div class="col-6">
                            <asp:DropDownList ID="ddlParticipants" CssClass="form-control" runat="server">
                                <asp:ListItem Value="">All Participants</asp:ListItem>
                                <asp:ListItem Value="">Aleah Salt</asp:ListItem>
                                <asp:ListItem Value="">Anas Manning</asp:ListItem>
                                <asp:ListItem Value="">Barbara Glass</asp:ListItem>
                                <asp:ListItem Value="">Brittany Cope</asp:ListItem>
                                <asp:ListItem Value="">Elora Ingram</asp:ListItem>
                                <asp:ListItem Value="">Janelle Vickers</asp:ListItem>
                                <asp:ListItem Value="">Jenna Lawson</asp:ListItem>
                                <asp:ListItem Value="">Kellan Cordova</asp:ListItem>
                                <asp:ListItem Value="">Mathilda Herrera</asp:ListItem>
                                <asp:ListItem Value="">Tonisa Michael</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-6">
                            <asp:Button CssClass="btn btn-primary" Text="Export" runat="server" />
                        </div>
                    </div>

                    <div class="card-text">
                        <div class="row mt-4">
                            <div class="col-md">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="EndBodyPlaceholder" runat="server">
</asp:Content>
