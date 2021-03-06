<?xml version="1.0" encoding="Shift_JIS" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" version="4.0" encoding="Shift_JIS" />
  <xsl:decimal-format NaN="未定" />
  <xsl:template match="/">
	<html>
	<head>
	<title><xsl:text>仕訳帳</xsl:text></title>
	</head>
	<body bgcolor="floralwhite">
	<h1 align="center"><font color="darkviolet"><xsl:text>仕　訳　帳
		（諸口表示用）</xsl:text></font></h1>
	<table border="1" align="center">
	<tr bgcolor="lightpink">
		<th>連番</th>
		<th>伝票番号</th>
		<th>日付</th>
		<th>借方勘定</th>
		<th>金　　額</th>
		<th>貸方勘定</th>
		<th>金　　額</th>
	</tr>
	<xsl:apply-templates select="伝票綴" mode="日次一覧" />
	<xsl:apply-templates select="伝票綴" mode="合計行" />
	</table>
	</body>
	</html>
  </xsl:template>

  <xsl:template match="伝票綴" mode="日次一覧">
	<xsl:for-each select="伝票">
	  <xsl:sort select="前付/日付" data-type="text" order="ascending" />
		<tr BORDERCOLOR="maroon" bgcolor="linen">
		  <td nowrap="nowrap" align="center">
		    <xsl:number value="position()" format="a" />
		  </td>
	  	  <xsl:for-each select="前付">
	    	<td nowrap="nowrap" align="center">
			  <xsl:value-of select="伝票番号" />
			</td>
			<td nowrap="nowrap">
			  <xsl:value-of select="日付" />
			</td>
		  </xsl:for-each>
		  <td colspan="2" align="center">
			<xsl:if test="count(明細/借方[number(金額)>0])>1">諸　口</xsl:if>
			<xsl:text>　</xsl:text>
		  </td>
		  <td colspan="2" align="center">
			<xsl:if test="count(明細/貸方[number(金額)>0])>1">諸　口</xsl:if>
			<xsl:text>　</xsl:text>
		  </td>
		</tr>

	  <xsl:for-each select="明細">

	    <xsl:for-each select="借方">
		<tr bgcolor="lightyellow">
		  <td></td><td></td><td></td>
		  <td nowrap="nowrap">
			<xsl:value-of select="勘定科目" />
		  </td>
		  <td nowrap="nowrap" align="right">
			<xsl:value-of select="format-number(金額,'#,###')" />
		  </td>
		  <td></td><td></td>
		</tr>
	    </xsl:for-each>

	    <xsl:for-each select="貸方">
		<tr bgcolor="lightyellow">
		  <td></td><td></td><td></td><td></td><td></td>
		  <td nowrap="nowrap">
			<xsl:value-of select="勘定科目" />
		  </td>
		  <td nowrap="nowrap" align="right">
			<xsl:value-of select="format-number(金額,'#,###')" />
		  </td>
		</tr>
	    </xsl:for-each>
  	  </xsl:for-each>
	</xsl:for-each>
  </xsl:template>

  <xsl:template match="伝票綴" mode="合計行">
	<tr BORDERCOLOR="maroon" bgcolor="peachpuff">
	  <xsl:variable name="借方合計金額" select="sum(伝票/明細/借方/金額)" />
	  <xsl:variable name="貸方合計金額" select="sum(伝票/明細/貸方/金額)" />
	  <td colspan="3" align="center">貸借合計金額</td>
	  <td colspan="2" align="right">
		  <xsl:value-of select="format-number($借方合計金額,'#,###')" />
	  </td>
	  <td colspan="2" align="right">
		  <xsl:value-of select="format-number($貸方合計金額,'#,###')" />
	  </td>
	</tr>
  </xsl:template>
</xsl:stylesheet>
