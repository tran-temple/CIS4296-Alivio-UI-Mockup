<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ParticipantProfile.aspx.cs" Inherits="Alivio_UI_Mockup.ParticipantProfile" %>

<%@ Register Src="~/UserContols/modalCaseNote.ascx" TagPrefix="uc1" TagName="modalCaseNote" %>
<%@ Register Src="~/UserContols/modalFundsDisbursement.ascx" TagPrefix="uc2" TagName="modalFundsDisbursement" %>
<%@ Register Src="~/UserContols/modalAddCompletedIndicator.ascx" TagPrefix="uc3" TagName="modalAddCompletedIndicator" %>
<%@ Register Src="~/UserContols/modalUploadParticipantImage.ascx" TagPrefix="uc4" TagName="modalUploadParticipantImage" %>
<%@ Register Src="~/UserContols/modalChangeCycle.ascx" TagPrefix="uc5" TagName="modalChangeCycle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceholder" runat="server">
    <style>
        .fa-edit {
            font-size: 30px;
        }

        .fa-window-close {
            font-size: 30px;
            color: red;
        }

        .fa-check-square {
            font-size: 30px;
            color: green;
        }

        .fa-check-circle {
            font-size: 40px;
            color: green;
        }

        .fa-plus-square {
            font-size: 30px;
            color: green;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyPlaceholder" runat="server">
    <div class="row justify-content-center mt-5">
        <div class="col text-center">
            <h1 class="display-4 text-uppercase font-weight-bold">Participant Profile</h1>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col text-center">
            <p class="text-uppercase font-weight-bold lead">
                Current Cycle 2019-2020 <span data-toggle="modal" data-target="#modalChangeCycle"><i class="fas fa-cog hover noselect"></i></span>
            </p>
        </div>
    </div>
    <br />
    <div runat="server" id="divError">
        <asp:Label runat="server" ID="lblError" class="text-danger font-weight-bold"> </asp:Label>
    </div>
    <br />

    <uc1:modalCaseNote runat="server" ID="modalCaseNote" />
    <uc2:modalFundsDisbursement runat="server" ID="modalFundsDisbursement" />
    <uc3:modalAddCompletedIndicator runat="server" ID="modalAddCompletedIndicator" />
    <uc4:modalUploadParticipantImage runat="server" ID="modalUploadParticipantImage" />
    <uc5:modalChangeCycle runat="server" ID="modalChangeCycle" />

    <div class="container">
        <!-- Content here -->
        <div class="row">
            <div class="col-md-3">
                <!-- Start Basic Participant Info-->
                <div class="card" style="width: 18rem;" id="divBasicParticipantProfile" runat="server">
                    <div class="card-body bg-light">
                        <h5 class="card-title text-center text-uppercase font-weight-bold">
                            <asp:Label runat="server" ID="lblParticipantName">Kellan Corvada</asp:Label>
                        </h5>
                        <p class="card-text text-center text-uppercase font-weight-bold">
                            CWDS ID:
                            <asp:Label runat="server" ID="lblEarnID">12342</asp:Label>
                        </p>
                        <p class="card-text text-center font-weight-bold">
                            <asp:Label runat="server" ID="lblParticipantPhone">(215)-123-4567</asp:Label>
                        </p>
                        <p class="card-text text-center font-weight-bold">
                            Employer:
                            <asp:Label runat="server" ID="lblEmployer">Shoprite</asp:Label>
                        </p>                       
                    </div>
                    <img class="card-img-top img-fluid" src="images/profile_avatar.png" alt="Participant Image" id="imgParticipant">

                    <ul class="list-group list-group-flush">
                        <li class="list-group-item text-center">
                            <asp:LinkButton runat="server" ID="btnUploadImage" CssClass="btn btn-primary btn-lg btn-block" data-toggle="modal" data-target="#modalUploadParticipantImage">Upload Image</asp:LinkButton>
                        </li>
                        <li class="list-group-item text-center">
                            <asp:LinkButton runat="server" ID="btnAddCaseNote" CssClass="btn btn-primary btn-lg btn-block" data-toggle="modal" data-target="#modalCaseNote">Add Case Note</asp:LinkButton></li>
                        <li class="list-group-item text-center">
                            <asp:LinkButton runat="server" ID="btnLogFunds" CssClass="btn btn-primary btn-lg btn-block" data-toggle="modal" data-target="#modalFundsDisbursement">Log Funds</asp:LinkButton></li>
                    </ul>
                    <div class="card-body text-center">
                        <span><i class="fas fa-check-circle hover"></i></span>
                        <asp:Label runat="server" ID="lblCaseNoteNumber"> 2 Case Notes </asp:Label>
                    </div>
                </div>
                <!-- End Basic Participant Info-->
            </div>

            <div class="col-md-1">
                <br />
            </div>

            <div class="col-md-8">
                <div class="accordion" id="accordionParticipantProfile">
                    <!-- Start Demographic Info -->
                    <div class="card">
                        <div class="card-header" id="gpDemographicInfo">
                            <h5 class="mb-0">
                                <button class="btn btn-link text-uppercase font-weight-bold w-75 show-profile" type="button" data-toggle="collapse" data-target="#divDemographicInfo" aria-expanded="false" aria-controls="divDemographicInfo">
                                    Demographic Info
                                </button>
                                <span><i class="fas fa-edit hover edit-pencil gp-edit-icon"></i></span>
                                <span><i class="fas fa-window-close hover invisible edit-close gp-edit-icon"></i></span>
                                <span><i class="fas fa-check-square hover invisible edit-save gp-edit-icon"></i></span>
                            </h5>
                        </div>
                        <!-- Start Detail for Demographic Info -->
                        <div id="divDemographicInfo" class="collapse" aria-labelledby="gpDemographicInfo" data-parent="#accordionParticipantProfile">
                            <div class="card-body">
                                <div class="row form-group required">
                                    <div class="col-md-6 text-uppercase font-weight-bold">
                                        <label id="lblPhoneNumber">Phone Number</label>
                                    </div>
                                    <div class="col-md-6 text-uppercase font-weight-bold">
                                        <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control edit-phone gp-update-field" placeholder="(215)-123-4567" disabled></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row form-group required">
                                    <div class="col-md-6 text-uppercase font-weight-bold">
                                        <label id="lblTANF">Extended TANF Recipient</label>
                                    </div>
                                    <div class="col-md-6 text-uppercase font-weight-bold">
                                        <asp:TextBox ID="txtTANF" runat="server" CssClass="form-control edit-tanf gp-update-field" placeholder="TANF" disabled></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row form-group required">
                                    <div class="col-md-6 text-left">
                                        <label id="lblLNPWI">Does Participant reside in LNPWI in Target Area?</label>
                                    </div>
                                    <div class="col-md-6">
                                        <input type="radio" name="rgpLNPWI" id="rLNPWIYes" value="yes" class="gp-update-field edit-lnpwi" disabled>
                                        <label for="rLNPWIYes">YES</label>&nbsp;&nbsp;
                                        <input type="radio" name="rgpLNPWI" id="rLNPWINo" value="no" class="gp-update-field" checked disabled>
                                        <label for="rLNPWINo">NO</label>
                                    </div>
                                </div>
                                <div class="row form-group required">
                                    <div class="col-md-6 text-left">
                                        <label id="lblExOffender">Is Participant an ex-offender?</label>
                                    </div>
                                    <div class="col-md-6">
                                        <input type="radio" name="rgpExOffender" id="rExOffenderYes" value="yes" class="gp-update-field edit-exoffender" disabled>
                                        <label for="rExOffenderYes">YES</label>&nbsp;&nbsp;
                                        <input type="radio" name="rgpExOffender" id="rExOffenderNo" value="no" class="gp-update-field" checked disabled>
                                        <label for="rExOffenderNo">NO</label>
                                    </div>
                                </div>
                                <div class="row form-group required">
                                    <div class="col-md-6 text-uppercase font-weight-bold">
                                        <label id="lblEducation">Education Level</label>
                                    </div>
                                    <div class="col-md-6 text-uppercase font-weight-bold">
                                        <label id="lblVeteran">Veteran Status</label>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-6">
                                        <!--<asp:TextBox ID="txtEducation" runat="server" CssClass="form-control edit-education" placeholder="High School Graduate" disabled></asp:TextBox>-->
                                        <asp:DropDownList runat="server" ID="ddlEducation" CssClass="form-control edit-education gp-update-field selectpicker" data-selected-text-format="count > 3" multiple="multiple" disabled>
                                            <asp:ListItem Value="NoFormal"> No Formal Education</asp:ListItem>
                                            <asp:ListItem Value="Primary"> Primary Education</asp:ListItem>
                                            <asp:ListItem Value="HSorGED">High School Diploma or GED</asp:ListItem>
                                            <asp:ListItem Value="SomeHS">Some High School  </asp:ListItem>
                                            <asp:ListItem Value="Cert"> Professional Certificate</asp:ListItem>
                                            <asp:ListItem Value="SomeCollege"> Some College</asp:ListItem>
                                            <asp:ListItem Value="Associates"> Associates Degree</asp:ListItem>
                                            <asp:ListItem Value="Bachelors"> Bachelors Degree</asp:ListItem>
                                            <asp:ListItem Value="Masters"> Masters Degree</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-md-6">
                                        <!--<asp:TextBox ID="txtVeteran" runat="server" CssClass="form-control edit-veteran" placeholder="Not a Veteran" disabled></asp:TextBox>-->
                                        <asp:DropDownList runat="server" ID="ddlVeteran" CssClass="form-control edit-veteran gp-update-field selectpicker" data-selected-text-format="count > 3" multiple="multiple" disabled>
                                            <asp:ListItem Value="protected"> Protected Veteran</asp:ListItem>
                                            <asp:ListItem Value="notProtected"> Not a Protected Veteran</asp:ListItem>
                                            <asp:ListItem Value="notAVeteran"> Not A Veteran</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row form-group required">
                                    <div class="col-md-6 text-uppercase font-weight-bold">
                                        <label id="lblEthnicity">Ethnicity</label>
                                    </div>
                                    <div class="col-md-6 text-uppercase font-weight-bold">
                                        <label id="lblRace">Race</label>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-6">
                                        <!--<asp:TextBox ID="txtEthnicity" runat="server" CssClass="form-control edit-ethnicity" placeholder="Mexican" disabled></asp:TextBox>-->
                                        <asp:DropDownList runat="server" ID="ddlEthnicity" CssClass="form-control edit-ethnicity gp-update-field selectpicker" data-selected-text-format="count > 3" multiple="multiple" disabled>
                                            <asp:ListItem Value="Afghan"> Afghan </asp:ListItem>
                                            <asp:ListItem Value="Albanian"> Albanian </asp:ListItem>
                                            <asp:ListItem Value="Algerian"> Algerian </asp:ListItem>
                                            <asp:ListItem Value="American"> American </asp:ListItem>
                                            <asp:ListItem Value="Andorran"> Andorran </asp:ListItem>
                                            <asp:ListItem Value="Angolan"> Angolan </asp:ListItem>
                                            <asp:ListItem Value="Antiguans"> Antiguans </asp:ListItem>
                                            <asp:ListItem Value="Argentinean"> Argentinean </asp:ListItem>
                                            <asp:ListItem Value="Armenian"> Armenian </asp:ListItem>
                                            <asp:ListItem Value="Australian"> Australian </asp:ListItem>
                                            <asp:ListItem Value="Austrian"> Austrian </asp:ListItem>
                                            <asp:ListItem Value="Azerbaijani"> Azerbaijani </asp:ListItem>
                                            <asp:ListItem Value="Bahamian"> Bahamian </asp:ListItem>
                                            <asp:ListItem Value="Bahraini"> Bahraini </asp:ListItem>
                                            <asp:ListItem Value="Bangladeshi"> Bangladeshi </asp:ListItem>
                                            <asp:ListItem Value="Barbadian"> Barbadian </asp:ListItem>
                                            <asp:ListItem Value="Barbudans"> Barbudans </asp:ListItem>
                                            <asp:ListItem Value="Batswana"> Batswana </asp:ListItem>
                                            <asp:ListItem Value="Belarusian"> Belarusian </asp:ListItem>
                                            <asp:ListItem Value="Belgian"> Belgian </asp:ListItem>
                                            <asp:ListItem Value="Belizean"> Belizean </asp:ListItem>
                                            <asp:ListItem Value="Beninese"> Beninese </asp:ListItem>
                                            <asp:ListItem Value="Bhutanese"> Bhutanese </asp:ListItem>
                                            <asp:ListItem Value="Bolivian"> Bolivian </asp:ListItem>
                                            <asp:ListItem Value="Bosnian"> Bosnian </asp:ListItem>
                                            <asp:ListItem Value="Brazilian"> Brazilian </asp:ListItem>
                                            <asp:ListItem Value="British"> British </asp:ListItem>
                                            <asp:ListItem Value="Bruneian"> Bruneian </asp:ListItem>
                                            <asp:ListItem Value="Bulgarian"> Bulgarian </asp:ListItem>
                                            <asp:ListItem Value="Burkinabe"> Burkinabe </asp:ListItem>
                                            <asp:ListItem Value="Burmese"> Burmese </asp:ListItem>
                                            <asp:ListItem Value="Burundian"> Burundian </asp:ListItem>
                                            <asp:ListItem Value="Cambodian"> Cambodian </asp:ListItem>
                                            <asp:ListItem Value="Cameroonian"> Cameroonian </asp:ListItem>
                                            <asp:ListItem Value="Canadian"> Canadian </asp:ListItem>
                                            <asp:ListItem Value="Cape Verdean"> Cape Verdean </asp:ListItem>
                                            <asp:ListItem Value="Central African"> Central African </asp:ListItem>
                                            <asp:ListItem Value="Chadian"> Chadian </asp:ListItem>
                                            <asp:ListItem Value="Chilean"> Chilean </asp:ListItem>
                                            <asp:ListItem Value="Chinese"> Chinese </asp:ListItem>
                                            <asp:ListItem Value="Colombian"> Colombian </asp:ListItem>
                                            <asp:ListItem Value="Comoran"> Comoran </asp:ListItem>
                                            <asp:ListItem Value="Congolese"> Congolese </asp:ListItem>
                                            <asp:ListItem Value="Congolese"> Congolese </asp:ListItem>
                                            <asp:ListItem Value="Costa Rican"> Costa Rican </asp:ListItem>
                                            <asp:ListItem Value="Croatian"> Croatian </asp:ListItem>
                                            <asp:ListItem Value="Cuban"> Cuban </asp:ListItem>
                                            <asp:ListItem Value="Cypriot"> Cypriot </asp:ListItem>
                                            <asp:ListItem Value="Czech"> Czech </asp:ListItem>
                                            <asp:ListItem Value="Danish"> Danish </asp:ListItem>
                                            <asp:ListItem Value="Djibouti"> Djibouti </asp:ListItem>
                                            <asp:ListItem Value="Dominican"> Dominican </asp:ListItem>
                                            <asp:ListItem Value="Dominican"> Dominican </asp:ListItem>
                                            <asp:ListItem Value="Dutch"> Dutch </asp:ListItem>
                                            <asp:ListItem Value="Dutchman"> Dutchman </asp:ListItem>
                                            <asp:ListItem Value="Dutchwoman"> Dutchwoman </asp:ListItem>
                                            <asp:ListItem Value="East Timorese"> East Timorese </asp:ListItem>
                                            <asp:ListItem Value="Ecuadorean"> Ecuadorean </asp:ListItem>
                                            <asp:ListItem Value="Egyptian"> Egyptian </asp:ListItem>
                                            <asp:ListItem Value="Emirian"> Emirian </asp:ListItem>
                                            <asp:ListItem Value="Equatorial Guinean"> Equatorial Guinean </asp:ListItem>
                                            <asp:ListItem Value="Eritrean"> Eritrean </asp:ListItem>
                                            <asp:ListItem Value="Estonian"> Estonian </asp:ListItem>
                                            <asp:ListItem Value="Ethiopian"> Ethiopian </asp:ListItem>
                                            <asp:ListItem Value="Fijian"> Fijian </asp:ListItem>
                                            <asp:ListItem Value="Filipino"> Filipino </asp:ListItem>
                                            <asp:ListItem Value="Finnish"> Finnish </asp:ListItem>
                                            <asp:ListItem Value="French"> French </asp:ListItem>
                                            <asp:ListItem Value="Gabonese"> Gabonese </asp:ListItem>
                                            <asp:ListItem Value="Gambian"> Gambian </asp:ListItem>
                                            <asp:ListItem Value="Georgian"> Georgian </asp:ListItem>
                                            <asp:ListItem Value="German"> German </asp:ListItem>
                                            <asp:ListItem Value="Ghanaian"> Ghanaian </asp:ListItem>
                                            <asp:ListItem Value="Greek"> Greek </asp:ListItem>
                                            <asp:ListItem Value="Grenadian"> Grenadian </asp:ListItem>
                                            <asp:ListItem Value="Guatemalan"> Guatemalan </asp:ListItem>
                                            <asp:ListItem Value="Guinea-Bissauan"> Guinea-Bissauan </asp:ListItem>
                                            <asp:ListItem Value="Guinean"> Guinean </asp:ListItem>
                                            <asp:ListItem Value="Guyanese"> Guyanese </asp:ListItem>
                                            <asp:ListItem Value="Haitian"> Haitian </asp:ListItem>
                                            <asp:ListItem Value="Herzegovinian"> Herzegovinian </asp:ListItem>
                                            <asp:ListItem Value="Honduran"> Honduran </asp:ListItem>
                                            <asp:ListItem Value="Hungarian"> Hungarian </asp:ListItem>
                                            <asp:ListItem Value="I-Kiribati"> I-Kiribati </asp:ListItem>
                                            <asp:ListItem Value="Icelander"> Icelander </asp:ListItem>
                                            <asp:ListItem Value="Indian"> Indian </asp:ListItem>
                                            <asp:ListItem Value="Indonesian"> Indonesian </asp:ListItem>
                                            <asp:ListItem Value="Iranian"> Iranian </asp:ListItem>
                                            <asp:ListItem Value="Iraqi"> Iraqi </asp:ListItem>
                                            <asp:ListItem Value="Irish"> Irish </asp:ListItem>
                                            <asp:ListItem Value="Irish"> Irish </asp:ListItem>
                                            <asp:ListItem Value="Israeli"> Israeli </asp:ListItem>
                                            <asp:ListItem Value="Italian"> Italian </asp:ListItem>
                                            <asp:ListItem Value="Ivorian"> Ivorian </asp:ListItem>
                                            <asp:ListItem Value="Jamaican"> Jamaican </asp:ListItem>
                                            <asp:ListItem Value="Japanese"> Japanese </asp:ListItem>
                                            <asp:ListItem Value="Jordanian"> Jordanian </asp:ListItem>
                                            <asp:ListItem Value="Kazakhstani"> Kazakhstani </asp:ListItem>
                                            <asp:ListItem Value="Kenyan"> Kenyan </asp:ListItem>
                                            <asp:ListItem Value="Kittian and Nevisian"> Kittian and Nevisian </asp:ListItem>
                                            <asp:ListItem Value="Kuwaiti"> Kuwaiti </asp:ListItem>
                                            <asp:ListItem Value="Kyrgyz"> Kyrgyz </asp:ListItem>
                                            <asp:ListItem Value="Laotian"> Laotian </asp:ListItem>
                                            <asp:ListItem Value="Latvian"> Latvian </asp:ListItem>
                                            <asp:ListItem Value="Lebanese"> Lebanese </asp:ListItem>
                                            <asp:ListItem Value="Liberian"> Liberian </asp:ListItem>
                                            <asp:ListItem Value="Libyan"> Libyan </asp:ListItem>
                                            <asp:ListItem Value="Liechtensteiner"> Liechtensteiner </asp:ListItem>
                                            <asp:ListItem Value="Lithuanian"> Lithuanian </asp:ListItem>
                                            <asp:ListItem Value="Luxembourger"> Luxembourger </asp:ListItem>
                                            <asp:ListItem Value="Macedonian"> Macedonian </asp:ListItem>
                                            <asp:ListItem Value="Malagasy"> Malagasy </asp:ListItem>
                                            <asp:ListItem Value="Malawian"> Malawian </asp:ListItem>
                                            <asp:ListItem Value="Malaysian"> Malaysian </asp:ListItem>
                                            <asp:ListItem Value="Maldivan"> Maldivan </asp:ListItem>
                                            <asp:ListItem Value="Malian"> Malian </asp:ListItem>
                                            <asp:ListItem Value="Maltese"> Maltese </asp:ListItem>
                                            <asp:ListItem Value="Marshallese"> Marshallese </asp:ListItem>
                                            <asp:ListItem Value="Mauritanian"> Mauritanian </asp:ListItem>
                                            <asp:ListItem Value="Mauritian"> Mauritian </asp:ListItem>
                                            <asp:ListItem Value="Mexican"> Mexican </asp:ListItem>
                                            <asp:ListItem Value="Micronesian"> Micronesian </asp:ListItem>
                                            <asp:ListItem Value="Moldovan"> Moldovan </asp:ListItem>
                                            <asp:ListItem Value="Monacan"> Monacan </asp:ListItem>
                                            <asp:ListItem Value="Mongolian"> Mongolian </asp:ListItem>
                                            <asp:ListItem Value="Moroccan"> Moroccan </asp:ListItem>
                                            <asp:ListItem Value="Mosotho"> Mosotho </asp:ListItem>
                                            <asp:ListItem Value="Motswana"> Motswana </asp:ListItem>
                                            <asp:ListItem Value="Mozambican"> Mozambican </asp:ListItem>
                                            <asp:ListItem Value="Namibian"> Namibian </asp:ListItem>
                                            <asp:ListItem Value="Nauruan"> Nauruan </asp:ListItem>
                                            <asp:ListItem Value="Nepalese"> Nepalese </asp:ListItem>
                                            <asp:ListItem Value="Netherlander"> Netherlander </asp:ListItem>
                                            <asp:ListItem Value="New Zealander"> New Zealander </asp:ListItem>
                                            <asp:ListItem Value="Ni-Vanuatu"> Ni-Vanuatu </asp:ListItem>
                                            <asp:ListItem Value="Nicaraguan"> Nicaraguan </asp:ListItem>
                                            <asp:ListItem Value="Nigerian"> Nigerian </asp:ListItem>
                                            <asp:ListItem Value="Nigerien"> Nigerien </asp:ListItem>
                                            <asp:ListItem Value="North Korean"> North Korean </asp:ListItem>
                                            <asp:ListItem Value="Northern Irish"> Northern Irish </asp:ListItem>
                                            <asp:ListItem Value="Norwegian"> Norwegian </asp:ListItem>
                                            <asp:ListItem Value="Omani"> Omani </asp:ListItem>
                                            <asp:ListItem Value="Pakistani"> Pakistani </asp:ListItem>
                                            <asp:ListItem Value="Palauan"> Palauan </asp:ListItem>
                                            <asp:ListItem Value="Panamanian"> Panamanian </asp:ListItem>
                                            <asp:ListItem Value="Papua New Guinean"> Papua New Guinean </asp:ListItem>
                                            <asp:ListItem Value="Paraguayan"> Paraguayan </asp:ListItem>
                                            <asp:ListItem Value="Peruvian"> Peruvian </asp:ListItem>
                                            <asp:ListItem Value="Polish"> Polish </asp:ListItem>
                                            <asp:ListItem Value="Portuguese"> Portuguese </asp:ListItem>
                                            <asp:ListItem Value="Qatari"> Qatari </asp:ListItem>
                                            <asp:ListItem Value="Romanian"> Romanian </asp:ListItem>
                                            <asp:ListItem Value="Russian"> Russian </asp:ListItem>
                                            <asp:ListItem Value="Rwandan"> Rwandan </asp:ListItem>
                                            <asp:ListItem Value="Saint Lucian"> Saint Lucian </asp:ListItem>
                                            <asp:ListItem Value="Salvadoran"> Salvadoran </asp:ListItem>
                                            <asp:ListItem Value="Samoan"> Samoan </asp:ListItem>
                                            <asp:ListItem Value="San Marinese"> San Marinese </asp:ListItem>
                                            <asp:ListItem Value="Sao Tomean"> Sao Tomean </asp:ListItem>
                                            <asp:ListItem Value="Saudi"> Saudi </asp:ListItem>
                                            <asp:ListItem Value="Scottish"> Scottish </asp:ListItem>
                                            <asp:ListItem Value="Senegalese"> Senegalese </asp:ListItem>
                                            <asp:ListItem Value="Serbian"> Serbian </asp:ListItem>
                                            <asp:ListItem Value="Seychellois"> Seychellois </asp:ListItem>
                                            <asp:ListItem Value="Sierra Leonean"> Sierra Leonean </asp:ListItem>
                                            <asp:ListItem Value="Singaporean"> Singaporean </asp:ListItem>
                                            <asp:ListItem Value="Slovakian"> Slovakian </asp:ListItem>
                                            <asp:ListItem Value="Slovenian"> Slovenian </asp:ListItem>
                                            <asp:ListItem Value="Solomon Islander"> Solomon Islander </asp:ListItem>
                                            <asp:ListItem Value="Somali"> Somali </asp:ListItem>
                                            <asp:ListItem Value="South African"> South African </asp:ListItem>
                                            <asp:ListItem Value="South Korean"> South Korean </asp:ListItem>
                                            <asp:ListItem Value="Spanish"> Spanish </asp:ListItem>
                                            <asp:ListItem Value="Sri Lankan"> Sri Lankan </asp:ListItem>
                                            <asp:ListItem Value="Sudanese"> Sudanese </asp:ListItem>
                                            <asp:ListItem Value="Surinamer"> Surinamer </asp:ListItem>
                                            <asp:ListItem Value="Swazi"> Swazi </asp:ListItem>
                                            <asp:ListItem Value="Swedish"> Swedish </asp:ListItem>
                                            <asp:ListItem Value="Swiss"> Swiss </asp:ListItem>
                                            <asp:ListItem Value="Syrian"> Syrian </asp:ListItem>
                                            <asp:ListItem Value="Taiwanese"> Taiwanese </asp:ListItem>
                                            <asp:ListItem Value="Tajik"> Tajik </asp:ListItem>
                                            <asp:ListItem Value="Tanzanian"> Tanzanian </asp:ListItem>
                                            <asp:ListItem Value="Thai"> Thai </asp:ListItem>
                                            <asp:ListItem Value="Togolese"> Togolese </asp:ListItem>
                                            <asp:ListItem Value="Tongan"> Tongan </asp:ListItem>
                                            <asp:ListItem Value="Trinidadian or Tobagonian"> Trinidadian or Tobagonian </asp:ListItem>
                                            <asp:ListItem Value="Tunisian"> Tunisian </asp:ListItem>
                                            <asp:ListItem Value="Turkish"> Turkish </asp:ListItem>
                                            <asp:ListItem Value="Tuvaluan"> Tuvaluan </asp:ListItem>
                                            <asp:ListItem Value="Ugandan"> Ugandan </asp:ListItem>
                                            <asp:ListItem Value="Ukrainian"> Ukrainian </asp:ListItem>
                                            <asp:ListItem Value="Uruguayan"> Uruguayan </asp:ListItem>
                                            <asp:ListItem Value="Uzbekistani"> Uzbekistani </asp:ListItem>
                                            <asp:ListItem Value="Venezuelan"> Venezuelan </asp:ListItem>
                                            <asp:ListItem Value="Vietnamese"> Vietnamese </asp:ListItem>
                                            <asp:ListItem Value="Welsh"> Welsh </asp:ListItem>
                                            <asp:ListItem Value="Welsh"> Welsh </asp:ListItem>
                                            <asp:ListItem Value="Yemenite"> Yemenite </asp:ListItem>
                                            <asp:ListItem Value="Zambian"> Zambian </asp:ListItem>
                                            <asp:ListItem Value="Zimbabwean"> Zimbabwean </asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-md-6">
                                        <!--<asp:TextBox ID="txtRace" runat="server" CssClass="form-control edit-race" placeholder="Hispanic" disabled></asp:TextBox>-->
                                        <asp:DropDownList runat="server" ID="ddlRace" CssClass="form-control edit-race gp-update-field selectpicker" data-selected-text-format="count > 3" multiple="multiple" disabled>
                                            <asp:ListItem Value="American Indian or Alaska Native"> American Indian or Alaska Native </asp:ListItem>
                                            <asp:ListItem Value="Asian"> Asian</asp:ListItem>
                                            <asp:ListItem Value="Black or African American"> Black or African American</asp:ListItem>
                                            <asp:ListItem Value="Hispanic or Latino"> Hispanic or Latino</asp:ListItem>
                                            <asp:ListItem Value="Native Hawaiian or Other Pacific Islander">Native Hawaiian or Other Pacific Islander</asp:ListItem>
                                            <asp:ListItem Value="White"> White</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row form-group required">
                                    <div class="col-md-6 text-uppercase font-weight-bold">
                                        <label id="lblLanguage">Languages</label>
                                    </div>
                                    <div class="col-md-6 text-uppercase font-weight-bold">
                                        <label id="lblDisability">Disability</label>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-6">
                                        <asp:DropDownList ID="ddlLanguage" runat="server" CssClass="form-control edit-language gp-update-field selectpicker" data-selected-text-format="count > 3" multiple="multiple" disabled>
                                            <asp:ListItem Value="Afrikanns">Afrikanns</asp:ListItem>
                                            <asp:ListItem Value="Albanian">Albanian</asp:ListItem>
                                            <asp:ListItem Value="Arabic">Arabic</asp:ListItem>
                                            <asp:ListItem Value="Armenian">Armenian</asp:ListItem>
                                            <asp:ListItem Value="Basque">Basque</asp:ListItem>
                                            <asp:ListItem Value="Bengali">Bengali</asp:ListItem>
                                            <asp:ListItem Value="Bulgarian">Bulgarian</asp:ListItem>
                                            <asp:ListItem Value="Catalan">Catalan</asp:ListItem>
                                            <asp:ListItem Value="Cambodian">Cambodian</asp:ListItem>
                                            <asp:ListItem Value="Chinese (Mandarin)">Chinese (Mandarin)</asp:ListItem>
                                            <asp:ListItem Value="Croation">Croation</asp:ListItem>
                                            <asp:ListItem Value="Czech">Czech</asp:ListItem>
                                            <asp:ListItem Value="Danish">Danish</asp:ListItem>
                                            <asp:ListItem Value="Dutch">Dutch</asp:ListItem>
                                            <asp:ListItem Value="English">English</asp:ListItem>
                                            <asp:ListItem Value="Estonian">Estonian</asp:ListItem>
                                            <asp:ListItem Value="Fiji">Fiji</asp:ListItem>
                                            <asp:ListItem Value="Finnish">Finnish</asp:ListItem>
                                            <asp:ListItem Value="French">French</asp:ListItem>
                                            <asp:ListItem Value="Georgian">Georgian</asp:ListItem>
                                            <asp:ListItem Value="German">German</asp:ListItem>
                                            <asp:ListItem Value="Greek">Greek</asp:ListItem>
                                            <asp:ListItem Value="Gujarati">Gujarati</asp:ListItem>
                                            <asp:ListItem Value="Hebrew">Hebrew</asp:ListItem>
                                            <asp:ListItem Value="Hindi">Hindi</asp:ListItem>
                                            <asp:ListItem Value="Hungarian">Hungarian</asp:ListItem>
                                            <asp:ListItem Value="Icelandic">Icelandic</asp:ListItem>
                                            <asp:ListItem Value="Indonesian">Indonesian</asp:ListItem>
                                            <asp:ListItem Value="Irish">Irish</asp:ListItem>
                                            <asp:ListItem Value="Italian">Italian</asp:ListItem>
                                            <asp:ListItem Value="Japanese">Japanese</asp:ListItem>
                                            <asp:ListItem Value="Javanese">Javanese</asp:ListItem>
                                            <asp:ListItem Value="Korean">Korean</asp:ListItem>
                                            <asp:ListItem Value="Latin">Latin</asp:ListItem>
                                            <asp:ListItem Value="Latvian">Latvian</asp:ListItem>
                                            <asp:ListItem Value="Lithuanian">Lithuanian</asp:ListItem>
                                            <asp:ListItem Value="Macedonian">Macedonian</asp:ListItem>
                                            <asp:ListItem Value="Malay">Malay</asp:ListItem>
                                            <asp:ListItem Value="Malayalam">Malayalam</asp:ListItem>
                                            <asp:ListItem Value="Maltese">Maltese</asp:ListItem>
                                            <asp:ListItem Value="Maori">Maori</asp:ListItem>
                                            <asp:ListItem Value="Marathi">Marathi</asp:ListItem>
                                            <asp:ListItem Value="Mongolian">Mongolian</asp:ListItem>
                                            <asp:ListItem Value="Nepali">Nepali</asp:ListItem>
                                            <asp:ListItem Value="Norwegian">Norwegian</asp:ListItem>
                                            <asp:ListItem Value="Persian">Persian</asp:ListItem>
                                            <asp:ListItem Value="Polish">Polish</asp:ListItem>
                                            <asp:ListItem Value="Portuguese">Portuguese</asp:ListItem>
                                            <asp:ListItem Value="Punjabi">Punjabi</asp:ListItem>
                                            <asp:ListItem Value="Quechua">Quechua</asp:ListItem>
                                            <asp:ListItem Value="Romanian">Romanian</asp:ListItem>
                                            <asp:ListItem Value="Russian">Russian</asp:ListItem>
                                            <asp:ListItem Value="Samoan">Samoan</asp:ListItem>
                                            <asp:ListItem Value="Serbian">Serbian</asp:ListItem>
                                            <asp:ListItem Value="Slovak">Slovak</asp:ListItem>
                                            <asp:ListItem Value="Slovenian">Slovenian</asp:ListItem>
                                            <asp:ListItem Value="Spanish">Spanish</asp:ListItem>
                                            <asp:ListItem Value="Swahili">Swahili</asp:ListItem>
                                            <asp:ListItem Value="Swedish ">Swedish </asp:ListItem>
                                            <asp:ListItem Value="Tamil">Tamil</asp:ListItem>
                                            <asp:ListItem Value="Tatar">Tatar</asp:ListItem>
                                            <asp:ListItem Value="Telugu">Telugu</asp:ListItem>
                                            <asp:ListItem Value="Thai">Thai</asp:ListItem>
                                            <asp:ListItem Value="Tibetan">Tibetan</asp:ListItem>
                                            <asp:ListItem Value="Tonga">Tonga</asp:ListItem>
                                            <asp:ListItem Value="Turkish">Turkish</asp:ListItem>
                                            <asp:ListItem Value="Ukranian">Ukranian</asp:ListItem>
                                            <asp:ListItem Value="Urdu">Urdu</asp:ListItem>
                                            <asp:ListItem Value="Uzbek">Uzbek</asp:ListItem>
                                            <asp:ListItem Value="Vietnamese">Vietnamese</asp:ListItem>
                                            <asp:ListItem Value="Welsh">Welsh</asp:ListItem>
                                            <asp:ListItem Value="Xhosa">Xhosa</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-md-6">
                                        <!--<asp:TextBox ID="txtDisability" runat="server" CssClass="form-control edit-disability" placeholder="No Disabilities" disabled></asp:TextBox>-->
                                        <asp:DropDownList runat="server" ID="ddlDisability" CssClass="form-control edit-disability gp-update-field selectpicker" data-selected-text-format="count > 3" multiple="multiple" disabled>
                                            <asp:ListItem Value="None"> No Disability</asp:ListItem>
                                            <asp:ListItem Value="Deafness"> Deafness</asp:ListItem>
                                            <asp:ListItem Value="Blindness">Blindness</asp:ListItem>
                                            <asp:ListItem Value="Diabetes">Diabetes</asp:ListItem>
                                            <asp:ListItem Value="Cancer">Cancer</asp:ListItem>
                                            <asp:ListItem Value="Epilepsy">Epilepsy</asp:ListItem>
                                            <asp:ListItem Value="Intellectual Disability">Intellectual Disability</asp:ListItem>
                                            <asp:ListItem Value="Partial or Completely Missing Limbs">Partial or Completely Missing Limbs</asp:ListItem>
                                            <asp:ListItem Value="Mobility Impairment">Mobility Impairment</asp:ListItem>
                                            <asp:ListItem Value="Autism">Autism</asp:ListItem>
                                            <asp:ListItem Value="Cerebral Palsy">Cerebral Palsy</asp:ListItem>
                                            <asp:ListItem Value="HIV Infection">HIV Infection</asp:ListItem>
                                            <asp:ListItem Value="Multiple Sclerosis">Multiple Sclerosis</asp:ListItem>
                                            <asp:ListItem Value="Major Depressive Disorder">Major Depressive Disorder</asp:ListItem>
                                            <asp:ListItem Value="Bipolar Disorder">Bipolar Disorder</asp:ListItem>
                                            <asp:ListItem Value="Post-Traumatic Stress Disorder">Post-Traumatic Stress Disorder (PTSD)</asp:ListItem>
                                            <asp:ListItem Value="Obssessive Compulsive Disorder">Obssessive Compulsive Disorder (OCD)</asp:ListItem>
                                            <asp:ListItem Value="Schizophrenia">Schizophrenia</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <!-- End Detail for Demographic Info -->
                        </div>
                    </div>
                    <!-- End Demographic Info -->

                    <!-- Start Medical Info -->
                    <div class="card">
                        <div class="card-header" id="gpMedicalInfo">
                            <h5 class="mb-0">
                                <button class="btn btn-link text-uppercase font-weight-bold w-75 show-profile" type="button" data-toggle="collapse" data-target="#divMedicalInfo" aria-expanded="false" aria-controls="divMedicalInfo">
                                    Medical Info
                                </button>
                                <span><i class="fas fa-edit hover edit-pencil gp-edit-icon"></i></span>
                                <span><i class="fas fa-window-close hover invisible edit-close gp-edit-icon"></i></span>
                                <span><i class="fas fa-check-square hover invisible edit-save gp-edit-icon"></i></span>
                            </h5>
                        </div>
                        <!-- Start Detail for Medical Info -->
                        <div id="divMedicalInfo" class="collapse" aria-labelledby="gpMedicalInfo" data-parent="#accordionParticipantProfile">
                            <div class="card-body">
                                <div class="row w-100">
                                    <h6 class="text-uppercase font-weight-bold">Medical Care</h6>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-4 text-right">
                                        <label id="lblMedAdequateCare">Adequate Care</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="radio" name="rgpMedAdequate" id="rMedAdequateYes" value="yes" class="gp-update-field edit-medical-adequate" disabled>
                                        <label for="rMedAdequateYes">YES</label>&nbsp;&nbsp;
                                            <input type="radio" name="rgpMedAdequate" id="rMedAdequateNo" value="no" class="gp-update-field" checked disabled>
                                        <label for="rMedAdequateNo">NO</label>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-4 text-right">
                                        <label id="lblMedIssue">Issues Identified</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="radio" name="rgpMedIssue" id="rMedIssueYes" value="yes" class="gp-update-field edit-medical-issue" disabled>
                                        <label for="rMedIssueYes">YES</label>&nbsp;&nbsp;
                                            <input type="radio" name="rgpMedIssue" id="rMedIssueNo" value="no" class="gp-update-field" checked disabled>
                                        <label for="rMedIssueNo">NO</label>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-4 text-right">
                                        <label id="lblMedIssueDesc">Description</label>
                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="txtMedIssueDesc" CssClass="form-control gp-update-field edit-medical-desc" TextMode="MultiLine" placeholder="Description of Medical Issues......" disabled></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row w-100">
                                    <h6 class="text-uppercase font-weight-bold">Mental Health</h6>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-4 text-right">
                                        <label id="lblMentalAdequateCare">Adequate Care</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="radio" name="rgpMentalAdequate" id="rMentalAdequateYes" value="yes" class="gp-update-field edit-mental-adequate" disabled>
                                        <label for="rMentalAdequateYes">YES</label>&nbsp;&nbsp;
                                            <input type="radio" name="rgpMentalAdequate" id="rMentalAdequateNo" value="no" class="gp-update-field" checked disabled>
                                        <label for="rMentalAdequateNo">NO</label>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-4 text-right">
                                        <label id="lblMentalIssue">Issues Identified</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="radio" name="rgpMentalIssue" id="rMentalIssueYes" value="yes" class="gp-update-field edit-mental-issue" disabled>
                                        <label for="rMentalIssueYes">YES</label>&nbsp;&nbsp;
                                            <input type="radio" name="rgpMentalIssue" id="rMentalIssueNo" value="no" class="gp-update-field" checked disabled>
                                        <label for="rMentalIssueNo">NO</label>
                                    </div>
                                </div>
                                <div class="row w-100">
                                    <h6 class="text-uppercase font-weight-bold">Drug Abuse</h6>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-4 text-right">
                                        <label id="lblDrugIssue">Issues Identified</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="radio" name="rgpDrugIssue" id="rDrugIssueYes" value="yes" class="gp-update-field edit-drug-issue" disabled>
                                        <label for="rDrugIssueYes">YES</label>&nbsp;&nbsp;
                                            <input type="radio" name="rgpDrugIssue" id="rDrugIssueNo" value="no" class="gp-update-field" checked disabled>
                                        <label for="rDrugIssueNo">NO</label>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-4 text-right">
                                        <label id="lblDrugIssueDesc">Description</label>
                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="txtDrugIssueDesc" CssClass="form-control gp-update-field edit-drug-desc" TextMode="MultiLine" placeholder="Description of Drug Abuse Issues......" disabled></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row w-100">
                                    <h6 class="text-uppercase font-weight-bold">Alcohol Abuse</h6>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-4 text-right">
                                        <label id="lblAlcoholIssue">Issues Identified</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="radio" name="rgpAlcoholIssue" id="rAlcoholIssueYes" value="yes" class="gp-update-field edit-alcohol-issue" disabled>
                                        <label for="rAlcoholIssueYes">YES</label>&nbsp;&nbsp;
                                            <input type="radio" name="rgpAlcoholIssue" id="rAlcoholIssueNo" value="no" class="gp-update-field" checked disabled>
                                        <label for="rAlcoholIssueNo">NO</label>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-4 text-right">
                                        <label id="lblAlcoholIssueDesc">Description</label>
                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="txtAlcoholIssueDesc" CssClass="form-control gp-update-field edit-alcohol-desc" TextMode="MultiLine" placeholder="Description of Alcohol Abuse Issues......" disabled></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Detail for Medical Info -->
                    </div>
                    <!-- End Medical Info -->

                    <!-- Start Financial Info -->
                    <div class="card">
                        <div class="card-header" id="gpFinancialInfo">
                            <h5 class="mb-0">
                                <button class="btn btn-link text-uppercase font-weight-bold w-75 show-profile" type="button" data-toggle="collapse" data-target="#divFinancialInfo" aria-expanded="false" aria-controls="divFinancialInfo">
                                    Financial Info
                                </button>
                                <span><i class="fas fa-edit hover edit-pencil gp-edit-icon"></i></span>
                                <span><i class="fas fa-window-close hover invisible edit-close gp-edit-icon"></i></span>
                                <span><i class="fas fa-check-square hover invisible edit-save gp-edit-icon"></i></span>
                            </h5>
                        </div>
                        <!-- Start Detail for Financial Info -->
                        <div id="divFinancialInfo" class="collapse" aria-labelledby="gpFinancialInfo" data-parent="#accordionParticipantProfile">
                            <div class="card-body">
                                <div class="row w-100">
                                    <h6 class="text-uppercase font-weight-bold">Safety</h6>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-6 text-right">
                                        <label id="lblSafety">Is it safe for client to go home?</label>
                                    </div>
                                    <div class="col-md-6">
                                        <input type="radio" name="rgpSafe" id="rSafeYes" value="yes" class="gp-update-field edit-safety" disabled>
                                        <label for="rSafeYes">YES</label>&nbsp;&nbsp;
                                        <input type="radio" name="rgpSafe" id="rSafeNo" value="no" class="gp-update-field" checked disabled>
                                        <label for="rSafeNo">NO</label>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <h6 class="text-uppercase font-weight-bold">Household Income</h6>
                                    <div class="col-md-4">
                                        <asp:TextBox runat="server" ID="txtIncome" CssClass="form-control gp-update-field edit-household-income" placeholder="$35,000" disabled></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row w-100">
                                    <h6 class="text-uppercase font-weight-bold">Transportation</h6>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-4 text-right">
                                        <label id="lblTransportIssue">Issues Identified</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="radio" name="rgpTransportIssue" id="rTransportIssueYes" value="yes" class="gp-update-field edit-transport-issue" disabled>
                                        <label for="rTransportIssueYes">YES</label>&nbsp;&nbsp;
                                        <input type="radio" name="rgpTransportIssue" id="rTransportIssueNo" value="no" checked class="gp-update-field" disabled>
                                        <label for="rTransportIssueNo">NO</label>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-4 text-right">
                                        <label id="lblTransportIssueDesc">Description</label>
                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="txtTransportIssueDesc" CssClass="form-control gp-update-field edit-transport-desc" TextMode="MultiLine" placeholder="Description of Transportation Issues......" disabled></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row w-100">
                                    <h6 class="text-uppercase font-weight-bold">Housing</h6>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-4 text-right">
                                        <label id="lblHousingIssue">Issues Identified</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="radio" name="rgpHousingIssue" id="rHousingIssueYes" value="yes" class="gp-update-field edit-housing-issue" disabled>
                                        <label for="rHousingIssueYes">YES</label>&nbsp;&nbsp;
                                        <input type="radio" name="rgpHousingIssue" id="rHousingIssueNo" value="no" checked class="gp-update-field" disabled>
                                        <label for="rHousingIssueNo">NO</label>
                                    </div>
                                </div>
                                <div class="row w-100">
                                    <h6 class="text-uppercase font-weight-bold">Responsibilities</h6>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <asp:TextBox runat="server" ID="txtResponsibilityDesc" CssClass="form-control gp-update-field edit-reponsibility-desc" TextMode="MultiLine" placeholder="Description of Responsibilities......" disabled></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row w-100">
                                    <h6 class="text-uppercase font-weight-bold">Stressors</h6>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <asp:TextBox runat="server" ID="txtStressDesc" CssClass="form-control gp-update-field edit-stressor-desc" TextMode="MultiLine" placeholder="Description of Stressors......" disabled></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Detail for Financial Info -->
                    </div>
                    <!-- End Financial Info -->

                    <!-- Start Case Notes -->
                    <div class="card">
                        <div class="card-header" id="gpCaseNote">
                            <h5 class="mb-0">
                                <button class="btn btn-link text-uppercase font-weight-bold w-75 show-profile" type="button" data-toggle="collapse" data-target="#divCaseNote" aria-expanded="false" aria-controls="divCaseNote">
                                    Case Notes
                                </button>
                                <span><i class="fas fa-edit hover edit-pencil gp-edit-icon"></i></span>
                                <span><i class="fas fa-window-close hover invisible edit-close gp-edit-icon"></i></span>
                                <span><i class="fas fa-check-square hover invisible edit-save gp-edit-icon"></i></span>
                            </h5>
                        </div>
                        <!-- Start Detail for Case Notes -->
                        <div id="divCaseNote" class="collapse" aria-labelledby="gpCaseNote" data-parent="#accordionParticipantProfile">
                            <div class="card-body">
                                <div class="row form-group">
                                    <div class="col-md-12 text-right">
                                        <asp:DropDownList runat="server" ID="ddlCaseNote" CssClass="form-control">
                                            <asp:ListItem Value=""> Select Existing Case Notes...</asp:ListItem>
                                            <asp:ListItem Value="0">Tuesday, March 10th, Call</asp:ListItem>
                                            <asp:ListItem Value="1">Thursday, March 19th, In-Person</asp:ListItem>
                                            <asp:ListItem Value="2">Friday, March 27th, Call</asp:ListItem>
                                            <asp:ListItem Value="3">Monday, March 30th, Call</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-4 text-right">
                                        <label id="lblContactMethod">Contact Method</label>
                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="txtContactMethod" CssClass="form-control edit-contact-method gp-update-field" placeholder="Phone call" disabled></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-4 text-right">
                                        <label id="lblActionItem">Action Items</label>
                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="txtActionItem" CssClass="form-control edit-action-item gp-update-field" TextMode="MultiLine" placeholder="Description of Action Items......" disabled></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-4 text-right">
                                        <label id="lblCaseNoteSummary">Summary</label>
                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="txtCaseNoteSummary" CssClass="form-control edit-summary gp-update-field" TextMode="MultiLine" placeholder="Summary of Case notes......" disabled></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Detail for Case Notes -->
                    </div>
                    <!-- End Case Notes -->

                    <!-- Start Indicators -->
                    <div class="card">
                        <div class="card-header" id="gpIndicator">
                            <h5 class="mb-0">
                                <button class="btn btn-link text-uppercase font-weight-bold w-75 show-profile" type="button" data-toggle="collapse" data-target="#divIndicator" aria-expanded="false" aria-controls="divIndicator">
                                    Indicators
                                </button>
                                <span><i class="fas fa-edit hover edit-pencil gp-edit-icon" data-toggle="modal" data-target="#modalAddCompletedIndicator"></i></span>
                                <span><i class="fas fa-window-close hover invisible edit-close gp-edit-icon"></i></span>
                                <span><i class="fas fa-check-square hover invisible edit-save gp-edit-icon"></i></span>
                            </h5>
                        </div>
                        <!-- Start Detail for Indicator -->
                        <div id="divIndicator" class="collapse" aria-labelledby="gpIndicator" data-parent="#accordionParticipantProfile">
                            <div class="card-body">
                                <table class="table table-hover" style="border-collapse: collapse;">
                                    <thead class="font-weight-bold bg-primary text-white">
                                        <tr>
                                            <th>Indicators</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr data-toggle="collapse" data-target="#indicator01" class="accordion-toggle">
                                            <td>Financial Literacy</td>
                                            <td>
                                                <asp:Button runat="server" CssClass="btn btn-danger remove-indicator" Text="Remove"></asp:Button></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" class="hiddenRow">
                                                <div id="indicator01" class="accordian-body collapse">Description for Financial Literacy...........</div>
                                            </td>
                                        </tr>
                                        <tr data-toggle="collapse" data-target="#indicator02" class="accordion-toggle">
                                            <td>Digital Literacy</td>
                                            <td>
                                                <asp:Button runat="server" CssClass="btn btn-danger remove-indicator" Text="Remove"></asp:Button></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" class="hiddenRow">
                                                <div id="indicator02" class="accordian-body collapse">Digital Literacy description goes here</div>
                                            </td>
                                        </tr>
                                        <tr data-toggle="collapse" data-target="#indicator03" class="accordion-toggle">
                                            <td>Financial Literacy </td>
                                            <td>
                                                <asp:Button runat="server" CssClass="btn btn-danger remove-indicator" Text="Remove"></asp:Button></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" class="hiddenRow">
                                                <div id="indicator03" class="accordian-body collapse">Financial Literacy description goes here</div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- End Detail for Indicator -->
                    </div>
                    <!-- End Indicators -->

                    <!-- Start Goals -->
                    <div class="card">
                        <div class="card-header" id="gpGoal">
                            <h5 class="mb-0">
                                <button class="btn btn-link text-uppercase font-weight-bold w-75 show-profile" type="button" data-toggle="collapse" data-target="#divGoal" aria-expanded="false" aria-controls="divGoal">
                                    Goals
                                </button>
                                <span><i class="fas fa-edit hover edit-pencil gp-edit-icon"></i></span>
                                <span><i class="fas fa-window-close hover invisible edit-close gp-edit-icon"></i></span>
                                <span><i class="fas fa-check-square hover invisible edit-save gp-edit-icon"></i></span>
                            </h5>
                        </div>
                        <!-- Start Detail for Goal -->
                        <div id="divGoal" class="collapse" aria-labelledby="gpGoal" data-parent="#accordionParticipantProfile">
                            <div class="card-body">
                                <div class="row form-group">
                                    <div class="col-md-4 text-right">
                                        <label id="lblGoalName">Goal Name</label>
                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="txtGoalName" CssClass="form-control edit-goal-name gp-update-field" placeholder="" disabled></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-4 text-right">
                                        <label id="lblGoalDesc">Goal Description</label>
                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="txtGoalDesc" CssClass="form-control edit-goal-desc gp-update-field" TextMode="MultiLine" placeholder="Description of Goal......" disabled></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-4 text-right">
                                        <label id="lblActionStep">Action Steps</label>
                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="txtActionStep" CssClass="form-control edit-action-step gp-update-field" TextMode="MultiLine" placeholder="Action Steps of Goal......" disabled></asp:TextBox>
                                    </div>
                                </div>
                                <div runat="server" id="divPlaceholder"></div>
                                <div class="row form-group">
                                    <div class="col-md-12 text-right">
                                        <!--<span><i class="fas fa-plus-square hover add-icon"></i></span>!-->
                                        <button runat="server" type="button" id="btnAddGoals" class="btn btn-sm">
                                            <span><i class="fas fa-plus-square hover add-icon"></i></span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Detail for Goal -->

                    </div>
                    <!-- End Goals -->

                    <!-- Start Additional Info -->
                    <div class="card">
                        <div class="card-header" id="gpAdditionalInfo">
                            <h5 class="mb-0">
                                <button class="btn btn-link text-uppercase font-weight-bold w-75 show-profile" type="button" data-toggle="collapse" data-target="#divAdditionalInfo" aria-expanded="false" aria-controls="divAdditionalInfo">
                                    Additional Info
                                </button>
                                <span><i class="fas fa-edit hover edit-pencil gp-edit-icon"></i></span>
                                <span><i class="fas fa-window-close hover invisible edit-close gp-edit-icon"></i></span>
                                <span><i class="fas fa-check-square hover invisible edit-save gp-edit-icon"></i></span>
                            </h5>
                        </div>
                        <!-- Start Detail for Additional Info -->
                        <div id="divAdditionalInfo" class="collapse" aria-labelledby="gpAdditionalInfo" data-parent="#accordionParticipantProfile">
                            <div class="card-body">
                                <div class="row form-group">
                                    <div class="col-md-4 text-right">
                                        <label id="lblComment">Comments</label>
                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="txtComment" CssClass="form-control edit-comment-desc gp-update-field" TextMode="MultiLine" placeholder="Description of Additional Info......" disabled></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Detail for Additional Info -->
                    </div>
                    <!-- End AdditionalInfo -->

                </div>
            </div>
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="EndBodyPlaceholder" runat="server">
    <script>
        var arrProfileDataOrg = {};
        var arrProfileFieldMapping = {
            'demographic-info': ['phone', 'tanf', 'lnpwi', 'exoffender', 'education', 'veteran', 'ethnicity', 'race', 'language', 'disability'],
            'medical-info': ['medical-adequate', 'medical-issue', 'medical-desc', 'mental-adequate', 'mental-issue',
                'drug-issue', 'drug-desc', 'alcohol-issue', 'alcohol-desc'],
            'financial-info': ['safety', 'household-income', 'transport-issue', 'transport-desc',
                'housing-issue', 'responsibility-desc', 'stressor-desc'],
            'case-note': ['contact-method', 'action-item', 'summary'],
            'goal': ['goal-name', 'goal-desc', 'goal-action-step'],
            'additional-info': ['comment-desc']
        }

        // Common method for all groups
        function storeAllDataOrg(mappingName, editArea) {
            var arr = arrProfileFieldMapping[mappingName];

            for (element of arr) {
                var editDom = $('#' + editArea + ' .edit-' + element);
                var value = editDom.val();
                // proceed for the dropdown list
                if (editDom.length == 2) {
                    value = $(editDom[1]).val();
                }
                if ($(editDom).attr('type') == 'radio') {
                    value = $(editDom).parent().find('input[type="radio"]:checked').val();
                }
                arrProfileDataOrg[element] = value;
            }
        }

        function checkChangedAllDataOrg(mappingName, editArea) {
            var arr = arrProfileFieldMapping[mappingName];
            var flag = false;

            for (element of arr) {
                var editDom = $('#' + editArea + ' .edit-' + element);
                var value = editDom.val();
                // proceed for the dropdown list
                if (editDom.length == 2) {
                    value = $(editDom[1]).val();
                    if (value.length == 0)
                        value = "";
                }
                if ($(editDom).attr('type') == 'radio') {
                    value = $(editDom).parent().find('input[type="radio"]:checked').val();
                }
                if (arrProfileDataOrg[element] != value) return true;
            }
            return flag;
        }

        $('.gp-update-field').on("change", function () {
            var mappingName = $(this).attr('class').match(/edit-([^\s]+)/)[1];

            if ($(this).val() != arrProfileDataOrg[mappingName]) {
                $(this).addClass('text-primary');
            }
            else {
                $(this).removeClass('text-primary');
            }
        });

        //$('.card-header').on('click', function (event) {
        //    var currentCardOpen = $('.card').find('.show');
        //    if (currentCardOpen) {
        //        var isOtherCardOpen = $(currentCardOpen).prev().is($(this));
        //        if (isOtherCardOpen && editing)
        //    }
        //});

        $("#navlinkParticipants").addClass("active");

        // Add the following code if you want the name of the file appear on select
        $(".custom-file-input").on("change", function () {
            var fileName = $(this).val().split("\\").pop();
            $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
        });

        /* --- Start for the group Demographic Info --- */
        $("#gpDemographicInfo .show-profile").on("click", function (event) {
            if ($("#gpDemographicInfo .edit-pencil").hasClass("invisible")) {
                $("#gpDemographicInfo .edit-close").click();
                event.stopPropagation();
            }
        });

        $("#gpDemographicInfo .edit-pencil").on("click", function () {
            if ($('#gpDemographicInfo .show-profile').attr('aria-expanded') == 'false')
                $("#gpDemographicInfo .show-profile").click();

            $("#divDemographicInfo .gp-update-field").attr("disabled", false);
            if ($("#divDemographicInfo .gp-update-field").hasClass('dropdown'))
                $("#divDemographicInfo .gp-update-field").next().removeClass('disabled');
            $("#gpDemographicInfo .gp-edit-icon").toggleClass("invisible");
            storeAllDataOrg('demographic-info', 'divDemographicInfo');
        });


        $("#gpDemographicInfo .edit-close").on("click", function () {
            if (checkChangedAllDataOrg('demographic-info', 'divDemographicInfo'))
                $("#gpDemographicInfo .edit-save").click();
            else {
                $("#divDemographicInfo .gp-update-field").attr("disabled", true).removeClass("text-primary");
                if ($("#divDemographicInfo .gp-update-field").hasClass('dropdown'))
                    $("#divDemographicInfo .gp-update-field").next().addClass('disabled');
                
                $("#gpDemographicInfo .gp-edit-icon").toggleClass("invisible");
                $("#gpDemographicInfo .show-profile").click();
            }
        });

        $("#gpDemographicInfo .edit-save").on("click", function () {
            confirmSave(
                save = () => {
                    $("#divDemographicInfo .gp-update-field").attr("disabled", true).removeClass("text-primary");
                    $("#gpDemographicInfo .gp-edit-icon").toggleClass("invisible");
                    $("#gpDemographicInfo .show-profile").click();
                    // Save data to server here
                }
            );
        });

        /* --- End for the group Demographic Info --- */

        /* --- Start for the group Medical Info --- */
        $("#gpMedicalInfo .show-profile").on("click", function (event) {
            if ($("#gpMedicalInfo .edit-pencil").hasClass("invisible")) {
                $("#gpMedicalInfo .edit-close").click();
                event.stopPropagation();
            }
        });

        $("#gpMedicalInfo .edit-pencil").on("click", function () {
            if ($('#gpMedicalInfo .show-profile').attr('aria-expanded') == 'false')
                $("#gpMedicalInfo .show-profile").click();

            $("#divMedicalInfo .gp-update-field").attr("disabled", false);
            $("#gpMedicalInfo .gp-edit-icon").toggleClass("invisible");
            storeAllDataOrg('medical-info', 'divMedicalInfo');
        });


        $("#gpMedicalInfo .edit-close").on("click", function () {
            if (checkChangedAllDataOrg('medical-info', 'divMedicalInfo'))
                $("#gpMedicalInfo .edit-save").click();
            else {
                $("#divMedicalInfo .gp-update-field").attr("disabled", true).removeClass("text-primary");
                $("#gpMedicalInfo .gp-edit-icon").toggleClass("invisible");
                $("#gpMedicalInfo .show-profile").click();
            }
        });

        $("#gpMedicalInfo .edit-save").on("click", function () {
            confirmSave(
                save = () => {
                    $("#divMedicalInfo .gp-update-field").attr("disabled", true).removeClass("text-primary");
                    $("#gpMedicalInfo .gp-edit-icon").toggleClass("invisible");
                    $("#gpMedicalInfo .show-profile").click();
                    // Save data to server here
                }
            );
        });
        /* --- End for the group Medical Info --- */

        /* --- Start for the group Financial Info --- */
        $("#gpFinancialInfo .show-profile").on("click", function (event) {
            if ($("#gpFinancialInfo .edit-pencil").hasClass("invisible")) {
                $("#gpFinancialInfo .edit-close").click();
                event.stopPropagation();
            }
        });

        $("#gpFinancialInfo .edit-pencil").on("click", function () {
            if ($('#gpFinancialInfo .show-profile').attr('aria-expanded') == 'false')
                $("#gpFinancialInfo .show-profile").click();

            $("#divFinancialInfo .gp-update-field").attr("disabled", false);
            $("#gpFinancialInfo .gp-edit-icon").toggleClass("invisible");
            storeAllDataOrg('financial-info', 'divFinancialInfo');
        });

        $("#gpFinancialInfo .edit-close").on("click", function () {
            if (checkChangedAllDataOrg('financial-info', 'divFinancialInfo'))
                $("#gpFinancialInfo .edit-save").click();
            else {
                $("#divFinancialInfo .gp-update-field").attr("disabled", true).removeClass("text-primary");
                $("#gpFinancialInfo .gp-edit-icon").toggleClass("invisible");
                $("#gpFinancialInfo .show-profile").click();
            }
        });

        $("#gpFinancialInfo .edit-save").on("click", function () {
            confirmSave(
                save = () => {
                    $("#divFinancialInfo .gp-update-field").attr("disabled", true).removeClass("text-primary");
                    $("#gpFinancialInfo .gp-edit-icon").toggleClass("invisible");
                    $("#gpFinancialInfo .show-profile").click();
                    // Save data to server here
                }
            );
        });
        /* --- End for the group Financial Info --- */

        /* --- Start for the group Case Notes Info --- */
        $("#gpCaseNote .show-profile").on("click", function () {
            if ($("#gpCaseNote .edit-pencil").hasClass("invisible"))
                $("#gpCaseNote .edit-close").click();
        });

        $("#gpCaseNote .edit-pencil").on("click", function () {
            if ($('#gpCaseNote .show-profile').attr('aria-expanded') == 'false')
                $("#gpCaseNote .show-profile").click();

            $("#divCaseNote .gp-update-field").attr("disabled", false);
            $("#gpCaseNote .gp-edit-icon").toggleClass("invisible");
            storeAllDataOrg('case-note', 'divCaseNote');
        });

        $("#gpCaseNote .edit-close").on("click", function () {
            if (checkChangedAllDataOrg('case-note', 'divCaseNote'))
                $("#gpCaseNote .edit-save").click();
            else {
                $("#divCaseNote .gp-update-field").attr("disabled", true)
                $("#gpCaseNote .gp-edit-icon").toggleClass("invisible");
                $("#gpCaseNote .show-profile").click();
            }
        });

        $("#gpCaseNote .edit-save").on("click", function () {
            confirmSave(
                save = () => {
                    $("#divCaseNote .gp-update-field").attr("disabled", true).removeClass("text-primary");
                    $("#gpCaseNote .gp-edit-icon").toggleClass("invisible");
                    $("#gpCaseNote .show-profile").click();
                    // Save data to server here
                }
            );
        });
        /* --- End for the group Case Notes Info --- */

        /* --- Start for the group Indicators Info --- */
        /* --- End for the group Indicators Info --- */

        /* --- Start for the group Goals Info --- */
        $("#gpGoal .show-profile").on("click", function () {
            if ($("#gpGoal .edit-pencil").hasClass("invisible"))
                $("#gpGoal .edit-close").click();
        });

        $("#gpGoal .edit-pencil").on("click", function () {
            if ($('#gpGoal .show-profile').attr('aria-expanded') == 'false')
                $("#gpGoal .show-profile").click();

            $("#divGoal .gp-update-field").attr("disabled", false);
            $("#gpGoal .gp-edit-icon").toggleClass("invisible");
            storeAllDataOrg('goal', 'divGoal');
        });

        $("#gpGoal .edit-close").on("click", function () {
            if (checkChangedAllDataOrg('goal', 'divGoal'))
                $("#gpGoal .edit-save").click();
            else {
                $("#divGoal .gp-update-field").attr("disabled", true);
                $("#gpGoal .gp-edit-icon").toggleClass("invisible");
                $("#gpGoal .show-profile").click();
            }
        });

        $("#gpGoal .edit-save").on("click", function () {
            confirmSave(
                save = () => {
                    $("#divGoal .gp-update-field").attr("disabled", true).removeClass("text-primary");
                    $("#gpGoal .gp-edit-icon").toggleClass("invisible");
                    $("#gpGoal .show-profile").click();
                    // Save data to server here
                }
            );
        });

        /* --- End for the group Goals Info --- */

        /* --- Start for the group Additional Info --- */
        $("#gpAdditionalInfo .show-profile").on("click", function () {
            if ($("#gpAdditionalInfo .edit-pencil").hasClass("invisible"))
                $("#gpAdditionalInfo .edit-close").click();
        });

        $("#gpAdditionalInfo .edit-pencil").on("click", function () {
            if ($('#gpAdditionalInfo .show-profile').attr('aria-expanded') == 'false')
                $("#gpAdditionalInfo .show-profile").click();

            $("#divAdditionalInfo .gp-update-field").attr("disabled", false);
            $("#gpAdditionalInfo .gp-edit-icon").toggleClass("invisible");
            storeAllDataOrg('additional-info', 'divAdditionalInfo');
        });

        $("#gpAdditionalInfo .edit-close").on("click", function () {
            if (checkChangedAllDataOrg('additional-info', 'divAdditionalInfo'))
                $("#gpAdditionalInfo .edit-save").click();
            else {
                $("#divAdditionalInfo .gp-update-field").attr("disabled", true);
                $("#gpAdditionalInfo .gp-edit-icon").toggleClass("invisible");
                $("#gpAdditionalInfo .show-profile").click();
            }
        });

        $("#gpAdditionalInfo .edit-save").on("click", function () {
            confirmSave(
                save = () => {
                    $("#divAdditionalInfo .gp-update-field").attr("disabled", true).removeClass("text-primary");
                    $("#gpAdditionalInfo .gp-edit-icon").toggleClass("invisible");
                    $("#gpAdditionalInfo .show-profile").click();
                    // Save data to server here
                }
            );
        });
        /* --- End for the group Additional Info --- */

        //Common methods
        function confirmSave(save) {
            var response = confirm("The updated data will be saved.");
            if (response) save();
        }

    </script>
</asp:Content>
