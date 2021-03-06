<?xml version="1.0" encoding="Shift_JIS" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" version="4.0" encoding="Shift_JIS" />
  <xsl:decimal-format NaN="未定" />
  <xsl:template match="/">
	<html>
	<head>
<!-- 個別指定式の総勘定元帳を表示する -->
	<title><xsl:text>総勘定元帳</xsl:text></title>
	</head>

<body bgcolor="lightyellow">

	<h2 align="center"><font color="darkviolet"><xsl:text>総勘定元帳　個別指定式</xsl:text></font></h2>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='現金'])>0">
		<xsl:apply-templates select="伝票綴" mode="勘定口座別総勘定元帳">
		    <xsl:with-param name="指定科目名" select="'現金'" />
		</xsl:apply-templates>
	</xsl:if>
	<br/>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='当座預金'])>0">
		<xsl:apply-templates select="伝票綴" mode="勘定口座別総勘定元帳">
		    <xsl:with-param name="指定科目名" select="'当座預金'" />
		</xsl:apply-templates>
	</xsl:if>
	<br/>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='売掛金'])>0">
		<xsl:apply-templates select="伝票綴" mode="勘定口座別総勘定元帳">
		    <xsl:with-param name="指定科目名" select="'売掛金'" />
		</xsl:apply-templates>
	</xsl:if>
	<br/>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='繰越商品'])>0">
		<xsl:apply-templates select="伝票綴" mode="勘定口座別総勘定元帳">
		    <xsl:with-param name="指定科目名" select="'繰越商品'" />
		</xsl:apply-templates>
	</xsl:if>
	<br/>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='備品'])>0">
		<xsl:apply-templates select="伝票綴" mode="勘定口座別総勘定元帳">
		    <xsl:with-param name="指定科目名" select="'備品'" />
		</xsl:apply-templates>
	</xsl:if>
	<br/>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='買掛金'])>0">
		<xsl:apply-templates select="伝票綴" mode="勘定口座別総勘定元帳">
		    <xsl:with-param name="指定科目名" select="'買掛金'" />
		</xsl:apply-templates>
	</xsl:if>
	<br/>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='借入金'])>0">
		<xsl:apply-templates select="伝票綴" mode="勘定口座別総勘定元帳">
		    <xsl:with-param name="指定科目名" select="'借入金'" />
		</xsl:apply-templates>
	</xsl:if>
	<br/>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='資本金'])>0">
		<xsl:apply-templates select="伝票綴" mode="勘定口座別総勘定元帳">
		    <xsl:with-param name="指定科目名" select="'資本金'" />
		</xsl:apply-templates>
	</xsl:if>
	<br/>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='売上'])>0">
		<xsl:apply-templates select="伝票綴" mode="勘定口座別総勘定元帳">
		    <xsl:with-param name="指定科目名" select="'売上'" />
		</xsl:apply-templates>
	</xsl:if>
	<br/>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='受取手数料'])>0">
		<xsl:apply-templates select="伝票綴" mode="勘定口座別総勘定元帳">
		    <xsl:with-param name="指定科目名" select="'受取手数料'" />
		</xsl:apply-templates>
	</xsl:if>
	<br/>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='仕入'])>0">
		<xsl:apply-templates select="伝票綴" mode="勘定口座別総勘定元帳">
		    <xsl:with-param name="指定科目名" select="'仕入'" />
		</xsl:apply-templates>
	</xsl:if>
	<br/>
	<xsl:if test="count(伝票綴/伝票/明細//勘定科目[.='給料'])>0">
		<xsl:apply-templates select="伝票綴" mode="勘定口座別総勘定元帳">
		    <xsl:with-param name="指定科目名" select="'給料'" />
		</xsl:apply-templates>
	</xsl:if>
	</body>
	</html>
  </xsl:template>

  <xsl:template match="伝票綴" mode="勘定口座別総勘定元帳">
	<xsl:param name="指定科目名" />
	<h3 align="center"><xsl:value-of select="$指定科目名" /></h3>
	<table border="1" align="center">
		<tr bgcolor="lightpink">
			<th>連番</th>
			<th valign="bottom"><h6>伝票番号</h6></th>
			<th>日　付</th>
			<th>摘　　要</th>
			<th>借　　方</th>
			<th>貸　　方</th>
			<th>貸借</th>
			<th>残　　高</th>
		</tr>
		<xsl:for-each select="伝票/明細//勘定科目[.=$指定科目名]">
	  		  <tr BORDERCOLOR="maroon" bgcolor="linen">
				<td nowrap="nowrap" align="center">
					<xsl:number value="position()" format="1" />
				</td>
				<td nowrap="nowrap" align="center">
					<xsl:variable name="伝番" select="ancestor::伝票/前付/伝票番号" />
					<xsl:value-of select="$伝番" />
				</td>
				<td nowrap="nowrap">
					<xsl:value-of select="ancestor::伝票/前付/日付" />
				</td>
				<td nowrap="nowrap" align="center">
				  <xsl:choose>
					<xsl:when test="local-name(../.) = '借方'">
						<xsl:if test="count(ancestor::明細/貸方)=1">
							<xsl:value-of select="ancestor::明細/貸方/勘定科目" /></xsl:if>
						<xsl:if test="count(ancestor::明細/貸方)>1">諸　口</xsl:if>
					</xsl:when>
					<xsl:when test="local-name(../.) = '貸方'">
						<xsl:if test="count(ancestor::明細/借方)=1">
							<xsl:value-of select="ancestor::明細/借方/勘定科目" /></xsl:if>
						<xsl:if test="count(ancestor::明細/借方)>1">諸　口</xsl:if>
					</xsl:when>
					<xsl:otherwise>貸借エラー</xsl:otherwise>
				  </xsl:choose>
				</td>

				<td nowrap="nowrap" align="right">
					<xsl:value-of select="format-number(sum(ancestor::伝票/明細/借方[勘定科目=$指定科目名]/金額),'#,###')" />
				</td>
				<td nowrap="nowrap" align="right">
					<xsl:value-of select="format-number(sum(ancestor::伝票/明細/貸方[勘定科目=$指定科目名]/金額),'#,###')" />
				</td>
				<xsl:variable name="類型残高" select="sum(ancestor::伝票綴/伝票[not (number(前付/伝票番号)>number($伝番))]/明細/借方[勘定科目=$指定科目名]/金額)-sum(ancestor::伝票綴/伝票[not (number(前付/伝票番号)>number($伝番))]/明細/貸方[勘定科目=$指定科目名]/金額)" />

				<td nowrap="nowrap" align="center">
				  <xsl:choose>
					<xsl:when test="number($類型残高)>0">借</xsl:when>
					<xsl:when test="not (number($類型残高)>=0)">貸</xsl:when>
					<xsl:otherwise>－</xsl:otherwise>
				  </xsl:choose>
				</td>
				<td nowrap="nowrap" align="right">
				  <xsl:choose>
					<xsl:when test="number($類型残高)>=0"><xsl:value-of select="format-number($類型残高,'#,###')" /></xsl:when>
					<xsl:otherwise><xsl:value-of select="format-number(-number($類型残高),'#,###')" /></xsl:otherwise>
				  </xsl:choose>
				</td>
	  		  </tr>
    	</xsl:for-each>

		<!-- 総勘定元帳の貸借差額を表示する -->
		<xsl:variable name="類型残高総計" select="sum(伝票/明細/借方[勘定科目=$指定科目名]/金額)-sum(伝票/明細/貸方[勘定科目=$指定科目名]/金額)" />
		  <xsl:choose>
			<!-- 借方が少ないときに、総勘定元帳の借方合計を表示する　-->
			<xsl:when test= "not($類型残高総計 > 0)">
			  <tr BORDERCOLOR="maroon" bgcolor="peachpuff">
				<th colspan="4" color="red"><font color="red">貸　借　差　額</font></th>
				<td nowrap="nowrap" align="right"><font color="red">
					<xsl:value-of select="format-number(-$類型残高総計,'#,###')" />
				</font>
				</td>
				<td nowrap="nowrap" align="right">
				</td>
				<td colspan="2">　</td>
			  </tr>
			</xsl:when>

			<!-- 借方が多いときに、総勘定元帳の貸方合計を表示する　-->
			<xsl:when test= "$類型残高総計 > 0">
			  <tr BORDERCOLOR="maroon" bgcolor="peachpuff">
				<th colspan="4" color="red"><font color="red">貸　借　差　額</font></th>
				<td nowrap="nowrap" align="right">
				</td>
				<td nowrap="nowrap" align="right"><font color="red">
					<xsl:value-of select="format-number($類型残高総計,'#,###')" />
				</font>
				</td>
				<td colspan="2">　</td>
			  </tr>
			</xsl:when>

			<!-- 貸借差額0のときには、貸借差額行を表示しない　-->
			<xsl:otherwise></xsl:otherwise>
		  </xsl:choose>

			<!-- 総勘定元帳の合計行を借方統一で表示する -->
			<xsl:choose>
			  <!-- 総勘定元帳の合計行を借方統一で表示する -->
			  <xsl:when test="sum(伝票/明細/借方[勘定科目=$指定科目名]/金額) >= sum(伝票/明細/貸方[勘定科目=$指定科目名]/金額)">
			  	<tr BORDERCOLOR="maroon" bgcolor="peachpuff">
					<th colspan="4">貸　借　合　計</th>
					<td nowrap="nowrap" align="right">
						<xsl:value-of select="format-number(sum(伝票/明細/借方[勘定科目=$指定科目名]/金額),'#,###')" />
					</td>
					<td nowrap="nowrap" align="right">
						<xsl:value-of select="format-number(sum(伝票/明細/借方[勘定科目=$指定科目名]/金額),'#,###')" />
					</td>
					<td colspan="2">　</td>
			  	</tr>
			  </xsl:when>

			  <!-- 総勘定元帳の合計行を貸方統一で表示する -->
			  <xsl:otherwise>
			  	<tr BORDERCOLOR="maroon" bgcolor="peachpuff">
					<th colspan="4">貸　借　合　計</th>
					<td nowrap="nowrap" align="right">
						<xsl:value-of select="format-number(sum(伝票/明細/貸方[勘定科目=$指定科目名]/金額),'#,###')" />
					</td>
					<td nowrap="nowrap" align="right">
						<xsl:value-of select="format-number(sum(伝票/明細/貸方[勘定科目=$指定科目名]/金額),'#,###')" />
					</td>
					<td colspan="2">　</td>
			  	</tr>
			  </xsl:otherwise>
			</xsl:choose>
   </table>
  </xsl:template>

</xsl:stylesheet>
