<?xml version="1.0" encoding="Shift_JIS" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" version="4.0" encoding="Shift_JIS" />
  <xsl:decimal-format NaN="未定" />
  <xsl:template match="/">
	<html>
	<head>
	<title><xsl:text>残高試算表</xsl:text></title>
	</head>
	<body bgcolor="floralwhite">
	<h1 align="center"><font color="darkviolet"><xsl:text>残　高　試　算　表</xsl:text></font></h1>
	<table border="1" align="center">
	<tr bgcolor="lightpink">
		<th>借　　方</th>
		<th>元丁</th>
		<th>勘定科目</th>
		<th>貸　　方</th>
	</tr>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='現金'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'現金'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='当座預金'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'当座預金'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='売掛金'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'売掛金'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='受取手形'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'受取手形'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='貸倒引当金'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'貸倒引当金'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='繰越商品'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'繰越商品'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='備品'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'備品'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='買掛金'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'買掛金'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='借入金'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'借入金'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='支払手形'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'支払手形'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='資本金'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'資本金'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='引出金'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'引出金'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='売上'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'売上'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='受取手数料'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'受取手数料'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='雑益'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'雑益'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='仕入'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'仕入'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='給料'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'給料'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='支払家賃'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'支払家賃'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='消耗品費'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'消耗品費'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='水道光熱費'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'水道光熱費'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='雑費'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'雑費'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='支払利息'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'支払利息'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='雑損'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'雑損'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='現金過不足'])>0">
		<xsl:apply-templates select="伝票綴" mode="一勘定分">
		    <xsl:with-param name="指定科目名" select="'現金過不足'" />
		</xsl:apply-templates>
	</xsl:if>
<!--
	<tr BORDERCOLOR="maroon" bgcolor="peachpuff">
		<td nowrap="nowrap" align="right">
			<xsl:value-of select="format-number(sum(伝票綴/伝票/明細/借方/金額),'#,###')" />
		</td>
		<td></td><td>合　計</td>
		<td nowrap="nowrap" align="right">
			<xsl:value-of select="format-number(sum(伝票綴/伝票/明細/貸方/金額),'#,###')" />
		</td>
	</tr>
-->
	</table>
	</body>
	</html>
  </xsl:template>


  <xsl:template match="伝票綴" mode="一勘定分">
  <xsl:param name="指定科目名" />
  <xsl:variable name="科目残高" select="sum(伝票/明細/借方[勘定科目=$指定科目名]/金額)-sum(伝票/明細/貸方[勘定科目=$指定科目名]/金額)" />
  <!-- 借り方表示／貸方表示の判定 -->
  <xsl:choose>
  <xsl:when test="$科目残高 > 0">
	<!-- 借方に表示 -->
	<tr BORDERCOLOR="maroon" bgcolor="linen">
	  <td nowrap="nowrap" align="right">
		<xsl:value-of select="format-number($科目残高,'#,###')" />
	  </td>
	  <td nowrap="nowrap" align="center">
		<xsl:value-of select="伝票/明細//勘定科目[.=$指定科目名]/preceding-sibling::勘定科目コード" />
	  </td>
<!-- この表記でも勘定科目コードを指定できる。一番目の要素を指定している。
	  <td nowrap="nowrap" align="center">
		<xsl:value-of select="伝票/明細//勘定科目コード[following-sibling::勘定科目=$指定科目名]" />
	  </td>
-->
	  <td nowrap="nowrap" align="center">
		<xsl:value-of select="伝票/明細//勘定科目[.=$指定科目名]" />
	  </td>
	  <td nowrap="nowrap" align="right">
	  </td>
	</tr>
  </xsl:when>
  <xsl:when test="$科目残高 = 0">
	<!-- 残高０で金額を空欄で表示 -->
	<tr BORDERCOLOR="maroon" bgcolor="linen">
	  <td nowrap="nowrap" align="right">
	  </td>
	  <td nowrap="nowrap" align="center">
		<xsl:value-of select="伝票/明細//勘定科目[.=$指定科目名]/preceding-sibling::勘定科目コード" />
	  </td>
	  <td nowrap="nowrap" align="center">
		<xsl:value-of select="伝票/明細//勘定科目[.=$指定科目名]" />
	  </td>
	  <td nowrap="nowrap" align="right">
	  </td>
	</tr>
  </xsl:when>
  <xsl:otherwise>
	<!-- 貸方に表示 -->
	<tr BORDERCOLOR="maroon" bgcolor="linen">
	  <td nowrap="nowrap" align="right">
	  </td>
	  <td nowrap="nowrap" align="center">
		<xsl:value-of select="伝票/明細//勘定科目[.=$指定科目名]/preceding-sibling::勘定科目コード" />
	  </td>
	  <td nowrap="nowrap" align="center">
		<xsl:value-of select="伝票/明細//勘定科目[.=$指定科目名]" />
	  </td>
	  <td nowrap="nowrap" align="right">
		<xsl:value-of select="format-number(-$科目残高,'#,###')" />
	  </td>
	</tr>
  </xsl:otherwise>
  </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
