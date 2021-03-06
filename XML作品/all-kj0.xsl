<?xml version="1.0" encoding="Shift_JIS" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" version="4.0" encoding="Shift_JIS" />
  <xsl:decimal-format NaN="����" />
  <xsl:template match="/">
	<html>
	<head>
<!-- �ʎw�莮�̑����茳����\������ -->
	<title><xsl:text>�����茳��</xsl:text></title>
	</head>

<body bgcolor="lightyellow">

	<h2 align="center"><font color="darkviolet"><xsl:text>�����茳���@�ʎw�莮</xsl:text></font></h2>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='����'])>0">
		<xsl:apply-templates select="�`�[��" mode="��������ʑ����茳��">
		    <xsl:with-param name="�w��Ȗږ�" select="'����'" />
		</xsl:apply-templates>
	</xsl:if>
	<br/>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='�����a��'])>0">
		<xsl:apply-templates select="�`�[��" mode="��������ʑ����茳��">
		    <xsl:with-param name="�w��Ȗږ�" select="'�����a��'" />
		</xsl:apply-templates>
	</xsl:if>
	<br/>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='���|��'])>0">
		<xsl:apply-templates select="�`�[��" mode="��������ʑ����茳��">
		    <xsl:with-param name="�w��Ȗږ�" select="'���|��'" />
		</xsl:apply-templates>
	</xsl:if>
	<br/>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='�J�z���i'])>0">
		<xsl:apply-templates select="�`�[��" mode="��������ʑ����茳��">
		    <xsl:with-param name="�w��Ȗږ�" select="'�J�z���i'" />
		</xsl:apply-templates>
	</xsl:if>
	<br/>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='���i'])>0">
		<xsl:apply-templates select="�`�[��" mode="��������ʑ����茳��">
		    <xsl:with-param name="�w��Ȗږ�" select="'���i'" />
		</xsl:apply-templates>
	</xsl:if>
	<br/>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='���|��'])>0">
		<xsl:apply-templates select="�`�[��" mode="��������ʑ����茳��">
		    <xsl:with-param name="�w��Ȗږ�" select="'���|��'" />
		</xsl:apply-templates>
	</xsl:if>
	<br/>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='�ؓ���'])>0">
		<xsl:apply-templates select="�`�[��" mode="��������ʑ����茳��">
		    <xsl:with-param name="�w��Ȗږ�" select="'�ؓ���'" />
		</xsl:apply-templates>
	</xsl:if>
	<br/>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='���{��'])>0">
		<xsl:apply-templates select="�`�[��" mode="��������ʑ����茳��">
		    <xsl:with-param name="�w��Ȗږ�" select="'���{��'" />
		</xsl:apply-templates>
	</xsl:if>
	<br/>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='����'])>0">
		<xsl:apply-templates select="�`�[��" mode="��������ʑ����茳��">
		    <xsl:with-param name="�w��Ȗږ�" select="'����'" />
		</xsl:apply-templates>
	</xsl:if>
	<br/>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='���萔��'])>0">
		<xsl:apply-templates select="�`�[��" mode="��������ʑ����茳��">
		    <xsl:with-param name="�w��Ȗږ�" select="'���萔��'" />
		</xsl:apply-templates>
	</xsl:if>
	<br/>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='�d��'])>0">
		<xsl:apply-templates select="�`�[��" mode="��������ʑ����茳��">
		    <xsl:with-param name="�w��Ȗږ�" select="'�d��'" />
		</xsl:apply-templates>
	</xsl:if>
	<br/>
	<xsl:if test="count(�`�[��/�`�[/����//����Ȗ�[.='����'])>0">
		<xsl:apply-templates select="�`�[��" mode="��������ʑ����茳��">
		    <xsl:with-param name="�w��Ȗږ�" select="'����'" />
		</xsl:apply-templates>
	</xsl:if>
	</body>
	</html>
  </xsl:template>

  <xsl:template match="�`�[��" mode="��������ʑ����茳��">
	<xsl:param name="�w��Ȗږ�" />
	<h3 align="center"><xsl:value-of select="$�w��Ȗږ�" /></h3>
	<table border="1" align="center">
		<tr bgcolor="lightpink">
			<th>�A��</th>
			<th valign="bottom"><h6>�`�[�ԍ�</h6></th>
			<th>���@�t</th>
			<th>�E�@�@�v</th>
			<th>�؁@�@��</th>
			<th>�݁@�@��</th>
			<th>�ݎ�</th>
			<th>�c�@�@��</th>
		</tr>
		<xsl:for-each select="�`�[/����//����Ȗ�[.=$�w��Ȗږ�]">
	  		  <tr BORDERCOLOR="maroon" bgcolor="linen">
				<td nowrap="nowrap" align="center">
					<xsl:number value="position()" format="1" />
				</td>
				<td nowrap="nowrap" align="center">
					<xsl:variable name="�`��" select="ancestor::�`�[/�O�t/�`�[�ԍ�" />
					<xsl:value-of select="$�`��" />
				</td>
				<td nowrap="nowrap">
					<xsl:value-of select="ancestor::�`�[/�O�t/���t" />
				</td>
				<td nowrap="nowrap" align="center">
				  <xsl:choose>
					<xsl:when test="local-name(../.) = '�ؕ�'">
						<xsl:if test="count(ancestor::����/�ݕ�)=1">
							<xsl:value-of select="ancestor::����/�ݕ�/����Ȗ�" /></xsl:if>
						<xsl:if test="count(ancestor::����/�ݕ�)>1">���@��</xsl:if>
					</xsl:when>
					<xsl:when test="local-name(../.) = '�ݕ�'">
						<xsl:if test="count(ancestor::����/�ؕ�)=1">
							<xsl:value-of select="ancestor::����/�ؕ�/����Ȗ�" /></xsl:if>
						<xsl:if test="count(ancestor::����/�ؕ�)>1">���@��</xsl:if>
					</xsl:when>
					<xsl:otherwise>�ݎ؃G���[</xsl:otherwise>
				  </xsl:choose>
				</td>

				<td nowrap="nowrap" align="right">
					<xsl:value-of select="format-number(sum(ancestor::�`�[/����/�ؕ�[����Ȗ�=$�w��Ȗږ�]/���z),'#,###')" />
				</td>
				<td nowrap="nowrap" align="right">
					<xsl:value-of select="format-number(sum(ancestor::�`�[/����/�ݕ�[����Ȗ�=$�w��Ȗږ�]/���z),'#,###')" />
				</td>
				<xsl:variable name="�ތ^�c��" select="sum(ancestor::�`�[��/�`�[[not (number(�O�t/�`�[�ԍ�)>number($�`��))]/����/�ؕ�[����Ȗ�=$�w��Ȗږ�]/���z)-sum(ancestor::�`�[��/�`�[[not (number(�O�t/�`�[�ԍ�)>number($�`��))]/����/�ݕ�[����Ȗ�=$�w��Ȗږ�]/���z)" />

				<td nowrap="nowrap" align="center">
				  <xsl:choose>
					<xsl:when test="number($�ތ^�c��)>0">��</xsl:when>
					<xsl:when test="not (number($�ތ^�c��)>=0)">��</xsl:when>
					<xsl:otherwise>�|</xsl:otherwise>
				  </xsl:choose>
				</td>
				<td nowrap="nowrap" align="right">
				  <xsl:choose>
					<xsl:when test="number($�ތ^�c��)>=0"><xsl:value-of select="format-number($�ތ^�c��,'#,###')" /></xsl:when>
					<xsl:otherwise><xsl:value-of select="format-number(-number($�ތ^�c��),'#,###')" /></xsl:otherwise>
				  </xsl:choose>
				</td>
	  		  </tr>
    	</xsl:for-each>

		<!-- �����茳���̑ݎ؍��z��\������ -->
		<xsl:variable name="�ތ^�c�����v" select="sum(�`�[/����/�ؕ�[����Ȗ�=$�w��Ȗږ�]/���z)-sum(�`�[/����/�ݕ�[����Ȗ�=$�w��Ȗږ�]/���z)" />
		  <xsl:choose>
			<!-- �ؕ������Ȃ��Ƃ��ɁA�����茳���̎ؕ����v��\������@-->
			<xsl:when test= "not($�ތ^�c�����v > 0)">
			  <tr BORDERCOLOR="maroon" bgcolor="peachpuff">
				<th colspan="4" color="red"><font color="red">�݁@�؁@���@�z</font></th>
				<td nowrap="nowrap" align="right"><font color="red">
					<xsl:value-of select="format-number(-$�ތ^�c�����v,'#,###')" />
				</font>
				</td>
				<td nowrap="nowrap" align="right">
				</td>
				<td colspan="2">�@</td>
			  </tr>
			</xsl:when>

			<!-- �ؕ��������Ƃ��ɁA�����茳���̑ݕ����v��\������@-->
			<xsl:when test= "$�ތ^�c�����v > 0">
			  <tr BORDERCOLOR="maroon" bgcolor="peachpuff">
				<th colspan="4" color="red"><font color="red">�݁@�؁@���@�z</font></th>
				<td nowrap="nowrap" align="right">
				</td>
				<td nowrap="nowrap" align="right"><font color="red">
					<xsl:value-of select="format-number($�ތ^�c�����v,'#,###')" />
				</font>
				</td>
				<td colspan="2">�@</td>
			  </tr>
			</xsl:when>

			<!-- �ݎ؍��z0�̂Ƃ��ɂ́A�ݎ؍��z�s��\�����Ȃ��@-->
			<xsl:otherwise></xsl:otherwise>
		  </xsl:choose>

			<!-- �����茳���̍��v�s���ؕ�����ŕ\������ -->
			<xsl:choose>
			  <!-- �����茳���̍��v�s���ؕ�����ŕ\������ -->
			  <xsl:when test="sum(�`�[/����/�ؕ�[����Ȗ�=$�w��Ȗږ�]/���z) >= sum(�`�[/����/�ݕ�[����Ȗ�=$�w��Ȗږ�]/���z)">
			  	<tr BORDERCOLOR="maroon" bgcolor="peachpuff">
					<th colspan="4">�݁@�؁@���@�v</th>
					<td nowrap="nowrap" align="right">
						<xsl:value-of select="format-number(sum(�`�[/����/�ؕ�[����Ȗ�=$�w��Ȗږ�]/���z),'#,###')" />
					</td>
					<td nowrap="nowrap" align="right">
						<xsl:value-of select="format-number(sum(�`�[/����/�ؕ�[����Ȗ�=$�w��Ȗږ�]/���z),'#,###')" />
					</td>
					<td colspan="2">�@</td>
			  	</tr>
			  </xsl:when>

			  <!-- �����茳���̍��v�s��ݕ�����ŕ\������ -->
			  <xsl:otherwise>
			  	<tr BORDERCOLOR="maroon" bgcolor="peachpuff">
					<th colspan="4">�݁@�؁@���@�v</th>
					<td nowrap="nowrap" align="right">
						<xsl:value-of select="format-number(sum(�`�[/����/�ݕ�[����Ȗ�=$�w��Ȗږ�]/���z),'#,###')" />
					</td>
					<td nowrap="nowrap" align="right">
						<xsl:value-of select="format-number(sum(�`�[/����/�ݕ�[����Ȗ�=$�w��Ȗږ�]/���z),'#,###')" />
					</td>
					<td colspan="2">�@</td>
			  	</tr>
			  </xsl:otherwise>
			</xsl:choose>
   </table>
  </xsl:template>

</xsl:stylesheet>
