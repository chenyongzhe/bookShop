<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<div class="span10 last">
	<div class="topNav clearfix">
		<ul>
			<s:if test="#session.existUser == null">
			<li id="headerLogin" class="headerLogin" style="display: list-item;">
				<a href="${ pageContext.request.contextPath }/user_loginPage">登录</a>|</li>
			<li id="headerRegister" class="headerRegister"
				style="display: list-item;"><a href="${ pageContext.request.contextPath }/user_registPage">注册</a>|
			</li>
			</s:if>
			<s:else>
			<li id="headerLogin" class="headerLogin" style="display: list-item;">
				<s:property value="#session.existUser.name"/>
				|</li>
			<li id="headerLogin" class="headerLogin" style="display: list-item;">
				<a href="${pageContext.request.contextPath}/order_findByUid?page=1">我的订单</a>
			|</li>
			<li id="headerRegister" class="headerRegister"
				style="display: list-item;"><a href="${ pageContext.request.contextPath }/user_quit">退出</a>|
			</li>
			</s:else>
		
			<li><a>会员中心</a> |</li>
			<li><a>购物指南</a> |</li>
			<li><a>关于我们</a></li>
		</ul>
	</div>
	<div class="cart">
		<a href="${pageContext.request.contextPath}/cart_myCart">购物车</a>
	</div>
	<div class="phone">
		客服热线: <strong>96008/53277764</strong>
	</div>
</div>
<div class="span24">
	<ul class="mainNav">
		<li><a href="${ pageContext.request.contextPath}/index">首页</a> |</li>
		<s:iterator value="#session.clist" var="c" >

            <!-- 应该加入连接的各个href-->
			<li><a href="${pageContext.request.contextPath}/product_findByCid?cid=<s:property value="#c.cid"/>&page=1"><s:property value="#c.cname"></s:property> </a> |</li>
		</s:iterator>
	</ul>
</div>