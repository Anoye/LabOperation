<%--
  Created by IntelliJ IDEA.
  User: Ss邵
  Date: 2018/10/29
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="/WEB-INF/tld/c-rt.tld"%>
<%@ taglib prefix="fmt" uri="/WEB-INF/tld/fmt-rt.tld"%>
<%@ taglib prefix="fn" uri="/WEB-INF/tld/fn.tld" %>
<%@ taglib prefix="fnx" uri="/WEB-INF/tld/fnx.tld" %>
<%@ taglib prefix="spring" uri="/WEB-INF/tld/spring.tld"%>
<%@ taglib prefix="sform" uri="/WEB-INF/tld/spring-form.tld"%>
<%@ taglib prefix="shiro" uri="/WEB-INF/tld/shiros.tld"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<c:set var="basePath" value="<%=basePath %>"/>
