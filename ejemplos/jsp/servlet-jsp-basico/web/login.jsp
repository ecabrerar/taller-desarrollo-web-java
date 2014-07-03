<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <style type="text/css">
                body {
                    background: #222;
                    font: 12px/1.7em arial, sans-serif;
                    margin: 75px;
                }

                #login {
                    width: 400px;
                    position: absolute;
                    left: 50%;
                    margin-left: -200px;
                }

                #login_panel {
                    background: #FFF;
                    width: 400px;
                    border: 1px solid #CCC;
                    overflow: hidden;
                    -moz-border-radius: 8px;
                    -webkit-border-radius: 8px;
                    border-radius: 8px;
                    -moz-box-shadow: 1px 1px 1px rgba(0, 0, 0, .6);
                    -webkit-box-shadow: 1px 1px 1px rgba(0, 0, 0, .6);
                    box-shadow: 1px 1px 1px rgba(0, 0, 0, .6);
                }

                #login_panel .login_fields {
                    padding: 22px 15px 15px;
                }

                #login_panel .login_fields input {
                    width: 355px;
                }

                #login_panel .field {
                    margin-bottom: 1.75em;
                }

                #login_panel .field:last-child {
                    margin-bottom: .85em;
                }

                #login_panel .field label {
                    font-weight: bold;
                    display: block;
                    position: relative;
                }

                #login_panel .field label small {
                    position: absolute;
                    right: 0;
                    top: -2px;
                }

                #login_panel .field label small a {
                    color: #999;
                }

                #login .login_actions {
                    background: #E8E8E8;
                    width: auto;
                    padding: 15px;
                    border-top: 1px dotted #CCC;
                }

                 
            </style>
    </head>
    <body>
        <div id="login">
            <% if(session.getAttribute("loginFailed") !=null) { %>
             
            <h1>
                <%=session.getAttribute("loginFailed")%>
            </h1>
             
            <% 
        }
        %>
            <div id="login_panel">
                <form action="/servlet-jsp-basico/LoginServlet" method="post" accept-charset="utf-8">
                    <div class="login_fields">
                        <div class="field">
                            <label for="email">Usuario</label>
                             
                            <input type="text" name="usuario" value="" id="usuario" tabindex="1"/>
                        </div>
                        <div class="field">
                            <label for="password">Contrase&ntilde;a</label>
                             
                            <input type="password" name="pass" value="" id="password" tabindex="2"/>
                        </div>
                    </div>
                    <!-- .login_fields -->
                    <div class="login_actions">
                        <button type="submit" class="btn btn-orange" tabindex="3">Acceder</button>
                    </div>
                </form>
            </div>
            <!-- #login_panel -->
        </div>
        <!-- #login -->
    </body>
</html>