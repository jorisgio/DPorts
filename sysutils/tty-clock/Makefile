# Ports collection makefile for:	tty-clock
# Date created:				15 July 2010
# Whom:					Eric Freeman <freebsdports@chillibear.com>
#
# $FreeBSD: ports/sysutils/tty-clock/Makefile,v 1.3 2012/11/17 06:01:48 svnexp Exp $
#

PORTNAME=		tty-clock
PORTVERSION=		2.0.0
PORTREVISION=		1
CATEGORIES=		sysutils
MASTER_SITES=		http://github.com/xorg62/${PORTNAME}/tarball/
DISTNAME=		a82fd71
EXTRACT_SUFX=		# none

MAINTAINER=		freebsdports@chillibear.com
COMMENT=		Terminal based clock

FETCH_ARGS=		-pRr
WRKSRC=			"${WRKDIR}/xorg62-${PORTNAME}-${DISTNAME}"
PLIST_FILES=		bin/tty-clock

post-patch:
	@${REINPLACE_CMD} -e 's|/usr/local/|${PREFIX}/|' ${WRKSRC}/Makefile
	@${REINPLACE_CMD} -e 's|CFLAGS =|CFLAGS \+=|' ${WRKSRC}/Makefile
	@${REINPLACE_CMD} -e 's|LDFLAGS =|LDFLAGS \+=|' ${WRKSRC}/Makefile

do-build:
	cd ${WRKSRC} && ${MAKE}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tty-clock ${PREFIX}/bin

.include <bsd.port.mk>
