<?xml version="1.0" encoding="Shift_JIS" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" version="4.0" encoding="Shift_JIS" />
  <xsl:decimal-format NaN="����" />
  <xsl:template match="/">
	<html>
	<head>
	<title><xsl:text>�c�����Z�\</xsl:text></title>
	</head>
	<body bgcolor="floralwhite">
	<h1 align="center"><font color="darkviolet"><xsl:text>�c�@���@���@�Z�@�\</xsl:text></font></h1>
	<table border="1" align="center">
	<tr bgcolor="lightpink">
		<th>�؁@�@��</th>
		<th>����</th>
		<th>����Ȗ�</th>
		<th>�݁@�@��</th>
	</tr>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='����'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'����'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='�����a��'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'�����a��'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='���|��'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'���|��'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='����`'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'����`'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='�ݓ|������'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'�ݓ|������'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='�J�z���i'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'�J�z���i'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='���i'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'���i'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='���|��'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'���|��'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='�ؓ���'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'�ؓ���'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='�x����`'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'�x����`'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='���{��'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'���{��'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='���o��'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'���o��'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='����'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'����'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='���萔��'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'���萔��'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='�G�v'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'�G�v'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='�d��'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'�d��'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='����'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'����'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='�x���ƒ�'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'�x���ƒ�'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='���Օi��'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'���Օi��'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='�������M��'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'�������M��'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='�G��'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'�G��'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='�x������'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'�x������'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='�G��'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'�G��'" />
		</xsl:apply-templates>
	</xsl:if>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='�����ߕs��'])>0">
		<xsl:apply-templates select="�`�[��" mode="�ꊨ�蕪">
		    <xsl:with-param name="�w��Ȗږ�" select="'�����ߕs��'" />
		</xsl:apply-templates>
	</xsl:if>
<!--
	<tr BORDERCOLOR="maroon" bgcolor="peachpuff">
		<td nowrap="nowrap" align="right">
			<xsl:value-of select="format-number(sum(�`�[��/�`�[/����/�ؕ�/���z),'#,###')" />
		</td>
		<td></td><td>���@�v</td>
		<td nowrap="nowrap" align="right">
			<xsl:value-of select="format-number(sum(�`�[��/�`�[/����/�ݕ�/���z),'#,###')" />
		</td>
	</tr>
-->
	</table>
	</body>
	</html>
  </xsl:template>


  <xsl:template match="�`�[��" mode="�ꊨ�蕪">
  <xsl:param name="�w��Ȗږ�" />
  <xsl:variable name="�Ȗڎc��" select="sum(�`�[/����/�ؕ�[����Ȗ�=$�w��Ȗږ�]/���z)-sum(�`�[/����/�ݕ�[����Ȗ�=$�w��Ȗږ�]/���z)" />
  <!-- �؂���\���^�ݕ��\���̔��� -->
  <xsl:choose>
  <xsl:when test="$�Ȗڎc�� > 0">
	<!-- �ؕ��ɕ\�� -->
	<tr BORDERCOLOR="maroon" bgcolor="linen">
	  <td nowrap="nowrap" align="right">
		<xsl:value-of select="format-number($�Ȗڎc��,'#,###')" />
	  </td>
	  <td nowrap="nowrap" align="center">
		<xsl:value-of select="�`�[/����//����Ȗ�[.=$�w��Ȗږ�]/preceding-sibling::����ȖڃR�[�h" />
	  </td>
<!-- ���̕\�L�ł�����ȖڃR�[�h���w��ł���B��Ԗڂ̗v�f���w�肵�Ă���B
	  <td nowrap="nowrap" align="center">
		<xsl:value-of select="�`�[/����//����ȖڃR�[�h[following-sibling::����Ȗ�=$�w��Ȗږ�]" />
	  </td>
-->
	  <td nowrap="nowrap" align="center">
		<xsl:value-of select="�`�[/����//����Ȗ�[.=$�w��Ȗږ�]" />
	  </td>
	  <td nowrap="nowrap" align="right">
	  </td>
	</tr>
  </xsl:when>
  <xsl:when test="$�Ȗڎc�� = 0">
	<!-- �c���O�ŋ��z���󗓂ŕ\�� -->
	<tr BORDERCOLOR="maroon" bgcolor="linen">
	  <td nowrap="nowrap" align="right">
	  </td>
	  <td nowrap="nowrap" align="center">
		<xsl:value-of select="�`�[/����//����Ȗ�[.=$�w��Ȗږ�]/preceding-sibling::����ȖڃR�[�h" />
	  </td>
	  <td nowrap="nowrap" align="center">
		<xsl:value-of select="�`�[/����//����Ȗ�[.=$�w��Ȗږ�]" />
	  </td>
	  <td nowrap="nowrap" align="right">
	  </td>
	</tr>
  </xsl:when>
  <xsl:otherwise>
	<!-- �ݕ��ɕ\�� -->
	<tr BORDERCOLOR="maroon" bgcolor="linen">
	  <td nowrap="nowrap" align="right">
	  </td>
	  <td nowrap="nowrap" align="center">
		<xsl:value-of select="�`�[/����//����Ȗ�[.=$�w��Ȗږ�]/preceding-sibling::����ȖڃR�[�h" />
	  </td>
	  <td nowrap="nowrap" align="center">
		<xsl:value-of select="�`�[/����//����Ȗ�[.=$�w��Ȗږ�]" />
	  </td>
	  <td nowrap="nowrap" align="right">
		<xsl:value-of select="format-number(-$�Ȗڎc��,'#,###')" />
	  </td>
	</tr>
  </xsl:otherwise>
  </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
