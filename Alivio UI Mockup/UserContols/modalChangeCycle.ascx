<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="modalChangeCycle.ascx.cs" Inherits="Alivio_UI_Mockup.UserContols.modalChangeCycle" %>

    <!-- Change Cycle Modal -->
    <div class="modal fade" id="modalChangeCycle" tabindex="-1" role="dialog" aria-labelledby="modalChangeCycleLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalChangeCycleLabel">Change Cycle</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group row justify-content-around">
                        <label for="<%= CurrentCycleName.ClientID %>" class="col-sm-5 col-form-label">Current Cycle:</label>
                        <div class="col-sm-7">
                            <asp:Label type="text" CssClass="form-control-plaintext" ID="CurrentCycleName" Text="2019-2020" ReadOnly="true" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="form-group row justify-content-around required">
                        <label for="<%= ddlCycleList.ClientID %>" class="col-sm-5 col-form-label">Select Cycle:</label>
                        <div class="col-sm-7">
                            <asp:DropDownList ID="ddlCycleList" CssClass="form-control selectpicker" runat="server">
                                <asp:ListItem Text="2018-2019" Value="76543"></asp:ListItem>
                                <asp:ListItem Text="2019-2020" Value="76543"></asp:ListItem>
                                <asp:ListItem Text="2020-2021" Value="96457"></asp:ListItem>
                                <asp:ListItem Text="2021-2022" Value="24567"></asp:ListItem>
                                <asp:ListItem Text="2022-2023" Value="89764"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button type="button" class="btn btn-secondary" data-dismiss="modal" Text="Close" runat="server"></asp:Button>
                    <asp:Button type="button" class="btn btn-primary" runat="server" Text="Change Cycle"></asp:Button>
                </div>
            </div>
        </div>
    </div>