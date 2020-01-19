<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <c:set var="path" value="${pageContext.request.contextPath}" />
        <script>const contextPath = "${pageContext.request.contextPath}";</script>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.1.1/css/ol.css" type="text/css">
        <script src="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.1.1/build/ol.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <title>Document</title>
        <script src="${path}/static/js/map.js"></script>
    </head>
    <body>
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

        <nav class="navbar navbar-expand-lg navbar-light bg-light shadow fixed-top">
            <div class="container">
                <a class="navbar-brand" href="#">A T W</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                        aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/ATR/driversHistory.html">Drivers History</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Statistics</a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
        <h1>RETAIL CLIENT</h1>
        <section style="margin-top: 100px;">
            <div class="container  pt-3 pb-3 pl-5 pr-5 shadow extra-margin" style="box-sizing: border-box;">
                <div style="width:100%; height: 50vh;" id="content">
                    <c:choose>
                        <c:when test="${history == null}">
                            <h2>Welcome to the highway!!</h2>
                            <script>


            const redirectToURL = window.location.origin + "/terminal";
            setTimeout(() => {
                console.log(redirectToURL);
                window.location.replace(redirectToURL);
            }, 10000);
                            </script>
                        </c:when>
                        <c:otherwise>
                            <script>
                                const coords = {
                                    entry: {
                                        latitude:${entrylat},
                                        longitude: ${entrylong}
                                    },
                                    exit: {
                                        latitude:${exitlat},
                                        longitude: ${exitlong}
                                    }
                                };
//                                const myJson = {"routes": [{"geometry": "k_xgFkzopCecP}c@crGxv\\moNh{Tw|DbcPnbB~lb@uyA``LkpEh|EwbDwcBubCzwKafPcUwxEehFgvEtsCypBjnQiaSxpHqt@~w`@cyDdtJqWthQsqEjxOl|AhlUgcLd|HwpDwdDusDsn[dtF_rYug@qkKusWkmOypUhxM{jS|tSixMwbBaaDmpE_eJn`CarBl|HubNvpN_kJluYeoD~qAkuK_eDweTtsE{hQ_yFowFsyPkmJqtGc{D~pA{lEtuIamZlcGsvF{z@etPxtDikRcsOijVvdG_fLspGqdGinU", "legs": [{"summary": "", "weight": 14559.6, "duration": 14510.6, "steps": [], "distance": 455998.5}], "weight_name": "routability", "weight": 14559.6, "duration": 14510.6, "distance": 455998.5}], "waypoints": [{"hint": "hUALgP___38MAAAARgAAAD0AAAAkAAAAP9IEQmlUWkJ1KSlDmjIzQgwAAAAjAAAAPQAAABIAAADvpQAAGtFrATj0RQLM0GsBU_RFAgEAfwEgdBCd", "distance": 7.467237340266575, "name": "Αθήνα - Θεσσαλονίκη - Εύζωνοι", "location": [23.843098, 38.138936]}, {"hint": "H0u4gv___38aAAAAfwAAAAAAAADMAgAAi4-cQn4LokIAAAAAjoNvRBoAAABAAAAAAAAAAGYBAADvpQAAEL1aAQ6ZawITvVoBBJlrAgAA7wQgdBCd", "distance": 1.1390913118809045, "name": "Εγνατία Οδός", "location": [22.723856, 40.605966]}], "code": "Ok"};
//                                const thivaPoints = [23.3216443, 38.365156];
//                                const lamiaPoints = [22.4570683, 38.868296];
                                const url = "http://127.0.0.1:5000/route/v1/driving/" + createLongLatStringForRoute(coords);
//                                const url = "http://localhost:8080";
                                console.log(url);
                                fetch(url)
                                        .then(res => res.json())
                                        .then(data => {

                                            console.log(data);
                                            createMap(data.routes[0].geometry);
                                            fetch(contextPath + "/terminal-api/return-json", {
                                                method: "GET",
                                                headers: {
                                                    'Content-Type': 'application/json; charset=UTF-8'
                                                }
                                            })
                                                    .then(res => res.json())
                                                    .then(res => {
                                                        console.log("RESPONSE: " + res);
                                                        fetch(contextPath + "/terminal-api/store-json", {
                                                            method: "POST",
                                                            headers: {
                                                                'Content-Type': 'application/json; charset=UTF-8'
                                                            },
                                                            body: JSON.stringify(["res.geometry"])
                                                        })
                                                                .then(res => res.text())
                                                                .then(res => console.log("RESPONSE: " + res))
                                                                .catch(err => console.error(err));
                                                    })
                                                    .catch(err => console.error(err));


//                                            fetch(contextPath + "/terminal-api/store-json", {
//                                                method: "POST",
//                                                headers: {
//                                                    'Content-Type': 'application/json; charset=UTF-8'
//                                                },
////                                                body: JSON.stringify({'geometry': 'alifhbnsfbilnkl'})
//                                                body: JSON.stringify(['hello world'])
//                                            })
//                                                    .then(res => res.text())
//                                                    .then(res => console.log("RESPONSE: " + res))
//                                                    .catch(err => console.error(err));


                                            fetch(contextPath + "/terminal-api/store-geometry/${history.id}", {
                                                method: 'POST',
                                                headers: {
                                                    'Content-Type': 'application/json; charset=UTF-8'
                                                },
//                                                body: JSON.stringify({'geometry': 'alifhbnsfbilnkl'})
                                                body: JSON.stringify({'id': 1, 'geometry': data.routes[0].geometry})
                                            })
//                                            createMap(osrmJSON.routes[0].geometry);
                                        })
                                        .catch(err => console.error(err));
                            </script>
                            <h2>Hope you enjoyed!!</h2>
                        </c:otherwise>
                    </c:choose>
                    <div style="width:100%; height: 50vh;" id="map"></div>
                </div>
            </div>
        </section>

    </body>
</html>
