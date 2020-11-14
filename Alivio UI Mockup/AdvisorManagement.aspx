<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AdvisorManagement.aspx.cs" Inherits="Alivio_UI_Mockup.WebForm2" %>

<%@ Register Src="~/UserContols/modalChangeCycle.ascx" TagPrefix="uc1" TagName="modalChangeCycle" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceholder" runat="server">





</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyPlaceholder" runat="server">
    <uc1:modalChangeCycle runat="server" ID="modalChangeCycle" />

    <script>$("#navlinkAdvisors").addClass("active");</script>





    <div class="row justify-content-center mt-5">
        <div class="col text-center">
            <h1 class="display-4 text-uppercase font-weight-bold">ADVISOR MANAGEMENT</h1>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col text-center">
            <p class="text-uppercase font-weight-bold lead">
                Current Cycle 2019-2020 <span data-toggle="modal" data-target="#modalChangeCycle"><i class="fas fa-cog hover noselect"></i></span>
            </p>
        </div>
    </div>

    <div class="accordion md-accordion" id="accordionEx1" role="tablist" aria-multiselectable="true">


        <!--Accordion wrapper-->
        <div class="card">

            <!-- Card header -->
            <div class="card-header" role="tab" id="headings">

                <div class="row">

                    <div class="headingIndicator col-6">Advisors</div>
                    <div class="addButton">
                        <asp:LinkButton href="#" data-toggle="modal" data-target="#addNewAdvisor" runat="server"><i class="fas fa-plus-square" style="font-size:30px;cursor: pointer;color:green; display:inline-block; margin-left: 400%; position:absolute;right: 10px; top:10px;" ></i></asp:LinkButton>
                    </div>

                </div>
            </div>
        </div>

        <table class="table table-hover table-bordered  nowrap" id="participantsTable">
            <thead>
                <tr>
                    <td class="font-weight-bold">First Name</td>
                    <th scope="col">Last Name</th>
                    <th scope="col">Email </th>
                    <th scope="col" class="text-xl-right noselect">Manage</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Emma-Louise</td>
                    <td>Holder</td>
                    <td>emmalouiseholder@careerlink.com</td>
                    <td>
                        <span data-toggle="modal" data-target="#modal_ManageAdvisors">
                            <asp:LinkButton href="#" CssClass="btn btn-success float-right" runat="server">Manage</asp:LinkButton>
                        </span>

                    </td>
                </tr>
                <tr>
                    <td>Roskana</td>
                    <td>Brooks</td>
                    <td>roksanabrooks@careerlink.com</td>
                    <td>
                        <span data-toggle="modal" data-target="#modal_ManageAdvisors">
                            <asp:LinkButton href="#" CssClass="btn btn-success float-right" runat="server">Manage</asp:LinkButton>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td>Eshaal</td>
                    <td>Herman</td>
                    <td>eshaalherman@careerlink.com</td>
                    <td>
                        <span data-toggle="modal" data-target="#modal_ManageAdvisors">
                            <asp:LinkButton href="#" CssClass="btn btn-success float-right" runat="server">Manage</asp:LinkButton>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td>Mathilda </td>
                    <td>Herrera</td>
                    <td>mathildherrera@careerlink.com</td>
                    <td>
                        <span data-toggle="modal" data-target="#modal_ManageAdvisors">
                            <asp:LinkButton href="#" CssClass="btn btn-success float-right" runat="server">Manage</asp:LinkButton>
                        </span></td>
                </tr>
            </tbody>

        </table>
        <!-- 
        <div class="card">
            <div class="card-header" role="tab" id="headingThree1">
                <div class="d-flex flex-row justify-content-between align-items-center">
                    <div class="advisorName">Emma-Louise Holder</div>
                    <asp:LinkButton href="#" data-toggle="modal" data-target="#modal_ManageAdvisors" CssClass="btn btn-success" runat="server">Manage</asp:LinkButton>
                </div>
                <div id="collapseThree1" class="collapse" role="tabpanel" aria-labelledby="headingThree31"
                    data-parent="#accordionEx1">

                    <div class="card-body">
                    </div>
                </div>

            </div>

        </div>
        <div class="card">

            <div class="card-header" role="tab" id="headingThree2">
                <div class="d-flex flex-row justify-content-between align-items-center">
                    <div class="advisorName">Roskana Brooks</div>
                    <asp:LinkButton href="#" data-toggle="modal" data-target="#modal_ManageAdvisors" CssClass="btn btn-success" runat="server">Manage</asp:LinkButton>
                </div>

                <div id="collapseThree2" class="collapse" role="tabpanel" aria-labelledby="headingThree31"
                    data-parent="#accordionEx1">

                    <div class="card-body">
                    </div>
                </div>

            </div>

        </div>


        <div class="card">

            <div class="card-header" role="tab" id="headingThree3">
                <div class="d-flex flex-row justify-content-between align-items-center">
                    <div class="advisorName">Eshaal Herman</div>
                    <asp:LinkButton href="#" data-toggle="modal" data-target="#modal_ManageAdvisors" CssClass="btn btn-success" runat="server">Manage</asp:LinkButton>
                </div>

                <div id="collapseThree3" class="collapse" role="tabpanel" aria-labelledby="headingThree31"
                    data-parent="#accordionEx1">

                    <div class="card-body">
                    </div>
                </div>

            </div>

        </div>



        <div class="card">

            <div class="card-header" role="tab" id="headingThree4">
                <div class="d-flex flex-row justify-content-between align-items-center">
                    <div class="advisorName">Mathilda Herrera</div>
                    <asp:LinkButton href="#" data-toggle="modal" data-target="#modal_ManageAdvisors" CssClass="btn btn-success" runat="server">Manage</asp:LinkButton>
                </div>

                <div id="collapseThree4" class="collapse" role="tabpanel" aria-labelledby="headingThree31"
                    data-parent="#accordionEx1">

                    <div class="card-body">
                    </div>
                </div>

            </div>

        </div>

    </div>
        -->
        <div class="modal fade" id="addNewAdvisor">
            <!------Modal add new advisor------>
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <br />
                        <div>
                            <h4 class="modal-title">Add Workforce Advisor</h4>
                        </div>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <br />

                    </div>
                    <div class="modal-body">

                        <div class="form-group row justify-content-around required">
                            <!------First Name------>
                            <label for="FirstName" class="col-sm-5 col-form-label required">First Name:</label>
                            <div class="col-sm-7">
                                <asp:TextBox CssClass="form-control" ID="txtFirstName" runat="server"></asp:TextBox>
                            </div>
                        </div>





                        <div class="form-group row justify-content-around required">
                            <!------Last Name----->
                            <label for="LastName" class="col-sm-5 col-form-label required">Last Name:</label>
                            <div class="col-sm-7">
                                <asp:TextBox ID="txtLastName" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>


                        <div class="form-group row justify-content-around required">
                            <!------Email Name----->
                            <label for="Email" class="col-sm-5 col-form-label required">Email:</label>
                            <div class="col-sm-7">
                                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Submit</button>
                    </div>
                </div>

            </div>
        </div>


        <div class="modal fade" id="modal_ManageAdvisors" tabindex="-1" role="dialog" aria-labelledby="modal_ManageAdvisors" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalManageAdvisorLabel">Manage Advisor: Roskana Brooks</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <div class="accordion md-accordion" id="accordionEx2" role="tablist" aria-multiselectable="true">


                            <asp:Label ID="Label2" runat="server">

            <i style="font-weight:bold;">Viewing Privileges For: </i>

                            </asp:Label>

                            <!-- Accordion card -->
                            <div class="card">

                                <!-- Accordion card -->
                                <div class="card">



                                    <!-- Card header -->
                                    <div class="card-header" role="tab" id="crdHead1">
                                        <!-----Has privileges------->
                                        <div class="d-flex flex-row justify-content-between align-items-center">
                                            <div class="advisorName">Kellan Cordova</div>
                                            <asp:LinkButton href="#" data-toggle="modal" data-target="#modal_ManageAdvisors" CssClass="btn btn-danger" runat="server">Deactivate</asp:LinkButton>
                                        </div>


                                    </div>

                                    <!-- Card header -->
                                    <div class="card-header" role="tab" id="crdHead2">
                                        <!-----Has privileges------->
                                        <div class="d-flex flex-row justify-content-between align-items-center">
                                            <div class="advisorName">Jenna Lawson</div>
                                            <asp:LinkButton href="#" data-toggle="modal" data-target="#modal_ManageAdvisors" CssClass="btn btn-danger" runat="server">Deactivate</asp:LinkButton>
                                        </div>


                                    </div>

                                    <!-- Card header -->
                                    <div class="card-header" role="tab" id="crdHead3">
                                        <!-----Has privileges------->
                                        <div class="d-flex flex-row justify-content-between align-items-center">
                                            <div class="advisorName">Brittany Cope</div>
                                            <asp:LinkButton href="#" data-toggle="modal" data-target="#modal_ManageAdvisors" CssClass="btn btn-danger" runat="server">Deactivate</asp:LinkButton>
                                        </div>


                                    </div>

                                </div>
                            </div>
                            <br>

                            <asp:Label ID="Label1" runat="server">

            <i style="font-weight:bold;">Does Not Have Viewing Privileges For: </i>

                            </asp:Label>

                            <!-- Accordion card -->
                            <div class="card">

                                <!-- Accordion card -->
                                <div class="card">





                                    <!-- Card header -->
                                    <div class="card-header" role="tab" id="crdDntPriv1">

                                        <div class="d-flex flex-row justify-content-between align-items-center">
                                            <div class="advisorName">Mathilda Herrera</div>
                                            <asp:LinkButton href="#" data-toggle="modal" data-target="#modal_ManageAdvisors" CssClass="btn btn-success" runat="server">Add</asp:LinkButton>
                                        </div>

                                    </div>

                                    <div class="card-header" role="tab" id="crdDntPriv2">

                                        <div class="d-flex flex-row justify-content-between align-items-center">
                                            <div class="advisorName">Anas Manning</div>
                                            <asp:LinkButton href="#" data-toggle="modal" data-target="#modal_ManageAdvisors" CssClass="btn btn-success" runat="server">Add</asp:LinkButton>
                                        </div>

                                    </div>

                                    <div class="card-header" role="tab" id="crdDntPriv3">

                                        <div class="d-flex flex-row justify-content-between align-items-center">
                                            <div class="advisorName">Janelle Vickers</div>
                                            <asp:LinkButton href="#" data-toggle="modal" data-target="#modal_ManageAdvisors" CssClass="btn btn-success" runat="server">Add</asp:LinkButton>
                                        </div>

                                    </div>

                                    <div class="card-header" role="tab" id="crdDntPriv4">

                                        <div class="d-flex flex-row justify-content-between align-items-center">
                                            <div class="advisorName">Barbara Glass</div>
                                            <asp:LinkButton href="#" data-toggle="modal" data-target="#modal_ManageAdvisors" CssClass="btn btn-success" runat="server">Add</asp:LinkButton>
                                        </div>

                                    </div>

                                    <div class="card-header" role="tab" id="crdDntPriv5">

                                        <div class="d-flex flex-row justify-content-between align-items-center">
                                            <div class="advisorName">Aleah Salt</div>
                                            <asp:LinkButton href="#" data-toggle="modal" data-target="#modal_ManageAdvisors" CssClass="btn btn-success" runat="server">Add</asp:LinkButton>
                                        </div>

                                    </div>




                                </div>
                            </div>
                        </div>
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Submit</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!---------->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="EndBodyPlaceholder" runat="server">
</asp:Content>
