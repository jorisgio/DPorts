# New ports collection makefile for:	oak
# Date created:				21 June 2005
# Whom:					Dmitry Sivachenko <demon@FreeBSD.org>
#
# $FreeBSD: ports/sysutils/oak/Makefile,v 1.3 2012/11/17 06:01:39 svnexp Exp $
#

PORTNAME=	oak
PORTVERSION=	1.5.0
CATEGORIES=	sysutils
MASTER_SITES=	http://www.ktools.org/dist/oak/

MAINTAINER=	demon@FreeBSD.org
COMMENT=	System Log Reporting Tool

USE_RC_SUBR=	oak

GNU_CONFIGURE=	yes
ALL_TARGET=	oak
PLIST_FILES=	bin/oak

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/oak ${PREFIX}/bin

.include <bsd.port.mk>
