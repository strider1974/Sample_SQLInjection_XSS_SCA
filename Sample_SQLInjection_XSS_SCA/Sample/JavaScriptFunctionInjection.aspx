<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="JavaScriptFunctionInjection.aspx.cs" Inherits="JavaScriptFunctionInjection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #Text1
        {
            width: 300px;
        }
        #Text2
        {
            width: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>

<p>JavaScript Event injection to Client side control with <br /> 
    ASP.NET Inline tag &lt;%= ... %&gt;, with single quote and quote </p>
   <label for="Text1">Inject JavaScript Event in '&lt;%= HERE %&gt;': </label>
    <input id="Text1" name="Text1" type="text" value='<%= sValue %>'  />
    
   <asp:Button ID="Button2" runat="server" Text="Submit" 
    CommandArgument="single" OnCommand="Button2_Click" />
    <p>
    Sample 1 input: <br />
    a'onblur=window.location='http://www.yahoo.com' ' <br />
     a' onchange=alert("gotcha+onchange") '<br />
     a' onblur=alert("gotcha+onblur") '<br />
     a' onselect=alert("gotcha+onselect") '<br />
     a' onKeyDown=alert("gotcha+onKeyDown") '<br />
     a' onKeyPress=alert("gotcha+onKeyPress") '<br />
     a' onKeyUp=alert("gotcha+onKeyUp") '<br />
    </p>
   <br />
   <label for="Text2">Inject JavaScript Event in "&lt;%= HERE %&gt;" :</label>
    <input id="Text2" name="Text2" type="text" value="<%= sValue %>" />
    <asp:Button ID="Button1" runat="server" Text="Submit" 
        CommandArgument="quote" OnCommand="Button2_Click" />
   <br />
   
       <p>
    Sample 2 input: <br />
    a" onblur=window.location='http://www.yahoo.com' " <br />
     a" onchange=alert('gotcha+onchange') "<br />
     a" onblur=alert('gotcha+onblur') "<br />
     a" onselect=alert('gotcha+onselect') "<br />
     a" onKeyDown=alert('gotcha+onKeyDown') "<br />
     a" onKeyPress=alert('gotcha+onKeyPress') "<br />
     a" onKeyUp=alert('gotcha+onKeyUp') "<br />
    </p>
    
    <br />
    
    
</div>
     
     
</asp:Content>

