# New ports collection makefile for:	qkcc
# Date created:			03 May 1996
# Whom:				Masafumi NAKANE <max@FreeBSD.org>
#
# $FreeBSD: ports/japanese/qkc/Makefile,v 1.19 2012/11/17 05:58:39 svnexp Exp $
#

PORTNAME=	qkc
PORTVERSION=	1.0
CATEGORIES=	japanese
MASTER_SITES=	http://hp.vector.co.jp/authors/VA000501/
DISTNAME=	${PORTNAME}c100

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Quick Kanji Code Converter (C version)

USE_ZIP=	yes
NO_WRKSUBDIR=	yes
ALL_TARGET=
MAN1=		qkc.1
MANLANG=	ja
PLIST_FILES=	bin/qkc

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/qkc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/qkc.1 ${PREFIX}/man/ja/man1

.include <bsd.port.mk>
