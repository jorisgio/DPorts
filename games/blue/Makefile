# Created by: Andrey Zakhvatov
# $FreeBSD: ports/games/blue/Makefile,v 1.21 2012/11/28 18:12:31 svnexp Exp $

PORTNAME=	blue
PORTVERSION=	2.11
CATEGORIES=	games
MASTER_SITES=	http://www.catb.org/~esr/bluemoon/
DISTNAME=	bluemoon-${PORTVERSION}

MAINTAINER=	nemysis@gmx.ch
COMMENT=	Blue Moon card solitaire

LICENSE=	BSD

USE_GMAKE=	yes
ALL_TARGET=	bluemoon
MAKE_JOBS_SAFE=	yes

PLIST_FILES=	bin/blue \
		bin/bluemoon

MAN6=		bluemoon.6
MLINKS=		bluemoon.6 blue.6

post-patch:
	@${REINPLACE_CMD} -e 's|^CFLAGS=|CFLAGS?=|g ; \
		 s|cc |$${CC} |g' ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bluemoon ${PREFIX}/bin
	@${LN} -sf bluemoon ${PREFIX}/bin/blue
	${INSTALL_MAN} ${MAN6:S|^|${WRKSRC}/|} ${MAN6PREFIX}/man/man6

.include <bsd.port.mk>
