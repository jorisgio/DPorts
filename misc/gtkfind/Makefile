# New ports collection makefile for:	gtkfind
# Date created:				28 Sept 1998
# Whom:					Bill Fumerola <billf@chc-chimes.com>
#
# $FreeBSD: ports/misc/gtkfind/Makefile,v 1.32 2012/11/17 05:59:38 svnexp Exp $
#

PORTNAME=	gtkfind
PORTVERSION=	1.1
PORTREVISION=	6
CATEGORIES=	misc
MASTER_SITES=	http://www.bayofrum.net/dist/${PORTNAME}/ \
		http://www.purplehat.org/downloads/gtkfind/

MAINTAINER=	perryh@pluto.rain.com
COMMENT=	The program to use to have to remember all the options to find(1)

BUILD_DEPENDS=	appres:${PORTSDIR}/x11/appres \
		xterm:${PORTSDIR}/x11/xterm

USE_GMAKE=	yes
USE_GNOME=	gtk12
GNU_CONFIGURE=	yes

MAN1=		gtkfind.1
PLIST_FILES=	bin/gtkfind

post-patch:
	${REINPLACE_CMD} -e "s,-O2,${CFLAGS}," ${WRKSRC}/configure ${WRKSRC}/Makefile.in

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gtkfind ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/gtkfind.1 ${MANPREFIX}/man/man1

.include <bsd.port.mk>
