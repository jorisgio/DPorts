# Ports collection makefile for:	pear-Net_Nmap
# Date created:				13 Oct 2008
# Whom:					Wen Heping<wenheping@gmail.com>
#
# $FreeBSD: ports/net/pear-Net_Nmap/Makefile,v 1.8 2012/11/17 06:00:14 svnexp Exp $
#

PORTNAME=	Net_Nmap
PORTVERSION=	1.0.4
CATEGORIES=	net pear

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	A Simple Wrapper Class for the Nmap Utility

BUILD_DEPENDS=	${PEARDIR}/XML/Parser.php:${PORTSDIR}/devel/pear-XML_Parser
RUN_DEPENDS:=	${PEARDIR}/XML/Parser.php:${PORTSDIR}/devel/pear-XML_Parser

PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
