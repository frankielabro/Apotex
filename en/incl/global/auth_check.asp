<% ' auth_check.asp - Include this at the top of every protected .asp file
If Session("Authenticated") <> True Then
    ' User is not authenticated, redirect to the login page ' Ensure the path points correctly to your root login.asp
    Response.Redirect("/login.asp")
    Response.End
End If
%>