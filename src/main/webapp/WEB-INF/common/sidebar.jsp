<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- Page Sidebar -->
<div class="page-sidebar" id="sidebar">
	<!-- Sidebar Menu -->
	<ul class="nav sidebar-menu">
		<!--Dashboard-->
		<li><a href="admin/system/index"> <i
				class="menu-icon glyphicon glyphicon-home"></i> <span
				class="menu-text"> 首页 </span>
		</a></li>
		<!-- 商品管理 -->
		<li class="open"><a href="#" class="menu-dropdown"> <i
				class="menu-icon fa fa-bar-chart-o"></i> <span class="menu-text">
					商品管理 </span> <i class="menu-expand"></i>
		</a>
			<ul class="submenu">
				<li><a href="admin/taobaoHome/home/gotoSrcGoods?currPage=1">
						<span class="menu-text">商品库</span>
				</a></li>
				<li><a href="admin/taobaoHome/home/gotoSelectGoods?currPage=1">
						<span class="menu-text">--热门推荐库</span>
				</a></li>
				<li><a
					href="admin/taobaoHome/home/gotoIndexSrcGoods?currPage=1"> <span
						class="menu-text">首页商品库</span>
				</a></li>
				<li><a
					href="admin/taobaoHome/home/gotoIndexSelectGoods?currPage=1"> <span
						class="menu-text">--首页热门推荐库</span>
				</a></li>
				<li><a href="admin/taobaoHome/home/gotoSpecialGoods?currPage=1">
						<span class="menu-text">超值特惠商品库</span>
				</a></li>
				<li><a
					href="admin/taobaoHome/home/gotoSpecialSelectGoods?currPage=1">
						<span class="menu-text">--特价精选库</span>
				</a></li>
				<li><a href="admin/taobaoHome/home/gotoActGoods?currPage=1">
						<span class="menu-text">活动库</span>
				</a></li>
				<li><a
					href="admin/taobaoHome/home/gotoActivitySelectGoods?currPage=1">
						<span class="menu-text">--活动精选库</span>
				</a></li>
				<li><a href="admin/taobaoHome/home/gotoPingpaiGoods?currPage=1">
						<span class="menu-text">品牌库</span>
				</a></li>
			</ul></li>
		<!--用户管理-->
		<li class="open"><a href="#" class="menu-dropdown"> <i
				class="menu-icon glyphicon glyphicon-list"></i> <span
				class="menu-text"> 首页管理 </span> <i class="menu-expand"></i>
		</a>
			<ul class="submenu">
				<li><a href="admin/huitao/indexImgListPage"> <span
						class="menu-text">banner管理</span>
				</a></li>
				<li><a href="admin/huitao/getHuiTaoIndexDataList"> <span
						class="menu-text">分类管理</span>
				</a></li>
				<li><a href="admin/huitao/forwardPlaqueInfoPage"> <span
						class="menu-text">插屏商品管理</span>
				</a></li>
				<li><a href="admin/huitao/indexImgInfoPage"> <span
						class="menu-text">首页图片管理</span>
				</a></li>
				<li><a href="admin/huitao/specialImgInfoPage"> <span
						class="menu-text">特价图片管理</span>
				</a></li>
			</ul></li>
		<!-- 提现管理 -->
		<li class="open"><a href="#" class="menu-dropdown"> <i
				class="menu-icon fa fa-th"></i> <span class="menu-text"> 提现管理
			</span> <i class="menu-expand"></i>
		</a>
			<ul class="submenu">
				<li><a href="admin/orderHome/orderLists?status=1"> <span
						class="menu-text">打款管理</span>
				</a></li>
				<li><a href="admin/orderHome/userDetails?type=1"> <span
						class="menu-text">明细查询</span>
				</a></li>
			</ul></li>
		<!-- 统计 -->
		<li><a href="admin/system/loginHuitaoStatistics"
			target="view_window"> <i
				class="menu-icon glyphicon glyphicon-align-justify"></i> <span
				class="menu-text"> 统计 </span>
		</a></li>
		<!--退出系统-->
		<li><a href="admin/system/logout"> <i
				class="menu-icon fa fa-power-off"></i> <span class="menu-text">
					退出系统 </span>
		</a></li>
	</ul>
	<!-- /Sidebar Menu -->
</div>
<!-- /Page Sidebar -->