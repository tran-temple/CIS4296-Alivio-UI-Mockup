using Alivio_UI_Mockup.UserContols;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Alivio_UI_Mockup
{
    public partial class Onboarding : System.Web.UI.Page
    {
        string error = ""; // holds the error message
        Boolean err = false; // if there are no errors, then boolean will be false
        protected void Page_Load(object sender, EventArgs e)
        {
        } // end page load

        protected void btnSubmit_Click(object sender, EventArgs e)
        { // submits the form  + adds the participant to the cycle
            Server.Transfer("/participantprofile.aspx");
        } // end submit eventhandler

        protected void btnNextPage_Click1(object sender, EventArgs e)
        { // goes to financial info page from 1st page
            //validation for basic information
           /* if (txtEarnID.Text != "")
            { // check if its an int
                try
                {
                    if (!(Convert.ToInt64(txtEarnID.Text.Trim()) > 0))
                    {
                        error += "Please enter a valid EARN ID."; err = true;
                    }// end if
                } // end try
                catch
                {
                    error = "Invalid EARN ID. Please only enter digits."; err = true;
                } // end catch
            } // end earn id check
            else if (txtEarnID.Text == "")
            {
                error += "Please enter the participant's EARN ID. "; err = true;
            } // end blank earn id
            if (txtFName.Text.Trim() == "" || (!Regex.IsMatch(txtFName.Text.Trim(), @"^[a-zA-Z]+$")))
            {
                error += (" Enter the participant's first name."); err = true;
            } // end first name check
            if (txtFName.Text.Trim() == "" || (!Regex.IsMatch(txtFName.Text.Trim(), @"^[a-zA-Z]+$")))
            {
                error += (" Enter the participant's last name."); err = true;
            } // end last name check
            if (txtStAddress1.Text=="")
            {
                error += " Please enter the participant's street address."; err = true;
            } // end address check
            if (txtCity.Text == "")
            {
                error += " Please enter the city that the participant lives in."; err = true;
            } // end city chec
            if (ddlState.SelectedValue=="-1")
            {
                error += " Select the state the participant lives in."; err = true;
            } // end state check
            if (txtZip.Text != "")
            { // check if its an int
                try
                {
                    if (!(Convert.ToInt64(txtZip.Text.Trim()) > 0))
                    { // zip must be > 0
                        error += " Please enter the zip code."; err = true;
                    } // end zip check
                } // end try
                catch
                {
                    error += " Invalid zip Code. Please only enter digits."; err = true;
                } // end catch
            } // end zip  check
            else if (txtZip.Text == "")
            {
                error += " Please enter the zip code. "; err = true;
            } // end blank zip code check
            if (txtPrimaryPhone.Text=="")
            {
                error += " Enter the participant's phone number"; err = true;
            } // end phone number match
            if (ddlAdvisor.SelectedValue=="-1")
            {
                error += " Select the workforce advisor that referred this participant."; err = true;
            } // end workforce advisor check

            // validation for demographic information
            if (ddlEducation.SelectedValue == "-1")
            {
                error += " Select the highest education level completed by the participant."; err = true;
            } // end education  check
            if (ddlVeteran.SelectedValue == "-1")
            {
                error += " Select the veteran status of the participant."; err = true;
            } // end workforce advisor check
            if (ddlRace.SelectedValue == "-1")
            {
                error += " Select the participant's race."; err = true;
            } // end race check
            if (ddlEthnicity.SelectedValue == "-1")
            {
                error += " Select the participant's ethnicity."; err = true;
            } // end ethnicity check

            if (!err)
            {*/
                lblError.Visible = false; // hide the error so it doesn't appear on the next page
                error = ""; err = false; // reset variables
                //divPageOne.Attributes["class"] = "pagesHidden";
                divPageTwo.Attributes.Add("style", "display:block");
            divPageDemographic.Attributes.Add("style", "display:none");
            //} // end if 
            /* else
             {
                 lblError.Text = error; // sent the text of the label equal to the error message
             } // end else
             */
        } // end next page

        protected void lbNext2_Click(object sender, EventArgs e)
        { // goes to medical info (pg3) page from financial (pg2) after validation

            //validate 
           /* if (txtIncome.Text=="")
            {
                error += "Enter the household income."; err = true;
            } // end blank income check
            if (!(rTransYES.Checked) && !(rTransNO.Checked))
            { 
                error += " You must select if transportation issues have been identified."; err = true;
            } // end check for trans issues
            if (!(rHousingYES.Checked) && !(rHousingNO.Checked))
            {
                error += " You must select if housing issues have been identified."; err = true;
            } // end check for trans issues
            if (rTransYES.Checked && txtTransDesc.Text=="")
            { // if issues are identified for transportation but there is no description ..
                error += " Description of transportation issues must be entered if issues have been identified in this area.";
                err = true;
            } // end if
            if (rHousingYES.Checked && txtHousingDesc.Text == "")
            { // if issues are identified for housing but there is no description ..
                error += " Description of housing issues must be entered if issues have been identified in this area.";
                err = true;
            } // end if

            if (!err)
            {*/
                lblError.Visible = false; // hide the error so it doesn't appear on the next page
                error = ""; err = false; // reset variables
                divPageThree.Attributes.Add("style", "display:block");
                divPageTwo.Attributes.Add("style", "display:none");
          /*  } // end transfer
            else
            { // show the error message
                lblError.Visible = true;
                lblError.Text = error; // sent the text of the label equal to the error message
            } // end else
*/
        } // end next2 event handler
        
        protected void lbNext3_Click(object sender, EventArgs e)
        { // goes to goals page (pg4) from medical info page (pg3) after validation
          // check for medical care
            err = false;
            /*if (!(rMedCareYES.Checked) && !(rMedCareNO.Checked))
            {
                error += " You must select if the participant has medical care."; err = true;
            } // end check for med care
            if (!(rMedAdequateYES.Checked) && !(rMedAdequateNO.Checked))
            {
                error += " You must select if the participant has adequate medical care."; err = true;
            } // end check for adequate care
            if (!(rMedIssuesYES.Checked) && !(rMedIssuesNO.Checked))
            {
                error += " You must select if the medical issues have been identified."; err = true;
            } // end check for med issues
            if (rMedIssuesYES.Checked && txtMedIssueDesc.Text=="")
            {
                error += " Description of medical issues must be entered if issues have been identified in this area.";
                err = true;
            }

            // check for mental health
            if (!(rMentalAdequateYES.Checked) && !(rMentalAdequateNO.Checked))
            {
                error += " You must select if the participant has adequate care for mental health, if applicable."; err = true;
            } // end check for adequate care
            if (!(rMentalIssuesYES.Checked) && !(rMentalIssuesNO.Checked))
            {
                error += " You must select if issues relating to mental health have been identified."; err = true;
            } // end check for med issues
            if (rMentalIssuesYES.Checked && txtMentalIssuesDesc.Text == "")
            {
                error += " Description of issues relating to mental care must be entered if issues have been identified in this area.";
                err = true;
            }

            // check for drug abuse
            if (!(rDrugAdequateCareYES.Checked) && !(rDrugAdequateCareNO.Checked))
            {
                error += " You must select if the participant has adequate care for drug abuse, if applicable."; err = true;
            } // end check for adequate care
            if (!(rDrugIssuesYES.Checked) && !(rDrugIssuesNO.Checked))
            {
                error += " You must select if the issues relating to drug abuse have been identified."; err = true;
            } // end check for med issues
            if (rDrugIssuesYES.Checked && txtDrugIssuesDesc.Text == "")
            {
                error += " Description of issues relating to drug abuse must be entered if issues have been identified in this area.";
                err = true;
            }

            // check for alcohol abuse
            if (!(rAlcoholAdequateCareYES.Checked) && !(rAlcoholAdequateCareNO.Checked))
            {
                error += " You must select if the participant has adequate care for alcohol abuse, if applicable."; err = true;
            } // end check for adequate care
            if (!(rAlcoholIssuesYES.Checked) && !(rAlcoholIssuesNO.Checked))
            {
                error += " You must select if the issues relating to alcohol abuse issues have been identified."; err = true;
            } // end check for med issues
            if (rAlcoholIssuesYES.Checked && txtAlcoholIssuesDesc.Text == "")
            {
                error += " Description of issues must be entered if issues have been identified in this area.";
                err = true;
            }

            // check for if it's safe for participant to go home
            if (!(rSafetyYES.Checked) && !(rSafetyNO.Checked))
            {
                error += " You must select if it is safe for the participant to go home."; err = true;
            } // end check for med issues
            if (!err)
            { */
                lblError.Visible = false; // hide the error so it doesn't appear on the next page
                error = ""; err = false; // reset variables
                divPageFour.Attributes.Add("style", "display:block");
                divPageThree.Attributes.Add("style", "display:none");
          /*  } // end transfer
            else
            { // show the error message
                lblError.Visible = true;
                lblError.Text = error; // sent the text of the label equal to the error message
            } // end else
            */
        } // end next 3 event handelr

        protected void btnAddGoals_Click(object sender, EventArgs e)
        { // this will dynamically create a goals section and add it to the page
            UserControl uc = (UserControl)LoadControl("/UserContols/goal.ascx");
            divPlaceholder.Controls.Add(uc);
        }// end add goals event handler

        protected void lbNextPageDemo_Click(object sender, EventArgs e)
        {
            lblError.Visible = false; // hide the error so it doesn't appear on the next page
            error = ""; err = false; // reset variables
            divPageDemographic.Attributes.Add("style", "display:block");
            divPageOne.Attributes["class"] = "pagesHidden";
        }
    } // end class
} // end namespace