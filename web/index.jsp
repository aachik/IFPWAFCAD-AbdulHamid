<%-- 
    Document   : index
    Created on : Aug 27, 2014, 12:22:19 PM
    Author     : Don Abs
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%--
    Document   : index
    Author     : nbuser
--%>

<sql:query var="subjects" dataSource="jdbc/IFPWAFCAD-JuanAndresRDZ">
    SELECT subject_id, name FROM Subject
</sql:query>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>IFPWAFCAD-Abdu hamid lulz.</title>
    </head>
    <body>
        <h1>sup dogs</h1>
        <table border="0">
            <thead>
                <tr>
                    <th>IFPWAFCAD offers expert counseling in a wide range of fields.</th>
                </tr>
            </thead>
            <tbody>
                <tr><p>ho</p>                    <td>To view the contact details of an IFPWAFCAD certified former
                        professional wrestler in your area, select a subject below:</td>
                </tr>
                <tr>                    <td><form action="response.jsp ">
                       <strong>Select a subject:</strong>
                       <select name="subject_id">
                            <c:forEach var="row" items="${subjects.rowsByIndex}">
                                    <c:forEach var="column" items="${row}">
                                        <option value="<c:out value="${column}"/>"><c:out value="${column}"/></option>
                            </c:forEach>
                                </c:forEach>
                            </select>
                            <input type="submit" value="Submit" />
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
