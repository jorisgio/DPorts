# New ports collection makefile for:	evilwm
# Date created:				2000-11-04
# Whom:					trevor
#
# $FreeBSD: ports/x11-wm/evilwm/Makefile,v 1.21 2012/11/17 06:03:42 svnexp Exp $
#

PORTNAME=	evilwm
PORTVERSION=	1.1.0
CATEGORIES=	x11-wm
MASTER_SITES=	http://www.6809.org.uk/evilwm/

MAINTAINER=	lasg@lasg.dk
COMMENT=	Minimalist window manager based on 9wm

USE_GMAKE=	yes
USE_XORG=	x11 xpm xext xrandr xrender
MAKE_ARGS=	CC="${CC}" CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"

MAN1=		evilwm.1
PORTDOCS=	ChangeLog README TODO
PLIST_FILES=	bin/evilwm \
		${DESKTOPDIR:S,^${PREFIX}/,,}/${PORTNAME}.desktop
PLIST_DIRSTRY=	${DESKTOPDIR:S,^${PREFIX}/,,}

# X11's include and library path
CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS=	-L${LOCALBASE}/lib

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${MAN1} ${MANPREFIX}/man/man1
	${MKDIR} ${DESKTOPDIR}
	${INSTALL_DATA} ${WRKSRC}/${PORTNAME}.desktop ${DESKTOPDIR}
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
.for f in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
