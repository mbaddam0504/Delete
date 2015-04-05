<%-- 
    Document   : FoundItemsInSearch
    Created on : Mar 31, 2015, 2:19:49 PM
    Author     : S519459
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Place.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
    <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> <c:out value="${title}"/></title>
<link rel="stylesheet" type="text/css" href="FoundItemsInSearchStyle.css">
   <script src="slideShow.js"></script>
<link rel="stylesheet" type="text/css" href="Searchstyle.css">
<link rel="shortcut icon" href="rose.ico" />
<script src="MenuBarItemsScript.js"></script>
<script src="SingleItemScript.js"></script>
    </head>
    <body>
 <!--Search Bar Code-->
	<div id="tfheader">
		<form id="tfnewsearch" method="get" action="ItemServlet">
                    <input type="text" class="tftextinput" name="search" size="21" maxlength="120" placeholder="Search here">
                        <input type="submit" value="search" class="tfbutton">
		</form>
	</div>
  <!--menu bar code-->
  <ul id="menu" onclick="func(event)">
      <li id="firstl"  ><a href="#">Fashion</a>
   <ul id="fashion" onclick="subfunc(event);">
             <li><a href="#">Skirts</a></li>
             <li><a href="#">Sweaters</a></li>
             <li><a href="#">dresses</a></li>
             <li><a href="#">outerwears</a></li>
             <li><a href="#">pants</a></li>
             
        </ul>
        
    </li>
    <li id="secondl"><a href="#">Sporting goods</a>
   <ul id="Sportinggoods" onclick="subfunc(event);">
             <li><a href="#">Badminton</a></li>
             <li><a href="#">basketball</a></li>
             <li><a href="#">cricketbats</a></li>
             <li><a href="#">golf</a></li>
             <li><a href="#">tennis</a></li>
        </ul>
    </li>
    <li id="thirdl"><a href="#">Electronic goods</a>
   <ul id="Electronicgoods" onclick="subfunc(event);">
             <li><a href="#">Home theater</a></li>
             <li><a href="#">Television</a></li>
             <li><a href="#">cameras</a></li>
             <li><a href="#">cellphones</a></li>
             <li><a href="#">computers</a></li>
        </ul>    
    </li>
    <li id="fourthl"><a href="#">Handbags</a>
   <ul id="Handbags" onclick="subfunc(event);">
             <li><a href="#">Buckets and sacs</a></li>
             <li><a href="#">Crossbody bags</a></li>
             <li><a href="#">Hobos</a></li>
             <li><a href="#">Satchels</a></li>
             <li><a href="#">wallets</a></li>
        </ul>    
    </li>
    <li id="fifthl"><a href="#">shoes</a>
   <ul id="shoes" onclick="subfunc(event);">
             <li><a href="#">boots</a></li>
             <li><a href="#">flats</a></li>
             <li><a href="#">outdoors</a></li>
             <li><a href="#">sandals</a></li>
             <li><a href="#">slippers</a></li>
        </ul>
    </li>

</ul>
 <div id="bar">
   Welcome TO Shopping
 </div>
 <c:forEach var="item" items="${itemsFromSearchButton}">
     <div id="singlebar">
    <div id="singlebar1">
 <img src="${item.getImagePath()}"/> <br>
<input type="hidden" id="totalvalue" value="${item}"/>
<a id="mylink" href="#" onclick='func("${item}")'><c:out value="${item.getShortDescription()}"/></a>
 <br>
 <p id="itemprice">$ <c:out value="${item.getPrice()}"/></p>
 <c:out value="${longdesc}"/>
   </div>
     </div>
</c:forEach>

    </body>
</html>
 <!--<a href="Place/SingleItemServlet?category=${item.getCategory()}&subcategory=${item.getSubcategory()}"> <c:out value="${item.getShortDescription()}"/></a>-->
