# New ports collection makefile for:	toycars
# Date created:		15 Dec 2005
# Whom:			Dmitry Marakasov <amdmi3@amdmi3.ru>
#
# $FreeBSD: ports/games/toycars/Makefile,v 1.26 2012/11/17 05:57:54 svnexp Exp $
#

PORTNAME=	toycars
PORTVERSION=	0.3.10
PORTREVISION=	5
CATEGORIES=	games
MASTER_SITES=	SF

MAINTAINER=	amdmi3@FreeBSD.org
COMMENT=	Physics-based 2D racing game

LIB_DEPENDS=	fltk.1:${PORTSDIR}/x11-toolkits/fltk

USE_SDL=	image sdl
USE_GL=		gl glu
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
MAKE_JOBS_SAFE=	yes

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

PORTDOCS=	README

post-extract:
	@${RM} ${WRKSRC}/data/.*Store

.if !defined(NOPORTDOCS)
post-install:
	${MKDIR} ${DOCSDIR}
.for f in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
