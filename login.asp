<%
' login.asp - Protects the site with a single password
Dim action, password
action = Request.Form("action")
password = Request.Form("password")

' Check if the password was submitted
If action = "login" Then
    If password = "ClearMed" Then
        ' Password is correct, set the session variable
        Session("Authenticated") = True
        Response.Redirect("en/index.asp") ' Redirect to your main landing page
    Else
        Dim errorMsg
        errorMsg = "Incorrect password. Please try again."
    End If
End If
%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Apotex - Secure Access</title>
        <style>
            body {
                font-family: sans-serif;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                background: #f4f4f4;
            }

            .login-box {
                background: #fff;
                padding: 2rem;
                border-radius: 8px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }

            .error {
                color: red;
                margin-bottom: 1rem;
            }

            input[type="password"] {
                padding: 10px;
                width: 200px;
                margin-bottom: 10px;
                border: 1px solid #ccc;
            }

            input[type="submit"] {
                padding: 10px 20px;
                background: #0056b3;
                color: white;
                border: none;
                cursor: pointer;
            }
        </style>
    </head>

    <body>
        <div class="login-box">
            <h2>Apotex Portal</h2>
            <% If errorMsg <> "" Then Response.Write("<p class='error'>" & errorMsg & "</p>") %>
                <form method="POST">
                    <input type="hidden" name="action" value="login">
                    <input type="password" name="password" placeholder="Enter Password" required><br>
                    <input type="submit" value="Unlock Site">
                </form>
        </div>
    </body>

    </html>