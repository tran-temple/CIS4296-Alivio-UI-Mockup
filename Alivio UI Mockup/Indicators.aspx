<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Indicators.aspx.cs" Inherits="Alivio_UI_Mockup.Indicators" %>

<%@ Register Src="~/UserContols/modalChangeCycle.ascx" TagPrefix="uc1" TagName="modalChangeCycle" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceholder" runat="server">

    <style>
     
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyPlaceholder" runat="server">
    <uc1:modalChangeCycle runat="server" ID="modalChangeCycle" />

        <script>$("#navlinkIndicators").addClass("active");</script>
    <div class="row justify-content-center mt-5">
        <div class="col text-center">
            <h1 class="display-4 text-uppercase font-weight-bold">INDICATORS </h1>
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

        <div class="addButton">
            <asp:LinkButton href="#" data-toggle="modal" data-target="#modal_AddIndicator" runat="server"><i class="fas fa-plus-square" style="font-size:30px;cursor: pointer;color:green; display:inline-block; margin-left: 97%;" ></i></asp:LinkButton>
        </div>
        <!--Accordion wrapper-->
        <div class="card">

            <!-- Card header -->
            <div class="card-header" role="tab" id="headings">

                <div class="row">
                    <div class="headingIndicator col-6">Indicator Name</div>

                    <div class="headingStatus col-3">Status</div>

                    <div class="headingEdit col-3">Edit</div>

                </div>
            </div>
        </div>



        <!-- Accordion card -->
        <div class="card">

            <!-- Card header -->
            <div class="card-header row">

                <a class="col-6 d-flex align-items-center justify-content-start" id="headingMentalHealth" data-toggle="collapse" data-parent="#accordionEx1" href="#bodyMentalHealth"
                    aria-expanded="false" aria-controls="collapseTwo1">

                    <div class="indicatorName">Mental Health  <i class="fas fa-caret-down"></i></div>
                </a>

                <div class="col-3 d-flex align-items-center justify-content-start">
                    <label class="switch mb-0">
                        <input type="checkbox">
                        <span class="slider round"></span>
                    </label>
                </div>
                <div class="col-3 indicatorControl d-flex align-items-center justify-content-start">
                    <asp:LinkButton href="#" data-toggle="modal" data-target="#modal_EditIndicator" runat="server"><i class="fas fa-edit"></i></asp:LinkButton>
                </div>
            </div>

            <!-- Card body -->
            <div id="bodyMentalHealth" class="collapse" role="tabpanel" aria-labelledby="headingMentalHealth"
                data-parent="#accordionEx1">
                <div class="card-body">
                    <div class="descriptionIndicatorName">Mental Health:</div>
                    Mental health includes our emotional, psychological, and social well-being. It affects how we think,
          feel, and act. It also helps determine how we handle stress, relate to others, and make choices.
          Mental health is important at every stage of life, from childhood and adolescence through adulthood.
          
                </div>
            </div>

        </div>
        <!-- Accordion card -->

        <!-- Accordion card -->
        <div class="card">

            <!-- Card header -->
            <div class="card-header row">

                <a class="col-6 d-flex align-items-center justify-content-start" id="headingTwo1" data-toggle="collapse" data-parent="#accordionEx1" href="#bodyDigital"
                    aria-expanded="false" aria-controls="collapseTwo1">

                    <div class="indicatorName">Digital Literacy   <i class="fas fa-caret-down"></i></div>
                </a>

                <div class="col-3 d-flex align-items-center justify-content-start">
                    <label class="switch mb-0">
                        <input type="checkbox">
                        <span class="slider round"></span>
                    </label>
                </div>
                <div class="col-3 indicatorControl d-flex align-items-center justify-content-start">
                    <asp:LinkButton href="#" data-toggle="modal" data-target="#modal_EditIndicator" runat="server"><i class="fas fa-edit"></i></asp:LinkButton>

                </div>
            </div>


            <!-- Card body -->
            <div id="bodyDigital" class="collapse" role="tabpanel" aria-labelledby="headingTwo21"
                data-parent="#accordionEx1">
                <div class="card-body">
                    <div class="descriptionIndicatorName">Digital Literacy:</div>

                    Digital literacy refers to an individual's ability to find, evaluate, and compose clear information through writing and other media on various
          digital platforms. Digital literacy is evaluated by an individual's
          grammar, composition, typing skills and ability to produce text, images, audio and designs using technology.
                </div>
            </div>

        </div>
        <!-- Accordion card -->

        <!-- Accordion card -->
        <div class="card">

            <!-- Card header -->
            <div class="card-header row">

                <a class="col-6 d-flex align-items-center justify-content-start" id="heading3" data-toggle="collapse" data-parent="#accordionEx1" href="#bodyFinancial"
                    aria-expanded="false" aria-controls="collapseTwo1">

                    <div class="indicatorName">Financial Literacy   <i class="fas fa-caret-down"></i></div>
                </a>

                <div class="col-3 d-flex align-items-center justify-content-start">
                    <label class="switch mb-0">
                        <input type="checkbox">
                        <span class="slider round"></span>
                    </label>
                </div>
                <div class="col-3 indicatorControl d-flex align-items-center justify-content-start">
                    <asp:LinkButton href="#" data-toggle="modal" data-target="#modal_EditIndicator" runat="server"><i class="fas fa-edit"></i></asp:LinkButton>

                </div>
            </div>

            <!-- Card body -->
            <div id="bodyFinancial" class="collapse" role="tabpanel" aria-labelledby="headingThree31"
                data-parent="#accordionEx1">
                <div class="card-body">
                    <div class="descriptionIndicatorName">Financial Literacy:</div>

                    is the ability to understand and properly apply financial management skills. Effective financial planning, properly managing debt, 
          accurately calculating interest, 
          and understanding the time value of money are characteristics of being financially literate.
                </div>
            </div>

        </div>
        <!-- Accordion card -->

    </div>
    <!-- Accordion wrapper -->






    <div class="modal fade" id="modalAddIndicator">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <br />
                    <br />
                    <div class="col text-center">
                        <h4 class="modal-title">NEW INDICATOR</h4>
                    </div>
                    <br />

                    <br />
                    <br />
                </div>
                <div class="modal-body">




                    <div class="form-group row justify-content-around required">
                        <div class="form-group row justify-content-around required">
                            <label for="New_Indicator_Name" class="col-sm-5 col-form-label">Indicator Name:</label>
                            <br />
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtNew_Indicator_Name" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <br />
                        <br />
                        <div class="form-group row justify-content-around required">
                            <label for="New_IndicatorDescription" class="col-sm-5 col-form-label">Description:</label>
                            <br />
                            <div class="col-sm-7">
                                <asp:TextBox ID="txtNew_Indicator_Description" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />


                            </div>




                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Submit</button>
                </div>

            </div>

        </div>
    </div>




    <div class="modal fade" id="modal_EditIndicator" tabindex="-1" role="dialog" aria-labelledby="modal_EditIndicator" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalEditIndicatorLabel">Edit Indicator:  <span id="indicatorBeingEditedTitle">Digital Literacy</span></h5>
                    <br />


                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="form-group row justify-content-around required">
                        <label for="IndicatorName" class="col-sm-5 col-form-label">Indicator Name:</label>
                        <div class="col-sm-7">
                            <asp:TextBox CssClass="form-control" ID="txtIndicatorName" placeholder="Digital Literacy" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group row justify-content-around required">
                        <label for="Description" class="col-sm-5 col-form-label">Descripton:</label>
                        <div class="col-sm-7">
                            <asp:TextBox ID="IndicatorDescripton" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <asp:Button type="button" class="btn btn-secondary" data-dismiss="modal" runat="server" Text="Close"></asp:Button>
                    <asp:Button type="button" CssClass="btn btn-primary" ID="modalEditIndicatorSubmit" Text="Save Changes" runat="server"></asp:Button>
                </div>
            </div>
        </div>
    </div>




    <div class="modal fade" id="modal_AddIndicator" tabindex="-1" role="dialog" aria-labelledby="modal_EditIndicator" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalAddIndicatorLabel">New Indicator</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>


                <div class="modal-body">

                    <div class="form-group row justify-content-around required">
                        <label for="IndicatorName" class="col-sm-5 col-form-label">Indicator Name:</label>
                        <div class="col-sm-7">
                            <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="Digital Literacy" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group row justify-content-around required">
                        <label for="Description" class="col-sm-5 col-form-label">Descripton:</label>
                        <div class="col-sm-7">
                            <asp:TextBox ID="TextBox2" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <asp:Button type="button" class="btn btn-secondary" data-dismiss="modal" runat="server" Text="Close"></asp:Button>

                    <asp:Button type="button" CssClass="btn btn-primary" ID="Button1" Text="Save" runat="server"></asp:Button>
                </div>
            </div>
        </div>
    </div>







</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="EndBodyPlaceholder" runat="server">
</asp:Content>
