# Created by: Thomas Abthorpe <thomas@goodking.ca>
# $FreeBSD: ports/devel/pear-Date_Holidays/Makefile,v 1.22 2012/12/17 02:17:59 svnexp Exp $

PORTNAME=	Date_Holidays
PORTVERSION=	0.21.6
CATEGORIES=	devel www pear

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	PEAR driver based class to calculate holidays

BUILD_DEPENDS=	${PEARDIR}/Date.php:${PORTSDIR}/devel/pear-Date \
		${PEARDIR}/XML/Serializer.php:${PORTSDIR}/devel/pear-XML_Serializer
RUN_DEPENDS=	${PEARDIR}/Date.php:${PORTSDIR}/devel/pear-Date \
		${PEARDIR}/XML/Serializer.php:${PORTSDIR}/devel/pear-XML_Serializer

PEAR_AUTOINSTALL=	yes

LATEST_LINK=	pear-Date_Holidays
OPTIONS_DEFINE=	PEAR_CONSOLE_GETARGS
PEAR_CONSOLE_GETARGS_DESC=	Console::Getargs support

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MPEAR_CONSOLE_GETARGS}
BUILD_DEPENDS+=${PEARDIR}/Console/Getargs.php:${PORTSDIR}/devel/pear-Console_Getargs
.endif

.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.mk>
