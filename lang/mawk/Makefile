# ex:ts=8
# Ports collection makefile for:  mawk
# Date created:			  24 Dec 1998
# Whom:				  Pedro F. Giffuni <giffunip@asme.org>
#
# $FreeBSD: ports/lang/mawk/Makefile,v 1.23 2012/11/17 05:58:52 svnexp Exp $
#

PORTNAME=	mawk
PORTVERSION=	1.3.3
CATEGORIES=	lang
MASTER_SITES=	ftp://ftp.fu-berlin.de/unix/languages/mawk/ \
		ftp://ftp.whidbey.net/pub/brennan/

MAINTAINER=	ota@j.email.ne.jp
COMMENT=	An implementation of new/posix awk

GNU_CONFIGURE=	yes
CONFIGURE_ENV=	MATHLIB="-lm"
ALL_TARGET=	${PORTNAME}

MAN1=		mawk.1
PLIST_FILES=	bin/mawk

regression-test: build
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE} mawk_test fpe_test

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mawk ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/mawk.1 ${MANPREFIX}/man/man1

.include <bsd.port.mk>
