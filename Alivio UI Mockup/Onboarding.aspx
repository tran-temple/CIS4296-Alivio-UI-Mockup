<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Onboarding.aspx.cs" Inherits="Alivio_UI_Mockup.Onboarding" %>

<%@ Register Src="~/UserContols/goal.ascx" TagPrefix="uc1" TagName="goal" %>
<%@ Register Src="~/UserContols/modalChangeCycle.ascx" TagPrefix="uc1" TagName="modalChangeCycle" %>




<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceholder" runat="server">

    <style>
      
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyPlaceholder" runat="server">
    <uc1:modalChangeCycle runat="server" ID="modalChangeCycle" />
    <script>$("#navlinkParticipants").addClass("active");</script>
    <div class="row justify-content-center mt-5">
        <div class="col text-center">
            <h1 class="display-4 text-uppercase font-weight-bold">Enroll Participant</h1>
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
    <div id="divPageOne" runat="server">
        <div class="progress">
            <div class="progress-bar bg-danger" role="progressbar" style="width: 25%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100">Basic </div>
            <div class="progress-bar bg-light" role="progressbar" style="width: 25%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100">Demographic</div>
            <div class="progress-bar bg-light" role="progressbar" style="width: 25%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">Financial</div>
            <div class="progress-bar bg-light" role="progressbar" style="width: 25%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">Medical</div>
            <div class="progress-bar bg-light" role="progressbar" style="width: 25%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">Goals & Additional</div>
        </div>
        <br />
        <div>

            <div class="row w-100">
                <h5 class="text-success">Basic Information</h5>
            </div>
            <div class="row form-group required">
                <div class="col-md-4">
                    <label id="lblEarnID">CWDS ID </label>
                    <asp:TextBox runat="server" ID="txtEarnID" CssClass="form-control required" placeholder="ex: 99999"> </asp:TextBox>
                </div>
                <div class="col-md-4">
                    <label id="lblFName">First Name </label>

                    <asp:TextBox runat="server" ID="txtFName" CssClass="form-control" placeholder="ex: Mary"> </asp:TextBox>

                </div>
                <div class="col-md-4">
                    <label id="lblLName">Last Name </label>

                    <asp:TextBox runat="server" ID="txtLName" CssClass="form-control" placeholder="ex: Smith"> </asp:TextBox>
                </div>
            </div>
            <div class="row form-group required">
                <div class="col-md-6">
                    <label id="lblStAddress1">Street Address 1</label>

                    <asp:TextBox runat="server" ID="txtStAddress1" CssClass="form-control" placeholder="ex: 1900 Broad Street"> </asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label id="lblStAddress2" class="notRequired">Street Address 2</label>
                    <asp:TextBox runat="server" ID="txtStAddress2" CssClass="form-control" placeholder="ex: Apt 3B"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group required">
                <div class="col-md-4">
                    <label id="lblCity">City </label>

                    <asp:TextBox runat="server" ID="txtCity" CssClass="form-control" placeholder="ex: Philadelphia"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <label id="lblState">State </label>

                    <asp:DropDownList runat="server" ID="ddlState" CssClass="form-control selectpicker">
                        <asp:ListItem Value="-1">Select State... </asp:ListItem>
                        <asp:ListItem Value="AL">Alabama</asp:ListItem>
                        <asp:ListItem Value="AK">Alaska</asp:ListItem>
                        <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                        <asp:ListItem Value="AR">Arkansas</asp:ListItem>
                        <asp:ListItem Value="CA">California</asp:ListItem>
                        <asp:ListItem Value="CO">Colorado</asp:ListItem>
                        <asp:ListItem Value="CT">Connecticut</asp:ListItem>
                        <asp:ListItem Value="DE">Delaware</asp:ListItem>
                        <asp:ListItem Value="FL">Florida</asp:ListItem>
                        <asp:ListItem Value="GA">Georgia</asp:ListItem>
                        <asp:ListItem Value="HI">Hawaii</asp:ListItem>
                        <asp:ListItem Value="ID">Idaho</asp:ListItem>
                        <asp:ListItem Value="IL">Illinois</asp:ListItem>
                        <asp:ListItem Value="IN">Indiana</asp:ListItem>
                        <asp:ListItem Value="IA">Iowa</asp:ListItem>
                        <asp:ListItem Value="KS">Kansas</asp:ListItem>
                        <asp:ListItem Value="KY">Kentucky</asp:ListItem>
                        <asp:ListItem Value="LA">Louisiana</asp:ListItem>
                        <asp:ListItem Value="ME">Maine</asp:ListItem>
                        <asp:ListItem Value="MD">Maryland</asp:ListItem>
                        <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
                        <asp:ListItem Value="MI">Michigan</asp:ListItem>
                        <asp:ListItem Value="MN">Minnesota</asp:ListItem>
                        <asp:ListItem Value="MS">Mississippi</asp:ListItem>
                        <asp:ListItem Value="MO">Missouri</asp:ListItem>
                        <asp:ListItem Value="MT">Montana</asp:ListItem>
                        <asp:ListItem Value="NE">Nebraska</asp:ListItem>
                        <asp:ListItem Value="NV">Nevada</asp:ListItem>
                        <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
                        <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
                        <asp:ListItem Value="NM">New Mexico</asp:ListItem>
                        <asp:ListItem Value="NY">New York</asp:ListItem>
                        <asp:ListItem Value="NC">North Carolina</asp:ListItem>
                        <asp:ListItem Value="ND">North Dakota</asp:ListItem>
                        <asp:ListItem Value="OH">Ohio</asp:ListItem>
                        <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
                        <asp:ListItem Value="OR">Oregon</asp:ListItem>
                        <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
                        <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
                        <asp:ListItem Value="SC">South Carolina</asp:ListItem>
                        <asp:ListItem Value="SD">South Dakota</asp:ListItem>
                        <asp:ListItem Value="TN">Tennessee</asp:ListItem>
                        <asp:ListItem Value="TX">Texas</asp:ListItem>
                        <asp:ListItem Value="UT">Utah</asp:ListItem>
                        <asp:ListItem Value="VT">Vermont</asp:ListItem>
                        <asp:ListItem Value="VA">Virginia</asp:ListItem>
                        <asp:ListItem Value="WA">Washington</asp:ListItem>
                        <asp:ListItem Value="WV">West Virginia</asp:ListItem>
                        <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
                        <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-4">
                    <label id="lblZip">Zip Code </label>

                    <asp:TextBox runat="server" ID="txtZip" CssClass="form-control" placeholder="ex: 19115"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group required">
                <div class="col-md-4">
                    <label id="lblEmail">Email </label>
                    <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" placeholder="ex: johndoe@gmail.com"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <label id="lblPrimaryPhone">Primary Phone Number </label>

                    <asp:TextBox runat="server" ID="txtPrimaryPhone" CssClass="form-control" placeholder="ex: 215-888-8888"></asp:TextBox>

                </div>
                <div class="col-md-4 ">
                    <label id="lblAltPhone" class="notRequired">Alternate Phone Number </label>
                    <asp:TextBox runat="server" ID="txtAltPhone" CssClass="form-control" placeholder="ex: 215-888-8889"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group ">
                <div class="col-md-4">
                    <label id="lblEmployer">Employer</label>
                    <asp:TextBox runat="server" ID="txtEmployer" placeholder="ShopRite" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <label id="lblPartnerAgencies" class="notRequired">Partner Agency</label>
                    <asp:DropDownList runat="server" ID="lbPartnerAgencies" CssClass="form-control selectpicker" data-selected-text-format="count > 3" multiple="multiple">
                        <asp:ListItem> Select Partner Agency..</asp:ListItem>
                        <asp:ListItem> Child Welfare</asp:ListItem>
                        <asp:ListItem> Domestic Violence Services</asp:ListItem>
                        <asp:ListItem> Mental Health Services</asp:ListItem>
                        <asp:ListItem>Corrections/Parole & Probation</asp:ListItem>
                        <asp:ListItem> WIC</asp:ListItem>
                        <asp:ListItem> Social Security</asp:ListItem>
                        <asp:ListItem> Legal Assistance/Aid</asp:ListItem>
                        <asp:ListItem>Divison of Child Support</asp:ListItem>
                        <asp:ListItem>Drug or Alcohol Services</asp:ListItem>
                        <asp:ListItem> CareerLink</asp:ListItem>
                        <asp:ListItem>PACL</asp:ListItem>
                        <asp:ListItem> Support Groups</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-4">
                    <label id="lblPhotoUpload" class="notRequired">Photo Upload</label>
                    <asp:FileUpload runat="server" ID="fileUpload" CssClass="d-flex align-content-end " />
                </div>
            </div>
        </div>
        <br />


        <div class="row d-flex justify-content-end">
            <asp:LinkButton runat="server" ID="lbNextPageDemo" CssClass="btn btn-primary" OnClick="lbNextPageDemo_Click"> Next <i class="fas fa-arrow-right"></i></asp:LinkButton>
        </div>
    </div>

    <div class="pagesHidden" id="divPageDemographic" runat="server">
        <div class="progress">
            <div class="progress-bar bg-success" role="progressbar" style="width: 20%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100">Basic </div>
            <div class="progress-bar bg-danger" role="progressbar" style="width: 20%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100">Demographic</div>
            <div class="progress-bar bg-light" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">Financial</div>
            <div class="progress-bar bg-light" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">Medical</div>
            <div class="progress-bar bg-light" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">Goals & Additional</div>
        </div>
        <br />
        <div>
            <div class="row w-100">
                <h5 class="text-success">Demographic Information</h5>
            </div>
            <div class="row form-group required">
                <div class="col-md-3">
                    <label id="lblTANF" runat="server">Extended TANF Recipient</label>
                    <asp:TextBox runat="server" ID="txtTANF" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-5">
                    <label id="lblLNPWI" runat="server">Does Participant reside in LNPWI in Target Area</label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton runat="server" ID="rLNPWIYes" Text="YES" />&nbsp;
                    <asp:RadioButton runat="server" ID="rLNPWINo" Text="NO" />
                </div>
                <div class="col-md-4">
                    <label id="lblExOffender" runat="server">Is participant an ex-offender</label><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton runat="server" ID="rOffenderYes" Text="YES" />&nbsp;
                    <asp:RadioButton runat="server" ID="rOffenderNo" Text="NO" />
                </div>
            </div>

            <div class="row form-group required">
                <div class="col-md-4">
                    <label id="lblEducation">Highest Education Level Completed</label>

                    <asp:DropDownList runat="server" ID="ddlEducation" CssClass="form-control selectpicker">
                        <asp:ListItem Value="-1"> Select Education Level...</asp:ListItem>
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
                <div class="col-md-4">
                    <label id="lblVeteranStat">Veteran Status</label>

                    <asp:DropDownList runat="server" CssClass="form-control selectpicker" ID="ddlVeteran">
                        <asp:ListItem Value="-1"> Select Veteran Status...</asp:ListItem>
                        <asp:ListItem Value="protected"> Protected Veteran</asp:ListItem>
                        <asp:ListItem Value="notProtected"> Not a Protected Veteran</asp:ListItem>
                        <asp:ListItem Value="notAVeteran"> Not A Veteran</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-4">
                    <label id="lblDisability" class="notRequired">Disability</label>

                    <asp:DropDownList runat="server" ID="ddlDisability" CssClass="form-control selectpicker" data-selected-text-format="count > 3" multiple="multiple">
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
            <div class="row form-group required">
                <div class="col-md-6">
                    <label id="lblRace">Race</label>

                    <asp:DropDownList runat="server" ID="ddlRace" CssClass="form-control selectpicker" data-selected-text-format="count > 3" multiple="multiple">
                        <asp:ListItem Value="American Indian or Alaska Native"> American Indian or Alaska Native </asp:ListItem>
                        <asp:ListItem Value="Asian"> Asian</asp:ListItem>
                        <asp:ListItem Value="Black or African American"> Black or African American</asp:ListItem>
                        <asp:ListItem Value="Hispanic or Latino"> Hispanic or Latino</asp:ListItem>
                        <asp:ListItem Value="Native Hawaiian or Other Pacific Islander">Native Hawaiian or Other Pacific Islander</asp:ListItem>
                        <asp:ListItem Value="White"> White</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-6">
                    <label id="lblEthnicity">Ethnicity</label>

                    <asp:DropDownList runat="server" ID="ddlEthnicity" CssClass="form-control selectpicker" data-selected-text-format="count > 3" multiple="multiple">
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
            </div>

            <div class="row form-group required" id="languages" runat="server">
                <div class="col-md-6">
                    <label id="lblLanguage">Language(s)</label>
                    <asp:DropDownList ID="ddlLanguage" runat="server" CssClass="form-control selectpicker" data-selected-text-format="count > 3" multiple="multiple">
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
            </div>
        </div>


        <div class="row d-flex justify-content-end">
            <asp:LinkButton runat="server" ID="btnNextPage" CssClass="btn btn-primary" OnClick="btnNextPage_Click1"> Next <i class="fas fa-arrow-right"></i></asp:LinkButton>
        </div>


    </div>

    <div class="pagesHidden" id="divPageTwo" runat="server">
        <div class="progress">
            <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100">Basic </div>
            <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100">Demographic</div>
            <div class="progress-bar bg-danger" role="progressbar" style="width: 25%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">Financial</div>
            <div class="progress-bar bg-light" role="progressbar" style="width: 25%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">Medical</div>
            <div class="progress-bar bg-light" role="progressbar" style="width: 25%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">Goals & Additional</div>

        </div>
        <br />
        <div class="row w-100">
            <h5 class="text-success">Financial Security</h5>
        </div>

        <div class="row form-group required">
            <label id="lblIncome">Household Income </label>

            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text ">$</span>
                </div>
                <div runat="server">
                    <asp:TextBox runat="server" ID="txtIncome" CssClass="form-control" placeholder=" 35,000"> </asp:TextBox>
                </div>
            </div>
        </div>

        <div class="row form-group">
            <div class="card w-50 ">
                <label id="lblTransportation" class="notRequired">Transportation</label>
                <div class="test">
                    <div class="form-group row">
                        <label id="lblTransIssues" class="required">Issues Identified </label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton runat="server" ID="rTransYES" Text="YES" />&nbsp;
                    <asp:RadioButton runat="server" ID="rTransNO" Text="NO" />
                    </div>
                    <label id="lblTransDesc">Description of Issues</label>
                    <asp:TextBox runat="server" ID="txtTransDesc" CssClass="form-control" TextMode="MultiLine" placeholder="Description of Issues"> </asp:TextBox>

                    <br />
                    <label id="lblTransResp">Responsibilies</label>
                    <asp:TextBox runat="server" ID="txtTransResp" CssClass="form-control" TextMode="MultiLine" placeholder="Responsibilites"> </asp:TextBox>
                </div>
            </div>

            <div class="card w-50 ">
                <label id="lblHousing">Housing</label>
                <div class="test">
                    <div class="form-group row">
                        <label id="lblHousingIssues" class="required">Issues Identified </label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton runat="server" ID="rHousingYES" Text="YES" />&nbsp;
                        <asp:RadioButton runat="server" ID="rHousingNO" Text="NO" />
                    </div>
                    <label id="lblHousingDesc">Description of Issues</label>
                    <asp:TextBox runat="server" ID="txtHousingDesc" CssClass="form-control" TextMode="MultiLine" placeholder="Description of Issues"> </asp:TextBox>
                    <br />
                    <label id="lblHousingStressors">Stressors</label>
                    <asp:TextBox runat="server" ID="txtHousingStressors" CssClass="form-control" TextMode="MultiLine" placeholder="Responsibilites"> </asp:TextBox>
                </div>


            </div>
        </div>

        <div class="row d-flex justify-content-end">
            <asp:LinkButton runat="server" ID="lbNext2" CssClass="btn btn-primary" OnClick="lbNext2_Click"> Next <i class="fas fa-arrow-right"></i></asp:LinkButton>
        </div>
    </div>

    <div id="divPageThree" class="pagesHidden" runat="server">
        <div class="progress">
            <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100">Basic </div>
            <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100">Demographic</div>
            <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">Financial</div>
            <div class="progress-bar bg-danger" role="progressbar" style="width: 25%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">Medical</div>
            <div class="progress-bar bg-light" role="progressbar" style="width: 25%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">Goals & Additional</div>
        </div>
        <br />
        <div class="row w-100">
            <h5 class="text-success">Medical Information</h5>
        </div>
        <div class="row form-group">
            <div class="col-md-4">
                <label id="lblMedicalCare" class="required">Medical Care </label>
                &nbsp;&nbsp;
                <asp:RadioButton runat="server" ID="rMedCareYES" Text="YES" />&nbsp;
                <asp:RadioButton runat="server" ID="rMedCareNO" Text="NO" />
            </div>
            <div class="col-md-4">
                <label id="lblMedAdequateCare">Adequate Care </label>
                &nbsp;&nbsp;
                <asp:RadioButton runat="server" ID="rMedAdequateYES" Text="YES" />&nbsp;
                <asp:RadioButton runat="server" ID="rMedAdequateNO" Text="NO" />
            </div>
            <div class="col-md-4">
                <label id="lblMedIssues">Issues Identified </label>
                &nbsp;&nbsp;
                <asp:RadioButton runat="server" ID="rMedIssuesYES" Text="YES" />&nbsp;
                <asp:RadioButton runat="server" ID="rMedIssuesNO" Text="NO" />
            </div>
        </div>
        <div class="row form-group">
            <div class="col-md-10">
                <label id="lblMedIssueDesc">Description of Issues</label>
                <asp:TextBox runat="server" ID="txtMedIssueDesc" CssClass="form-control" TextMode="MultiLine" placeholder="Description of Issues"></asp:TextBox>
            </div>
        </div>

        <div class="row w-100">
            <h6>Mental Health </h6>
        </div>
        <div class="row form-group">
            <div class="col-md-6">
                <label id="lblMentalAdequateCare" class="required">Adequate Care </label>
                &nbsp;&nbsp;
                <asp:RadioButton runat="server" ID="rMentalAdequateYES" Text="YES" />&nbsp;
                <asp:RadioButton runat="server" ID="rMentalAdequateNO" Text="NO" />
            </div>
            <div class="col-md-6">
                <label id="lblMentalIssues">Issues Identified </label>
                &nbsp;&nbsp;
                <asp:RadioButton runat="server" ID="rMentalIssuesYES" Text="YES" />&nbsp;
                <asp:RadioButton runat="server" ID="rMentalIssuesNO" Text="NO" />
            </div>
        </div>
        <div class="row form-group">
            <div class="col-md-10">
                <label id="lblMentalIssuesDesc">Description of Issues</label>
                <asp:TextBox runat="server" ID="txtMentalIssuesDesc" CssClass="form-control" TextMode="MultiLine" placeholder="Description of Issues"></asp:TextBox>
            </div>
        </div>

        <div class="row w-100">
            <h6>Drug Abuse </h6>
        </div>
        <div class="row form-group">
            <div class="col-md-6">
                <label id="lblDrugAdequateCare" class="required">Adequate Care </label>
                &nbsp;&nbsp;
                <asp:RadioButton runat="server" ID="rDrugAdequateCareYES" Text="YES" />&nbsp;
                <asp:RadioButton runat="server" ID="rDrugAdequateCareNO" Text="NO" />
            </div>
            <div class="col-md-6">
                <label id="lblDrugIssues">Issues Identified </label>
                &nbsp;&nbsp;
                <asp:RadioButton runat="server" ID="rDrugIssuesYES" Text="YES" />&nbsp;
                <asp:RadioButton runat="server" ID="rDrugIssuesNO" Text="NO" />
            </div>
        </div>
        <div class="row form-group">
            <div class="col-md-10">
                <label id="lblDrugIssuesDesc">Description of Issues</label>
                <asp:TextBox runat="server" ID="txtDrugIssuesDesc" CssClass="form-control" TextMode="MultiLine" placeholder="Description of Issues"></asp:TextBox>
            </div>
        </div>

        <div class="row w-100">
            <h6>Alcohol Abuse </h6>
        </div>
        <div class="row form-group">
            <div class="col-md-6">
                <label id="lblAlcoholAdequateCare" class="required">Adequate Care </label>
                &nbsp;&nbsp;
                <asp:RadioButton runat="server" ID="rAlcoholAdequateCareYES" Text="YES" />&nbsp;
                <asp:RadioButton runat="server" ID="rAlcoholAdequateCareNO" Text="NO" />
            </div>
            <div class="col-md-6">
                <label id="lblAlcoholIssues">Issues Identified </label>
                &nbsp;&nbsp;
                <asp:RadioButton runat="server" ID="rAlcoholIssuesYES" Text="YES" />&nbsp;
                <asp:RadioButton runat="server" ID="rAlcoholIssuesNO" Text="NO" />
            </div>
        </div>
        <div class="row form-group">
            <div class="col-md-10">
                <label id="lblAlcoholIssuesDesc">Description of Issues</label>
                <asp:TextBox runat="server" ID="txtAlcoholIssuesDesc" CssClass="form-control" TextMode="MultiLine" placeholder="Description of Issues"></asp:TextBox>
            </div>
        </div>

        <div class="row w-100 form-group required">
            <label id="lblSafety">Is it safe for participant to go home? </label>
            &nbsp;&nbsp;
            <asp:RadioButton runat="server" ID="rSafetyYES" Text="YES" />&nbsp;
                <asp:RadioButton runat="server" ID="rSafetyNO" Text="NO" />
        </div>

        <div class="row d-flex justify-content-end">
            <asp:LinkButton runat="server" ID="lbNext3" CssClass="btn btn-primary" OnClick="lbNext3_Click"> Next <i class="fas fa-arrow-right"></i></asp:LinkButton>
        </div>
    </div>
    <div id="divPageFour" runat="server" class="pagesHidden">
        <div class="progress">
            <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100">Basic </div>
            <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100">Demographic</div>
            <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">Financial</div>
            <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">Medical</div>
            <div class="progress-bar bg-danger" role="progressbar" style="width: 25%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">Goals & Additional</div>
        </div>

        <br />
        <div class="row w-100">
            <h5 class="text-success">Additional Information </h5>
        </div>
        <div class="form-group row">
            <div class="col">
                <asp:Label runat="server" ID="lblCommments"> Additional Information/Comments</asp:Label>
                <asp:TextBox runat="server" ID="txtComments" TextMode="MultiLine" CssClass="form-control" placeholder="Addtional Information"></asp:TextBox>

            </div>
        </div>

        <div class="row">
            <div class="col-md-10">
                <h5 class="text-success">Goals</h5>
            </div>
            <div class="col-md-2">
                <div class="col-md-2  d-flex align-items-sm-end">
                    <asp:Button runat="server" ID="btnAddGoals" CssClass="btn btn-success btn-sm font-weight-bold" Text="+" OnClick="btnAddGoals_Click" />
                </div>
            </div>
        </div>
        <uc1:goal runat="server" ID="goal" />

        <div runat="server" id="divPlaceholder"></div>

        <div class="row d-flex justify-content-end">
            <asp:Button runat="server" ID="btnSubmit" CssClass="btn btn-primary" Text="SUBMIT" OnClientClick="confirm()" OnClick="btnSubmit_Click" />
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="EndBodyPlaceholder" runat="server">
    <script>
        function confirm() {
            alert("Participant has been added to cycle.");
        }



    </script>
</asp:Content>
