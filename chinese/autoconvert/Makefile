# New ports collection makefile for:	autoconvert
# Date created:		26 Oct 1999
# Whom:			Yin-Jieh Chen <yinjieh@csie.nctu.edu.tw>
#
# $FreeBSD: ports/chinese/autoconvert/Makefile,v 1.28 2012/11/17 05:54:55 svnexp Exp $
#

PORTNAME=	autoconvert
PORTVERSION=	0.3.16
PORTREVISION=	2
CATEGORIES=	chinese
MASTER_SITES=	GOOGLE_CODE
DISTNAME=	${PKGNAMEPREFIX}${PORTNAME}-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Intelligent Chinese encoding converter

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

OPTIONS_DEFINE=	DOCS

MAKE_ENV=	CFLAG="${CPPFLAGS}" LIBS="${LDFLAGS}"
MAKE_JOBS_UNSAFE=	yes
USE_LDCONFIG=	yes
WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

PROJECTHOST=	libhz

.include <bsd.port.options.mk>

post-patch:
	@${REINPLACE_CMD} -e "s|^CFLAGS|#CFLAGS|" ${WRKSRC}/contrib/xchat-plugins/Makefile

post-install:
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}/
	cd ${WRKSRC}/ && ${INSTALL_DATA} ChangeLog Readme TODO Thanks Version ${DOCSDIR}/
.endif

.include <bsd.port.mk>
