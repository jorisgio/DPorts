# New ports collection makefile for:	pipewalker
# Date created:		11 Aug 2009
# Whom:			Dmitry Marakasov <amdmi3@FreeBSD.org>
#
# $FreeBSD: ports/games/pipewalker/Makefile,v 1.6 2012/11/17 05:57:49 svnexp Exp $
#

PORTNAME=	pipewalker
PORTVERSION=	0.8.3
PORTREVISION=	1
CATEGORIES=	games
MASTER_SITES=	SF
EXTRACT_SUFX=	-src.tar.gz

MAINTAINER=	amdmi3@FreeBSD.org
COMMENT=	A clone of the NetWalk game

GNU_CONFIGURE=	yes
USE_SDL=	sdl
USE_GL=		gl glu
MAKE_JOBS_SAFE=	yes

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib ${PTHREAD_LIBS}

PORTDOCS=	*

post-patch:
	@${CHMOD} a+x ${WRKSRC}/install-sh
	@${REINPLACE_CMD} -e 's|(datadir)/games|(datadir)|' \
		${WRKSRC}/data/Makefile.in ${WRKSRC}/src/Makefile.in
	@${REINPLACE_CMD} -e '/^install-data-am/ s|install-pkgmenudataDATA||' \
		${WRKSRC}/extra/Makefile.in
.if defined(NOPORTDOCS)
	@${REINPLACE_CMD} -e '/^install-data-am/ s|install-pkgdocdataDATA||' \
		${WRKSRC}/Makefile.in
.endif

.include <bsd.port.mk>
