# New ports collection makefile for:   birthday
# Date created:        21 May 2001
# Whom:                Niek Bergboer <niek@bergboer.net>
#
# $FreeBSD: ports/misc/birthday/Makefile,v 1.8 2012/11/17 05:59:33 svnexp Exp $
#

PORTNAME=	birthday
PORTVERSION=	1.5
CATEGORIES=	misc
MASTER_SITES=	http://users.zetnet.co.uk/mortia/source/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A program that outputs reminders for upcoming events (e.g. birthdays)

MAN1=		birthday.1
MANCOMPRESSED=	no
PLIST_FILES=	bin/birthday

USE_GMAKE=	yes
MAKEFILE=	${WRKSRC}/Makefile.gnu
ALL_TARGET=	birthday
MAKE_ARGS=	CFLAGS="${CFLAGS} -DUNIX"

do-configure:
		cd ${WRKSRC} && ${MAKE} Makefile.gnu

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/birthday ${PREFIX}/bin
		${INSTALL_MAN} ${WRKSRC}/birthday.man ${MAN1PREFIX}/man/man1/birthday.1

.include <bsd.port.mk>
