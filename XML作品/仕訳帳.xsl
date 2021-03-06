<?xml version="1.0" encoding="Shift_JIS" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" version="4.0" encoding="Shift_JIS" />
  <xsl:decimal-format NaN="����" />
  <xsl:template match="/">
	<html>
	<head>
	<title><xsl:text>�d��</xsl:text></title>
	</head>
	<body bgcolor="floralwhite">
	<h1 align="center"><font color="darkviolet"><xsl:text>�d�@��@��
		�i�����\���p�j</xsl:text></font></h1>
	<table border="1" align="center">
	<tr bgcolor="lightpink">
		<th>�A��</th>
		<th>�`�[�ԍ�</th>
		<th>���t</th>
		<th>�ؕ�����</th>
		<th>���@�@�z</th>
		<th>�ݕ�����</th>
		<th>���@�@�z</th>
	</tr>
	<xsl:apply-templates select="�`�[��" mode="�����ꗗ" />
	<xsl:apply-templates select="�`�[��" mode="���v�s" />
	</table>
	</body>
	</html>
  </xsl:template>

  <xsl:template match="�`�[��" mode="�����ꗗ">
	<xsl:for-each select="�`�[">
	  <xsl:sort select="�O�t/���t" data-type="text" order="ascending" />
		<tr BORDERCOLOR="maroon" bgcolor="linen">
		  <td nowrap="nowrap" align="center">
		    <xsl:number value="position()" format="a" />
		  </td>
	  	  <xsl:for-each select="�O�t">
	    	<td nowrap="nowrap" align="center">
			  <xsl:value-of select="�`�[�ԍ�" />
			</td>
			<td nowrap="nowrap">
			  <xsl:value-of select="���t" />
			</td>
		  </xsl:for-each>
		  <td colspan="2" align="center">
			<xsl:if test="count(����/�ؕ�[number(���z)>0])>1">���@��</xsl:if>
			<xsl:text>�@</xsl:text>
		  </td>
		  <td colspan="2" align="center">
			<xsl:if test="count(����/�ݕ�[number(���z)>0])>1">���@��</xsl:if>
			<xsl:text>�@</xsl:text>
		  </td>
		</tr>

	  <xsl:for-each select="����">

	    <xsl:for-each select="�ؕ�">
		<tr bgcolor="lightyellow">
		  <td></td><td></td><td></td>
		  <td nowrap="nowrap">
			<xsl:value-of select="����Ȗ�" />
		  </td>
		  <td nowrap="nowrap" align="right">
			<xsl:value-of select="format-number(���z,'#,###')" />
		  </td>
		  <td></td><td></td>
		</tr>
	    </xsl:for-each>

	    <xsl:for-each select="�ݕ�">
		<tr bgcolor="lightyellow">
		  <td></td><td></td><td></td><td></td><td></td>
		  <td nowrap="nowrap">
			<xsl:value-of select="����Ȗ�" />
		  </td>
		  <td nowrap="nowrap" align="right">
			<xsl:value-of select="format-number(���z,'#,###')" />
		  </td>
		</tr>
	    </xsl:for-each>
  	  </xsl:for-each>
	</xsl:for-each>
  </xsl:template>

  <xsl:template match="�`�[��" mode="���v�s">
	<tr BORDERCOLOR="maroon" bgcolor="peachpuff">
	  <xsl:variable name="�ؕ����v���z" select="sum(�`�[/����/�ؕ�/���z)" />
	  <xsl:variable name="�ݕ����v���z" select="sum(�`�[/����/�ݕ�/���z)" />
	  <td colspan="3" align="center">�ݎ؍��v���z</td>
	  <td colspan="2" align="right">
		  <xsl:value-of select="format-number($�ؕ����v���z,'#,###')" />
	  </td>
	  <td colspan="2" align="right">
		  <xsl:value-of select="format-number($�ݕ����v���z,'#,###')" />
	  </td>
	</tr>
  </xsl:template>
</xsl:stylesheet>
