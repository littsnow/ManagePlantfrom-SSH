<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>嫌疑人全部信息表</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/Suspect_All.css" />
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/Suspect_All.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// 数据信息的显示与隐藏
		$(".show").click(function() {

			var Mes = $("#Person_info span").html();

			if (Mes == '隐藏信息') {

				$("#All_first").css("display", "none");

				$(this).html("显示信息");

			} else if (Mes == '显示信息') {
				$("#All_first").css("display", "block");

				$(this).html("隐藏信息");

			}

		});

		$(".show1").click(function() {
			var Mes = $("#Person_safety span").html();

			if (Mes == '隐藏信息') {

				$("#All_second").css("display", "none");

				$(this).html("显示信息");

			} else if (Mes == '显示信息') {
				$("#All_second").css("display", "block");

				$(this).html("隐藏信息");

			}
		});

		$(".show2").click(function() {
			var Mes = $("#Info_Collect span").html();

			if (Mes == '隐藏信息') {

				$("#All_third").css("display", "none");

				$(this).html("显示信息");

			} else if (Mes == '显示信息') {
				$("#All_third").css("display", "block");

				$(this).html("隐藏信息");

			}
		});

		$(".show3").click(function() {
			var Mes = $("#record_registr span").html();

			if (Mes == '隐藏信息') {

				$("#All_forth").css("display", "none");

				$(this).html("显示信息");

			} else if (Mes == '显示信息') {
				$("#All_forth").css("display", "block");

				$(this).html("隐藏信息");

			}
		});

		$(".show4").click(function() {
			var Mes = $("#Leave_depart span").html();

			if (Mes == '隐藏信息') {

				$("#fifth").css("display", "none");

				$(this).html("显示信息");

			} else if (Mes == '显示信息') {
				$("#fifth").css("display", "block");

				$(this).html("隐藏信息");

			}
		});
	});
</script>
</head>

