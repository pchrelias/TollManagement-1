<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="${path}/static/css/emp-style.css">
        <link rel="stylesheet" href="${path}/static/css/homepage-css.css">
        <title>List Gates</title>
    </head>
    <body>
        <%@include file="../../misc/navbars/nav-admin.jsp" %>
        <section class="main-container">
            <div class="content">
                <div class="form sign-in">
                        <h1 class="text-center">List of Gates</h1>
                        <p class="text-center">
                         <a href="${pageContext.request.contextPath}/admin/manage-gate/create" >Add Gate</a>   
                        </p>
                        <form:form action="${pageContext.request.contextPath}/admin/manage-gate/search" method="GET">
                            <label for="search" >Search By Terminal name:</label>
                            <input type="text" class="form-control"  name="search" size="8">
                            <br/>
                            <button type="submit" class="submit submit-button">Search</button>
                            <br/>
                        </form:form>
                        <table class="table">
                            <tr>
                                <th>Gate id</th>
                                <th>Gate Number</th>
                                <th>Station id</th>
                                <th>Employee id</th>
                                <th>Entry Gate</th>
                                <th>Terminal</th>
                                <th colspan="2" class="text-center">Actions</th>
                            </tr>
                            <c:forEach items="${listOfTerminal}" var="t">
                                <c:url var="updateLink" value="/admin/manage-gate/update">
                                    <c:param name="gateId" value="${t.gate.id}" />
                                </c:url>
                                <c:url var="deleteLink" value="/admin/manage-gate/delete">>
                                    <c:param name="gateId" value="${t.gate.id}" />
                                </c:url>

                                <tr>
                                    <td>${t.gate.id}</td>
                                    <td>${t.gate.gateNo}</td>
                                    <td>${t.gate.station.getId()}</td>
                                    <td>${t.gate.employee.getId()}</td>
                                    <td>${t.gate.isEntry}</td>
                                    <td>${t.username}</td>
                                    <td>
                                        <a href="${updateLink}">Update</a>
                                    </td>
                                    <td>
                                        <a href="${deleteLink}">Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
            </div>
            <div class="sub-content">
                <div class="side-shadow">
                    <div class="img-text">
                        <h2>ATC</h2>
                        <p>Awesome Toll Company</p>
                    </div>
                </div>
            </div>
        </section>
         <%@include file="./../../misc/footer.jsp" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

    </body>
</html>
