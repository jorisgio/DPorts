# New ports collection makefile for:	flyhard
# Date created:		15 Jan 2007
# Whom:			Dmitry Marakasov <amdmi3@amdmi3.ru>
#
# $FreeBSD: ports/games/flyhard/Makefile,v 1.16 2012/11/17 05:57:38 svnexp Exp $
#

PORTNAME=	flyhard
PORTVERSION=	0.42
PORTREVISION=	4
CATEGORIES=	games
MASTER_SITES=	http://www.markboyd.me.uk/games/flyhard/ \
		http://mirror.amdmi3.ru/distfiles/

MAINTAINER=	amdmi3@FreeBSD.org
COMMENT=	Game resembling Thrust, but with lots of shooting and puzzles

LIB_DEPENDS=	png15:${PORTSDIR}/graphics/png
BUILD_DEPENDS=	${LOCALBASE}/include/boost/shared_ptr.hpp:${PORTSDIR}/devel/boost-libs

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_SDL=	sdl mixer

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	${PTHREAD_LIBS} -L${LOCALBASE}/lib

PORTDOCS=	README

.if !defined(NOPORTDOCS)
post-install:
	${MKDIR} ${DOCSDIR}
.for f in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
