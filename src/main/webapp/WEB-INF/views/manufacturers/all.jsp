<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <style>
        table, th, td {
            border: 1px solid black;
        }
    </style>
    <head>
        <title>Manufacturers</title>
    </head>
    <body>
        <h1>All manufacturers page</h1>
        <a href="${pageContext.request.contextPath}/">Go to main page</a>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Country</th>
            </tr>
            <c:forEach var="manufacturer" items="${manufacturers}">
                <tr>
                    <td>
                        <c:out value="${manufacturer.id}"/>
                    </td>
                    <td>
                        <c:out value="${manufacturer.name}"/>
                    </td>
                    <td>
                        <c:out value="${manufacturer.country}"/>
                    </td>
                    <td>
                        <a href="${pageContext.request.contextPath}
                        /manufacturers/delete?manufacturer_id=${manufacturer.id}" style="color: darkred">
                            Delete
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
