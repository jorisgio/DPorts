# New ports collection makefile for:	ump
# Date created:		2006-04-20
# Whom:			Nicola Vitale	<nivit@email.it>
#
# $FreeBSD: ports/math/ump/Makefile,v 1.18 2012/11/17 05:59:31 svnexp Exp $
#

PORTNAME=	ump
PORTVERSION=	0.8.6
PORTREVISION=	7
CATEGORIES=	math
MASTER_SITES=	SF/u-m-p/u-m-p/${PORTVERSION}

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	A graphical, easy to use math program

CONFLICTS=	ump-1.[0-9]*
LATEST_LINK=	math-ump

USE_BZIP2=	yes
USE_GMAKE=	yes
USE_GNOME=	gtk20
USE_GL=		glu

ALL_TARGET=	${PORTNAME}
WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

MAKE_ENV+=	DATADIR="${DATADIR}"

FIND_DIRS=	-type d
FIND_DATA=	-type f

post-patch:
	@${REINPLACE_CMD} -e 's|%%PREFIX%%|${PREFIX}|' ${WRKSRC}/src/main.cpp

post-install:
	${INSTALL_DATA} ${WRKSRC}/ump.conf ${PREFIX}/etc/ump.conf.dist
.if !exists(${PREFIX}/etc/ump.conf)
	${INSTALL_DATA} ${WRKSRC}/ump.conf ${PREFIX}/etc
.endif

.include <bsd.port.mk>
