# New ports collection makefile for:	opensched
# Date created:				31 January 2001
# Whom:					Daniel McRobb <dwm@caimis.com>
#
# $FreeBSD: ports/textproc/opensched/Makefile,v 1.20 2012/11/17 06:02:03 svnexp Exp $
#

PORTNAME=	opensched
PORTVERSION=	0.1.0
PORTREVISION=	8
CATEGORIES=	textproc
MASTER_SITES=	http://hitachi-id.com/dlsoftware/opensched/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A project scheduler

LICENSE=	GPLv2

USE_GMAKE=	yes
ALL_TARGET=	build
MAKE_JOBS_SAFE=	yes

MAN1=		opensched.1
PLIST_FILES=	bin/opensched

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/opensched ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/opensched.1 ${MANPREFIX}/man/man1

.include <bsd.port.mk>
