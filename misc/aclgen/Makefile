# New ports collection makefile for:	aclgen
# Date created:				17 September 1999
# Whom:					igor@zynaps.ru
#
# $FreeBSD: ports/misc/aclgen/Makefile,v 1.12 2012/11/17 05:59:32 svnexp Exp $
#

PORTNAME=	aclgen
PORTVERSION=	2.02
CATEGORIES=	misc
MASTER_SITES=	ftp://gatling.ikk.sztaki.hu/pub/aclgen/
DISTNAME=	${PORTNAME}-${PORTVERSION:S/.//}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Optimize Cisco routers IP access lists

NO_WRKSUBDIR=	YES
MAKEFILE=	/usr/share/mk/bsd.prog.mk
MAKE_ARGS=	PROG=aclgen

MAN1=		aclgen.1
PLIST_FILES=	bin/aclgen

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/aclgen ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/aclgen.1 ${MANPREFIX}/man/man1

.include <bsd.port.mk>
