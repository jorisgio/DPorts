# New ports collection makefile for:	mkitalic
# Date created:		6 January 2002
# Whom:			KOMATSU Shinichiro
#
# $FreeBSD: ports/x11-fonts/mkitalic/Makefile,v 1.10 2012/11/17 06:03:29 svnexp Exp $
#

PORTNAME=	mkitalic
PORTVERSION=	1.0
PORTREVISION=	2
CATEGORIES=	x11-fonts
MASTER_SITES=	${MASTER_SITE_PORTS_JP}
EXTRACT_SUFX=	.bz2

MAINTAINER=	koma2@lovepeers.org
COMMENT=	Perl script to make BDF font italic

CONFLICTS=	mkbold-mkitalic-[0-9]*

PLIST_FILES=	bin/mkitalic
USE_PERL5=	yes
EXTRACT_AFTER_ARGS=	> ${WRKSRC}/mkitalic
NO_WRKSUBDIR=	yes
USE_BZIP2=	yes

do-build:
	${PERL} -pi.orig -e 's|^#!/usr/bin/perl|#! ${PERL}|' ${WRKSRC}/mkitalic

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mkitalic ${PREFIX}/bin

.include <bsd.port.mk>
