<%@page import="java.util.List"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="head.jsp"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div id="header-chitiet" class="container-fluid">
		<nav class="navbar navbar-default none_nav">
		  <div class="container-fluid">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="#"><img src='<c:url value="/resources/Image/icon_yame_shop.png"/>'></a>
		    </div>
		
		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav navbar-center">
		        <li class="active"><a href="#">TRANG CHỦ</a></li>
		        <li 	class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
		          <ul class="dropdown-menu">
		            <c:forEach var="value" items="${danhmuc}"> 
						<li><a href='<c:url value="/sanpham/${value.getMadanhmuc()}/${value.getTendanhmuc() }"/>'>${value.getTendanhmuc() }</a></li>
						<li role="separator" class="divider"></li>
					</c:forEach>
		          </ul>
		        </li>
		        <li><a href="#">DỊCH VỤ</a></li>
		        <li><a href="#">LIÊN HỆ</a></li>
		        
		      </ul>
		      
		      <ul class="nav navbar-nav navbar-right">
		      	<c:choose>
		      		<c:when test="${chucaidau != null }">
		      			 <li><a class="circle-avartar" href="dangnhap/"><span>${chucaidau }</span></a></li>
		      		</c:when>
		      		
		      		<c:otherwise>
		      			 <li><a href="../dangnhap/">ĐĂNG NHẬP</a></li>
		      		</c:otherwise>
		      	</c:choose>
		      	
		      	<li id="giohang">
		      		<a href="../giohang/" ><img src='<c:url value="/resources/Image/ic_shopping_cart_white_24dp_1x.png"/>'>
			      		<c:if test="${soluongsanphamgiohang > 0 }">
				        	<div class="circle-giohang"><span>${soluongsanphamgiohang }</span> </div>
				        </c:if>
				        
				        <c:if test="${soluongsanphamgiohang <= 0 || soluongsanphamgiohang == null  }">
				        	<div><span>${soluongsanphamgiohang }</span></div>
				        </c:if>
		      		</a>
		      	</li>
		      	
		      	
		        
		        
		       
		      </ul>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>
	</div>
	
	 <div class="container">
			<div class="col-md-6 col-sm-6">
			<div class="row">
					<h3>Danh sách sản phẩm trong giỏ hàng</h3>
				<table class="table">
					<thead>
						<tr>
							<td>Tên sản phẩm</td>
							<td>Màu sản phẩm </td>
							<td>Size</td>
							<td>Số lượng</td>
							<td>Giá xiền </td>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="value" items="${giohang }">
							<tr >
								<td class="tensp" data-masp="${value.getMasp() }">${value.getTensp() }</td>
								
								<td class="mau" data-mamau="${value.getMamau() }">${value.getTenmau() }</td>
								<td class="size"  data-masize="${value.getMasize() }">${value.getTensize() }</td>
								<td class="soluong"><input class="soluong-giohang" type="number" min="1"    value="${value.getSoluong() }" style="max-width: 50px;"></td>
								<td class="giatien" data-value="${value.getGiatien()} }">${value.getGiatien() }</td>
								<td class="xoa-giohang btn btn-primary">Sóa</td>
								
							</tr>
								
							
						</c:forEach>
						<tr></tr>
					</tbody>
				</table>
				<h4 class="wow bounceInRight" >Tổng tiền:<span id="tongtien" style="color: pink" > 0 VND</span></h4>
				</div>
			 </div>	
			 <div class="col-md-6 col-sm-6">
			 	<h3>Thông tin người mua </h3>
					<div class="form-group">
					<form action="" method="post">
				
						<label for="tenkhachhang">Tên người mua/nhận</label>
						<input class="form-control" id="tenkhachhang"  name="tenkhachhang"/><br/>
						
						<label for="sodt">Điện thoại liên lạc </label>
						<input class="form-control" id="sodt" name="sodt" /><br/>
						
						<div class="radio">
						  <label><input checked="" type="radio" name="hinhthucgiaohang"  value="Giao hàng tận nơi">Giao hàng tận nơi </label><br/>
						</div>
						<div class="radio">
						  <label><input type="radio" name="hinhthucgiaohang" value="Nhận hàng tại cửa hàng">Nhận hàng tại cửa hàng</label><br/>
						</div>
						
						<label for="diachigiaohang">Địa chỉ nhận hàng</label>
						<input class="form-control" id="diachigiaohang" name="diachigiaohang"/><br/>
						
						<label for="ghichu">Ghi chú</label>
	  					<textarea class="form-control" rows="5" id="ghichu" name="ghichu"></textarea><br/>
  						
  						<input type="submit" class="btn btn-primary" value="Đặt hàng" />
  					</form>
				</div>
			 </div>	
				
			</div>
	
	
	<div id="footer" class="container-fluid">
		<div class="row">
			<div class="col-sm-4 col-md-4 wow tada">
				<p><span class="title-footer">THÔNG TIN SHOP</span></p>
				<span>Konoha là một thương hiệu bán rau xanh đầy uy tín, luôn đảm bảo chất lượng sản phẩm tốt nhất cho khách hàng.</span>
			</div>
			
			<div class="col-sm-4 col-md-4 wow tada">
				<p><span class="title-footer">LIÊN HỆ</span></p>
				<span>207/94 Nguyễn Văn Đậu, Bình Thạnh Sài gòn tự kiếm tự search google </span>
				<span>dangdinhchi97@gmail.com</span><br>
				<span>0329098885</span>
			</div>
			
			<div class="col-sm-4 col-md-4 wow tada">
				<p><span class="title-footer">GÓP Ý</span></p>
				<form action="" method="post">
					<input name="tenNhanVien" class="material-textinput" style="margin-bottom: 8px" type="text" placeholder="Email"/>
					<textarea name="tuoi" style="margin-bottom: 8px" rows="4" cols="50" placeholder="Nội dung"></textarea>
					<button class="material-primary-button">ĐỒNG Ý</button>
				</form>
				
			</div>
		</div>
		
	</div>
	
	<jsp:include page="footer.jsp"/>
</body>


</html>