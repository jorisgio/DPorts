# New ports collection makefile for:	cfdg
# Date created:		2008-03-14
# Whom:			Anatoly Borodin <anatoly.borodin@gmail.com>
#
# $FreeBSD: ports/graphics/cfdg/Makefile,v 1.6 2012/11/17 05:58:02 svnexp Exp $
#

PORTNAME=	cfdg
PORTVERSION=	2.2.2
PORTREVISION=	1
CATEGORIES=	graphics math
MASTER_SITES=	http://www.contextfreeart.org/download/ \
		http://glyphic.s3.amazonaws.com/cfa/download/
DISTNAME=	ContextFreeSource${PORTVERSION}
EXTRACT_SUFX=	.tgz

MAINTAINER=	anatoly.borodin@gmail.com
COMMENT=	Context Free Design Grammar compiler

LIB_DEPENDS=	png15:${PORTSDIR}/graphics/png

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/LICENSE.txt

WRKSRC=		${WRKDIR}/${DISTNAME}${EXTRACT_SUFX}

USE_GMAKE=	yes

NO_INSTALL_MANPAGES=	yes

PLIST_FILES=	bin/cfdg

.if !defined(NOPORTEXAMPLES)
PORTEXAMPLES=	*
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cfdg ${PREFIX}/bin
.if !defined(NOPORTEXAMPLES)
	${MKDIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/input/* ${EXAMPLESDIR}
.endif

.include <bsd.port.mk>
