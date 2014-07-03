<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <style type="text/css">
                body {
                    background: #222;
                    font: 12px/1.7em arial, sans-serif;
                }

                #wrapper {
                    width: 100%;
                }

                #wrapper {
                    width: 100%;
                }

                #top ul {
                    padding: 0;
                    margin: 0;
                }

                #top ul.left {
                    float: left;
                }

                #top ul.right {
                    float: right;
                }

                #top ul li {
                    font-size: 11px;
                    list-style-type: none;
                    margin: 0 .75em;
                    float: left;
                    position: relative;
                    color: #fff;
                }

                #top ul li:first-child {
                    margin-left: 0;
                }

                #top a {
                    color: rgb(247, 181, 0);
                    text-decoration: none;
                }

                #top a:hover {
                    text-decoration: underline;
                }

                .content_pad {
                    width: 940px;
                    height: 100%;
                    margin: 0 auto;
                    position: relative;
                }

                .content_pad:after {
                    content: ".";
                    display: block;
                    clear: both;
                    visibility: hidden;
                    line-height: 0;
                    height: 0;
                }

                .content_pad {
                    display: inline-block;
            </style>
    </head>
    <body>
        <%session.invalidate();%>
        <div id="wrapper">
            <div id="top">
                <div class="content_pad">
                    <ul class="right">
                        <li>
                            Usted cerr&oacute; session. Favor pulsar
                            <a href="login.jsp">aqu&iacute;</a>
                            para acceder nuevamente.
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>