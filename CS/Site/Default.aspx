<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v9.1" Namespace="DevExpress.Web.ASPxCallback" TagPrefix="dxcb" %>
<%@ Register Assembly="DevExpress.Web.v9.1" Namespace="DevExpress.Web.ASPxLoadingPanel" TagPrefix="dxlp" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v9.1" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to change the ASPxLoadingPanel's text on the client</title>
    
    <script type="text/javascript">
        function SendCallback(s,e) {
            clientCallback.PerformCallback();
            clientLoadingPanel.SetText(s.name);
            clientLoadingPanel.Show(); 
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <dxcb:aspxcallback id="ASPxCallback1" runat="server" clientinstancename="clientCallback">
            <ClientSideEvents CallbackComplete="function(s, e) { clientLoadingPanel.Hide(); }" />
        </dxcb:aspxcallback>
        <div style="float: left;margin-right: 10px;">
            <dxe:ASPxButton ID="Text1" runat="server" Text="Show Text1" AutoPostBack="False">
                <ClientSideEvents Click="SendCallback" />
            </dxe:ASPxButton>
        </div>
        <div>
            <dxe:ASPxButton ID="Text2" runat="server" Text="Show Text2" AutoPostBack="False">
                <ClientSideEvents Click="SendCallback" />
            </dxe:ASPxButton>
        </div>
        <dxlp:ASPxLoadingPanel ID="loadingPanel" ClientInstanceName="clientLoadingPanel" runat="server" />
    </form>
</body>
</html>
