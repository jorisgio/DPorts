# ex:ts=8
# Ports collection makefile for:  cwish
# Date created:			  Thur Sept 25, 1998
# Whom:				  David O'Brien (obrien@NUXI.com)
#
# $FreeBSD: ports/misc/cwish/Makefile,v 1.19 2012/12/06 16:41:47 svnexp Exp $
#

PORTNAME=	cwish
PORTVERSION=	3.52
PORTREVISION=	2
CATEGORIES=	misc shells
MASTER_SITES=	http://www.predatorlabs.net/dl/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Curses based user friendly windowing shell

NO_WRKSUBDIR=	yes
ALL_TARGET=	cwish
MAN1=		cwish.1
PLIST_FILES=	bin/cwish

post-patch:
	${REINPLACE_CMD} -e 65d ${WRKSRC}/cwish.h

pre-configure:
	${CP} ${WRKSRC}/Makefile.FreeBSD ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cwish ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/cwish.1 ${MANPREFIX}/man/man1

.include <bsd.port.mk>
