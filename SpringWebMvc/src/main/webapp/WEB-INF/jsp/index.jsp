<%-- 
    Document   : index
    Created on : Apr 7, 2021, 12:29:02 PM
    Author     : minh
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<main class="main">
	<div class="main-content responsive-wrapper">
		<article class="widget">
			<h2>How does it work without JS? 🤯</h2>
			<p>This sticky header consists of two elements: an <strong>outer</strong> and an <strong>inner</strong> container. The outer container is taller than the inner — and the inner is centered vertically.
			<p>By utilizing the <code>position: sticky</code> property <strong>twice</strong>, both on the header's <strong>outer container</strong> and <strong>inner container</strong> the outer container will stick to the <code>body</code>, while the inner container will stick to the outer container.</p>
			<p>Note that the outer container has a negative <code>top</code> value equal to the height difference between the two containers. This causes the outer container to stick <strong>above</strong> the <code>body</code>, making the inner container stick to the "ceiling" on scroll.
			<p></p>
		</article>
	</div>
</main>

