<%-- 
    Document   : coupling
    Created on : Mar 19, 2020, 5:54:11 PM
    Author     : Lahiru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <link rel="stylesheet" href="css/coupling.css">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div id="couplingbody">
        
                    <br><p  class="text-center"> <b>Code Complexity Measuring Of Your Program Due to Coupling </b></p>

            <div class="progress" id="progressbar">
                <div class="progress-bar progress-bar-striped progress-bar-animated" style="width:66.6%;height:20px"></div>
            </div> 

            <div id="scrol">
                <table id="couplingTable" class="table-bordered table-striped" >
                    <tr>
                        <th style="width: 65px;" >Line No</th>
                        <th style="padding-right:500px;">Program Statements</th>
                        <th style="width: 40px;">Wr</th>
                        <th style="width: 40px;">Nr</th>
                        <th style="width: 65px;">Wmcms</th>
                        <th style="width: 65px;">Nmcms</th>
                        <th style="width: 65px;">Wmcmd</th>
                        <th style="width: 65px;">Nmcmd</th>
                        <th style="width: 65px;">Wmcrms</th>
                        <th style="width: 65px;">Nmcrms</th>
                        <th style="width: 65px;">Wmcrmd</th>
                        <th style="width: 65px;">Nmcrmd</th>
                        <th style="width: 65px;">Wrmcrms</th>
                        <th style="width: 65px;">Nrmcrms</th>
                        <th style="width: 65px;">Wrmcrmd</th>
                        <th style="width: 65px;">Nrmcrmd</th>
                        <th style="width: 65px;">Wrmcms</th>
                        <th style="width: 65px;">Nrmcms</th>
                        <th style="width: 65px;">Wrmcmd</th>
                        <th style="width: 65px;">Nrmcmd</th>
                        <th style="width: 65px;">Wmrgvs</th>
                        <th style="width: 65px;">Nmrgvs</th>
                        <th style="width: 65px;">Wmrgvd</th>
                        <th style="width: 65px;">Nmrgvd</th>
                        <th style="width: 65px;">Wrmrgvs</th>
                        <th style="width: 65px;">Nrmrgvs</th>
                        <th style="width: 65px;">Wrmrgvd</th>
                        <th style="width: 65px;">Nrmrgvd</th>
                    </tr>
                      

                </table>

            </div>
            <table id="abbreviationtbl" class="table-striped">
                <tr>
                    <th colspan="2" style="text-align: center">- Abbreviation -</th>

                </tr>
                <tr>
                    <td >Wr</td>
                    <td>= Weight of a recursive cal </td>
                </tr>
                <tr>
                    <td>Nr</td>
                    <td>= Number of recursive calls </td>
                </tr>
                <tr>
                    <td>Wmcms</td>
                    <td>= Weight of aregular methodcalling another regular methodin the same file</td>
                </tr>
                <tr>
                    <td>Nmcms</td>
                    <td>= Numberofcalls fromregular method(s) to other regular methodsin the same file </td>
                </tr>
                <tr>
                    <td>Wmcmd</td>
                    <td>= Weight of a regular methodcalling another regular methodin a different file </td>
                </tr>
                <tr>
                    <td>Nmcmd</td>
                    <td>= Numberof calls from regular method(s)to other regular methodsin different files </td>
                </tr>
                <tr>
                    <td>Wmcrms</td>
                    <td>= Weight of a regular methodcalling a recursive methodin the same file </td>
                </tr>
                <tr>
                    <td>Nmcrms</td>
                    <td>= Numberofcalls from regular method(s)to recursive methodsin the same file </td>
                </tr>
                <tr>
                    <td>Wmcrmd</td>
                    <td>= Weight of a regular methodcalling a recursive methodin a different filem </td>
                </tr>
                <tr>
                    <td>Nmcrmd</td>
                    <td>= Number ofcalls from regular method(s) to recursive methodsin different files </td>
                </tr>
                <tr>
                    <td>Wrmcrms</td>
                    <td>= Weight of a recursive methodcalling another recursive methodin the same file </td>
                </tr>
                <tr>
                    <td>Nrmcrms</td>
                    <td>= Number of calls from recursive method(s)to other recursive methodsin the same file </td>
                </tr>
                <tr>
                    <td>Wrmcrmd</td>
                    <td>= Weight of a recursive methodcalling another recursive methodin a different file </td>
                </tr>
                <tr>
                    <td>Nrmcrmd</td>
                    <td>= Number of calls from recursive method(s)to other recursive methodsin different files </td>
                </tr>
                <tr>
                    <td>Wrmcms</td>
                    <td>= Weight of a recursive methodcalling a  regular methodin the same file </td>
                </tr>
                <tr>
                    <td>Nrmcms</td>
                    <td>= Number of calls from recursive method(s)  to regular methodsin the same file </td>
                </tr>
                <tr>
                    <td>Wrmcmd</td>
                    <td>= Weight of a recursive methodcalling aregular methodin a different file </td>
                </tr>
                <tr>
                    <td>Nrmcmd</td>
                    <td>= Number ofcalls fromrecursive method(s) to regular methodsin different files </td>
                </tr>
                <tr>
                    <td>Wmrgvs</td>
                    <td>= Weight of a regular methodreferencing a global variablein the same file </td>
                </tr>
                <tr>
                    <td>Nmrgvs</td>
                    <td>= Number ofreferences fromregular method(s) toglobal variablesin the same file </td>
                </tr>
                <tr>
                    <td>Wmrgvd</td>
                    <td>=  Weight of a regular methodreferencing a global variablein a different file </td>
                </tr>
                <tr>
                    <td>Nmrgvd</td>
                    <td>= Number ofreferences fromregular method(s) to global variablesindifferent files </td>
                </tr>
                <tr>
                    <td>Wrmrgvs</td>
                    <td>= Weight of a recursive methodreferencing a global variablein the same file </td>
                </tr>
                <tr>
                    <td>Nrmrgvs</td>
                    <td>= Number ofreferences fromrecursive method(s)to global variablesin the same file </td>
                </tr>
                <tr>
                    <td>Wrmrgvd</td>
                    <td>= Weight of a recursive methodreferencing a global variablein a different file </td>
                </tr>
                <tr>
                    <td>Nrmrgvd</td>
                    <td>=  Number ofreferences fromrecursive method(s) toglobal variablein different files</td>
                </tr>
            </table>
            <p id="tt"></p>
        
        </div>
        <script>
                        $(document).ready(function () {
                var url = window.location;
                $('ul.nav a[href="' + url + '"]').parent().addClass('active');
                $('ul.nav a').filter(function () {
                    return this.href === url;
                }).parent().addClass('active');
            });
            
        </script>
    </body>
</html>