<body>
	<div class="container">
		<div class="row">
			<!--嫌疑人入区信息-->
			<h4 style="margin-top: 13px;">
				<b style="color: #389ac7;">Suspect</b> information report
			</h4>
			<p id="left_title">嫌疑人入区报告</p>

			<!--进度条信息设置-->
			<div class="container" style="height: 180px;">
				<div class="row">
					<!--进度的数据信息-->
					<ul id="number" class="col-lg-12 col-md-10 col-sm-10">
						<li>1</li>
						<li>2</li>
						<li>3</li>
						<li>4</li>
						<li>5</li>
					</ul>
					<!--进度的状态-->
					<!--引入状态截图-->
					<div id="state" class="col-lg-12 col-md-10 col-sm-10">
						<a href="#Person_info"><img src="images/fgreen_03.png" /></a> <a
							href="#Person_safety"><img src="images/fgreen_03.png" /></a> <a
							href="#Info_Collect"><img src="images/fgreen_03.png" /></a> <a
							href="#record_registr"><img src="images/fgreen_03.png" /></a> <a
							href="#Leave_depart"><img src="images/fgreen_07.png"
							style="margin-left: -9%;" /></a>
					</div>
				</div>
				<!--进度的信息显示-->
				<ul id="txt" class="col-lg-12 col-md-10 col-sm-10">
					<li>入区登记报告</li>
					<li>人身检查报告</li>
					<li>信息采集报告</li>
					<li>办案区活动记录</li>
					<li>出区登记报告</li>
				</ul>
				<hr style="width: 100%;border: 0.5px solid #389AC7;margin-top: 3%;" />
			</div>
			<!--进度条信息结束-->
			<form class="row">
				<h1 class="col-lg-12 col-md-10 col-sm-12">
					<img src="images/jinghui.png">&nbsp;&nbsp;&nbsp;&nbsp;离石区公安局嫌疑人入区报告
				</h1>
				<ul class="report col-lg-12 col-md-12 col-sm-10">
					<li>档案编号:<input type="text" value="${suspect.suspect_ID }" /></li>
					<li>报告时间:<input type="date" value="${reportCreateTime }" /></li>
				</ul>
			</form>
			<hr style="width: 100%;border: 0.5px solid #389AC7;" />
			<!-- 文件下载链接   "-->
			
			<form class="row">
				<h4 id="Person_info"
					class="human_Mes col-lg-12 col-md-12 col-sm-12 col-xs-12">
					1、入区登记报告<span class="show">隐藏信息</span>
				</h4>
				<!--嫌疑人身份证信息-->
				<div id="All_first">
					<div class="pic col-lg-4 col-md-4 col-sm-4 col-xs-4">
						<img id="img_1" src="images/1-zhengmian_04.png" /> <img
							id="img_2" src="images/1-cemian_06.png" />
						<p class="date_pic col-lg-6 col-md-6 col-sm-6">2016年10月20日
							&nbsp; &nbsp; &nbsp;嫌疑人入区登记照片</p>
					</div>
					<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
						<!--身份证信息-->
						<p id="ID_Mes">1.1&nbsp;身份证信息</p>
						<hr
							style="width: 75%; border: 0.2px solid #389ac7; padding: 0px;margin-top: 0%;margin-left: -2%;" />
						<table class="Message col-lg-12 col-md-10 col-sm-8 col-xs-8">
							<tr style="padding: 0px;">
								<!--图片引入-->
								<td rowspan="5"><img
									style="width:89%;height: 75%;margin-left: -2%;"
									src="${suspect.identityCard_Photo } " />
									<p class="info_id">身份证照</p></td>
								<!--<td></td>-->
								<td colspan="2">姓名:<input type="text" readonly="readonly"
									value="${suspect.suspect_Name }" /></td>
							</tr>
							<!--第二行 性别 民族-->
							<tr>

								<td>性别：<input style="text-align: center;" type="text"
									value="${suspect.sex }" readonly="readonly" /></td>
								<td>民族：<input type="text" value="汉" readonly="readonly" /></td>
							</tr>
							<!--第三行 出生-->
							<tr>
								<td colspan="2">出生：<input type="text" style="width:40%;"
									value="${suspect.birthday }"readonly="readonly" />
								</td>
							</tr>
							<!--第四行身份证住址-->
							<tr>
								<td colspan="2">身份证住址：</td>
							</tr>
							<tr>
								<!--<td></td>-->
								<td colspan="2"><textarea readonly="readonly" rows="1"
										cols="30">${suspect.address }</textarea></td>
							</tr>
							<tr>
								<td><div style="margin-left: 38px;">身份证号码</div></td>
								<td colspan="2"><input type="text"
									value="${suspect.identifyCard_Number }" readonly="readonly" /></td>
							</tr>
						</table>
						<hr
							style="width: 75%; border: 0.2px solid #389ac7; padding: 0px;margin-top: 41%; margin-left: -2%;" />
					</div>
					<div class="row">
						<p
							style="border-bottom: 1px solid #389AC7; padding-bottom: 3px;color: #f69d1f;width: 10%;">1.2&nbsp;人员联系信息</p>
						<table id="people_Mes" class="col-lg-12 col-md-10 col-sm-10">
							<tr>
								<td style="text-align: center;">身份证种类:</td>
								<td colspan="4"><input type="text"
									value="${suspect.type_ID }" /></td>
							</tr>
							<tr>
								<td style="text-align: center;">证件号码:</td>
								<td colspan="4"><input type="text" value="${suspect.identifyCard_Number }" /></td>
							</tr>
							<tr>
								<td style="text-align: center;">现住址:</td>
								<td colspan="4"><input type="text"
									value="${suspect.now_address }" /></td>
							</tr>
							<tr>
								<td style="text-align: center;">联系方式:</td>
								<td colspan="4"><input type="text"
									value="${suspect.phone }" /></td>
							</tr>
							<tr>
								<td style="text-align: center;">入区时间:</td>
								<td><input type="text" value="${suspect.enter_Time }" /></td>
								<td style="text-align: center;">RFID:</td>
								<td colspan="4"><input type="text"
									value="${suspect.band_ID }" /></td>
							</tr>
							<tr>
								<td style="text-align: center;">进入办案区原因:</td>
								
								<td colspan="4"><input type="text"
									value="${suspect.suspected_Cause }" /></td>
							</tr>
							<tr>
								<td style="text-align: center;">办案民警签名:</td>
								<td><input type="text" value="${suspect.staff_ID }"
									readonly="readonly" /></td>
								<td style="text-align: center;">管理员签名:</td>
								<td><input type="text" value="${suspect.staff_ID }"
									readonly="readonly" /></td>
							</tr>
						</table>
					</div>
				</div>
			</form>
			<!-- 嫌疑人安全检查报告 -->
			<form class="row">
				<h4 id="Person_safety"
					class="human_Mes col-lg-12 col-md-12 col-sm-12 col-xs-12">
					2、人身安全检查 <span class="show1">显示信息</span>
				</h4>
				<div id="All_second">
					<div class="row_1">
						<p class="self_state col-lg-12 col-md-10 col-sm-10">2.1&nbsp;自述情况</p>
						<ul class="checkbox col-lg-12 col-md-10 col-sm-10">
							<li>是否饮酒:</li>
							<li><input type="text" value="${personal_Check.is_Drink }" /></li>
							<li>是否患有传染性疾病:</li>
							<li><input type="text"
								value="${personal_Check.is_Diseases }" /></li>
						</ul>
						<fieldset class="col-lg-12 col-md-12 col-sm-12">
							<p><font size="4">自述症状：</font><input style="height: 30px;width: 80%;"value="${personal_Check.self_ReportS }"></p>
							
						</fieldset>
					</div>
					<!--体检信息表-->
					<div class="row_2">
						<p class="check col-lg-12 col-md-10 col-sm-10">2.2&nbsp;检查情况</p>
						<!--体检信息表-->
						<table class="checked_state col-lg-12 col-md-10 col-sm-10">
							<tr>
								<td style="padding-left: 100px;">人身检查状态</td><td style="width: 20%;">${personal_Check.check_Situation }</td>
								<!-- <td style="width: 20%;">有饮酒 &nbsp;&nbsp;<input type="checkbox" /></td>
								<td style="width: 20%;">有拍照 &nbsp;&nbsp;<input type="checkbox" /></td> -->
								<td rowspan="2"><img src="images/check_08.png"
									style="width: 30%; margin-left: 1%; margin-top: 3%;" /></td>
								<!--引入体表检查图-->
							</tr>
							<tr>
								<td style="padding-left: 100px; vertical-align: top;">检查情况:</td>
								<td  style="text-align: left; vertical-align: top;"><textarea>${personal_Check.check_ReportS }</textarea></td>
								<!--<td></td>-->
							</tr>
							<tr>
								<td style="padding-left: 100px;">
									<div  >检查民警<br> <input type="text"
									value="${personal_Check.staff_ID }" />
									</div>
								</td>
								<td colspan="3">被检查人/监护人 <br>
									<input type="text" value="${suspect.suspect_Name }" /></td>
								<!--<td></td>-->
							</tr>
						</table>
					</div>
					<!--随身财物检查登记-->
					<div class="row_1">
						<p class="check_woods col-lg-12 col-md-10 col-sm-10">2.3&nbsp;随身财物检查登记</p>
						<table class="woods_check col-lg-12 col-md-10 col-sm-10">
							<tr>
								<td>序号</td>
								<td>物品名称及特征</td>
								<td>编号</td>
								<td>数量</td>
								<td>单位</td>
								<td>保管措施</td>
								<td>保管柜号</td>
							</tr>
							
							<c:forEach items="${belongingS }" var="item">
							<tr>
								<td>${item.belongingS_ID }</td>
								<td>${item.belonging_Name }</td>
								<td>${item.belonging_Number }</td>
								<td>${item.belonging_Count }</td>
								<td>${item.belonging_Unit }</td>
								<td>${item.keeping_ID }</td>
								<td>${item.cabinet_Number }</td>
								
							</tr>
				</c:forEach>
						</table>
				 <ul class="signature col-lg-12 col-md-10 col-sm-10">
							<li>办案人员：<br /> <input type="text"
								value="${belongingS[0].staff_ID }" /></li>
							<li>随身财物管理员：<br /> <input type="text"
								value="${belongingS[0].staff_ID_Belonging }" /></li>
							<li>涉案人员:<br /> <input type="text"
								value="${suspect.suspect_Name }" /></li>
						</ul>
					</div>
				</div>
			</form>
			<!--信息采集报告-->
			<form class="row">
				<h4 id="Info_Collect"
					class="human_Mes col-lg-12 col-md-12 col-sm-12 col-xs-12">
					3、信息采集报告<span class="show2">显示信息</span>
				</h4>
				<div id="All_third">
					<table class="info_collect col-lg-12 col-md-10 col-sm-10">
						<tr>
							<td>信息采集:</td>
							<td>${information_Collection.is_Collected }</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>采集项目:</td>
							<td>${information_Collection.collected_Item }</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<!-- <td> &nbsp;&nbsp;<input type="checkbox" />身份信息</td>
							<td> &nbsp;&nbsp;<input type="checkbox" />指纹</td>
							<td> &nbsp;&nbsp;<input type="checkbox" />血液</td>
							<td> &nbsp;&nbsp;<input type="checkbox" />尿液</td>
							<td> &nbsp;&nbsp;<input type="checkbox" />其他<input type="text" /></td> -->
						</tr>
						<tr>
							<td>信息入库:</td>
							<td>${information_Collection.is_Storaged }</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>检查对比:</td>
							<td>${information_Collection.is_Checked }</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</table>
				</div>
			</form>
			<!--办案区活动记录-->
			<form class="row">
				<h4 id="record_registr"
					class="human_Mes col-lg-12 col-md-12 col-sm-12 col-xs-12">
					4、办案区活动记录<span class="show3">显示信息</span>
				</h4>
				<div id="All_forth">
					<table class="active_check col-lg-12 col-md-10 col-sm-10">
						<tr>
							<td>序号</td>
							<td>开始时间</td>
							<td>结束时间</td>
							<td>房间ID</td>
							<td>活动内容</td>
							<td>音视频编码</td>
							<td>备注</td>
						</tr>
						
						<c:forEach items="${activity_Record }" var="item">
							<tr>
								<td>${item.activity_Record_ID }</td>
								<td>${item.start_Time }</td>
								<td>${item.end_Time }</td>
								<td>${item.room_ID }</td>
								<td>${item.activity_Record }</td>
								<td>${item.vedio_Number }</td>
								<td>${item.remark }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</form>
			<!--离开办案区登记-->
			<form class="row">
				<h4 id="Leave_depart"
					class="human_Mes col-lg-12 col-md-12 col-sm-12 col-xs-12">
					5、离开办案区登记<span class="show4">显示信息</span>
				</h4>
				<div id="fifth">
					<div class="row_1">
						<p
							style="color: #389AC7;margin-top: 1%;margin-left:4%;font-size: inherit;">临时离开办案区</p>
						<table class="transient_Leave col-lg-12 col-md-10 col-sm-10">
							<tr>
								<td>序号</td>
								<td>临时离开时间</td>
								<td>离开原因</td>
								<td>办案部门负责人签名</td>
								<td>返回时间</td>
							</tr>
							<c:forEach items="${temporaryLeaves }" var="it">
							<tr>
								<td>${it.temporary_Leave_Id }</td>
								<td>${it.tempLeave_Time }</td>
								<td>${it.tempLeave_Reason }</td>
								<td>${it.staff_ID }</td>
								<td>${it.return_Time }</td>
							</tr>
						</c:forEach>
						</table>
					</div>
					<hr style="margin-top: 180px;border: 1px solid darkgray;" />
					<!--最终离开办案区的信息表-->
					<div class="row_1">
						<p
							style="color: #389AC7;margin-top: 2%;margin-left:4%;font-size: inherit;">最终离开办案区:</p>
						<table class="final_Leave col-lg-12 col-md-10 col-sm-10">
							<tr>
								<td style="text-align: center;">最终离开时间</td>
								<td>${leave_Record.leave_Time }</td>
							</tr>
							<tr>
								<td style="text-align: center;">离开原因</td>
								<td>${leave_Record.leave_Reason}</td>
							</tr>
							<tr>
								<td style="text-align: center;">随身物品处理情况:</td>
								<td>${leave_Record.belongingS_Treatment_Method} 
								</td>
							</tr>
							<tr>
								<td style="text-align: center;">未反还物品情况记载:</td>
								<td><textarea>${leave_Record.belongingS_Treatment_Record}</textarea></td>
							</tr>
							<tr>
								<td style="text-align: center;">领取人：</td>
								<td>${leave_Record.recipient_Person}"</td>
							</tr>
							<tr>
								<td style="text-align: center;">身份证号码:</td>
								<td>
									${leave_Record.recipient_Person_Number }</td>
							</tr>
							<tr>
								<td style="text-align: center;">领取时间:</td>
								<td>${leave_Record.treatment_Time }</td>
							</tr>
						</table>
					</div>
					<hr style="margin-top: 380px;border: 1px solid darkgray;" />
					
					<p id="signature">
						管理员签名:&nbsp;&nbsp;&nbsp;<input type="text" value="admin" />
					</p>
					<input id="download" type="button" value="下载" /> <input id="print"
						type="button" value="打印" />
					<div style="height: 100px;"></div>
				</div>
			</form>
		</div>
	</div>
</body>

</html>