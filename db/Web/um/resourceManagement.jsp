<%@page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
response.setHeader("Pragma", "No-cache"); 
response.setHeader("Cache-Control", "no-cache"); 
response.setDateHeader("Expires", 0); 
%>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>资源管理</title>
    <link href="../resources/css/hottest.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {font-size: 12px}
.STYLE4 {
	font-size: 12px;
	color: #1F4A65;
	font-weight: bold;
	font-family:"宋体";
}

a:link {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;
}
a:visited {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;
}
a:hover {
	font-size: 12px;
	color: #FF0000;
	text-decoration: underline;
}
a:active {
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.bt_01{
    width:71px;
	height:25px;
	border:0px;
    background: url(../resources/images/htdl.gif) no-repeat;
	color:#fff;
	font-size:12px;
	}
.bt_02{
    width:60px;
	height:20px;
	border:0px;
    background:#0099CC;
	color:#fff;
	font-size:12px;
	}
.bt_03{
    width:200px;
	height:15px;
	}	
-->
</style>
<script type="text/javascript">
		function deleteResources(pid){
			var k = window.confirm("你确定要删除该条记录？");
			if(k){
				window.location.href=pid;
				return true;
			}else{
				return false;
			}
		}
	</script>
</head>

<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" height="30"><img src="../resources/images/tab_03.gif" width="15" height="30" /></td>
        <td background="../resources/images/tab_05.gif" align="left">
            <img src="../resources/images/311.gif" width="16" height="16" />
            <span class="STYLE4">资源管理</span>
        </td>
        <td width="14"><img src="../resources/images/tab_07.gif" width="14" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" style="background:url(../resources/images/tab_12.gif) repeat-y left #d3e7fc; ">&nbsp;</td>
        <td width="97%" bgcolor="#FFFFFF" height="500" valign="top" align="center">
		<table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#cecece" align="center">
          <tr class="dz">
            <td bgcolor="#eceef0"  colspan="7" align="center" valign="middle">
                <table width="100%" border="0" cellspacing="0" cellpadding="0"
				align="left" height="40" style="border:1px dashed #d4d4d4;">
                  <tr >
                    <td height="20" align="left" width="50%" style="padding-left:10px;" >
                    <form action="resourcesAction!findResources" method="post" class="STYLE1">
                    资源名：<input type="text" name="resourceName" class="bt_04"/>
                    <input type="submit" name="Submit" value="查询" class="bt_02" /></form></td>
                    <td width="40%" style="color:red"></td>
                    <td align="right" width="50%" style="padding-left:10px;">
					<table width="151" border="0" cellspacing="0" cellpadding="0" style="background:url(../resources/images/htbutton.gif) no-repeat; margin:5px; ">
           <tr>
                <td align="center" height="34"><a href="addResource.jsp" style="font-size:15px; font-weight:bold; color:#fff;">添加资源</a></td>
           </tr>
       	</table></td>
                  </tr>
                </table>            </td>
          </tr>
          <tr class="dz" align="center" style="font:12">
            <td width="20%" height="28" background="../resources/images/sale_bg.gif">资源编号</td>
            <td width="20%" background="../resources/images/sale_bg.gif">资源名称</td>
            <td background="../resources/images/sale_bg.gif" width="30%">资源描述</td>
			<td background="../resources/images/sale_bg.gif" width="10%">创建时间</td>
			<td background="../resources/images/sale_bg.gif" width="10%">状态</td>
            <td background="../resources/images/sale_bg.gif" colspan="2" width="10%">操作</td>
          </tr>
          <s:iterator value="allResources" status="st">
           <tr class="my" align="center" bgcolor="#ffffff">
              <td><s:property value="#st.getIndex()+1+(pageNumber-1)*pageSize"/></td>
    		  <td align="left"><s:property value="resourceName"/></td>
    		  <td><s:property value="comments"/></td>
    		  <td><s:property value="createTime"/></td>
    		  <td><s:property value="status"/></td>
    		  <td><a href="resourcesAction!showResources?resName=<s:property value="resourceName"/>">修改</a></td>
              <td><a onclick="return deleteResources('resourcesAction!deleteResources?resourcesId=<s:property value="id"/>');">删除</a></td>
          </tr>
          </s:iterator>
        </table>
		</td>
        <td width="14"  style="background:url(../resources/images/tab_16.gif) repeat-y right #d3e7fc; ">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="29"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" height="29"><img src="../resources/images/tab_20.gif" width="15" height="29" /></td>
        <td background="../resources/images/tab_21.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="21%" height="14">&nbsp;</td>
            <td width="79%" class="STYLE1" align="right">
            
            <a href="resourcesAction!findResources?pageNumber=1&resourcesName=${name }">首页</a> | 
            <a href="resourcesAction!findResources?pageNumber=<s:property value="pageNumber-1"/>&resourcesName=${name }">上一页</a>
             <span><font color="red"></font></span> <a href="resourcesAction!findResources?pageNumber=<s:property value="pageNumber+1"/>&resourcesName=${name }">下一页</a> | <a href="resourcesAction!findResources?pageNumber=<s:property value="totalpage"/>&resourcesName=${name }">尾页</a>&nbsp;
            当前第 <span
			style="FONT-WEIGHT: bold; COLOR: #f46521"></span><span class="font_1"><s:property value="pageNumber"/></span>页
          	</td>
          </tr>
        </table></td>
        <td width="14"><img src="../resources/images/tab_22.gif" width="14" height="29" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>