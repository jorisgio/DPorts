# Ports collection makefile for:	vncreflector
# Date created:				Wed, Jan 19 2005
# Whom:					Brooks Davis <brooks@freebsd.org>
#
# $FreeBSD: ports/net/vncreflector/Makefile,v 1.10 2012/11/17 06:00:24 svnexp Exp $
#

PORTNAME=	vncreflector
PORTVERSION=	1.2.4
PORTREVISION=	4
CATEGORIES=	net
MASTER_SITES=	SF/vnc-reflector/vnc-reflector/${PORTVERSION}
DISTNAME=	vnc_reflector-${PORTVERSION}

MAINTAINER=	brooks@FreeBSD.org
COMMENT=	Multi-client VNC proxy server

LIB_DEPENDS+=	jpeg.11:${PORTSDIR}/graphics/jpeg

USE_RC_SUBR=	vncreflector

ALL_TARGET=	default
WRKSRC=		${WRKDIR}/vnc_reflector

post-patch:
	${REINPLACE_CMD} -e 's|%%LOCALBASE%%|${LOCALBASE}|' ${WRKSRC}/Makefile

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
	@${MKDIR} -m0750 ${PREFIX}/etc/${PORTNAME}
	@${CHOWN} root:wheel ${PREFIX}/etc/${PORTNAME}
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
