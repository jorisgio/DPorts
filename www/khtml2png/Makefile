# New ports collection makefile for:	www/khtml2png
# Date created:				Nov 27 2007
# Whom:                			Rong-En Fan <rafan@FreeBSD.org>
#
# $FreeBSD: ports/www/khtml2png/Makefile,v 1.14 2012/11/17 06:02:38 svnexp Exp $
#

PORTNAME=	khtml2png
DISTVERSION=	2.7.7
PORTREVISION=	1
CATEGORIES=	www
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}2/${PORTVERSION}

MAINTAINER=	rafan@FreeBSD.org
COMMENT=	Command line program to create screenshots of webpages

USE_KDELIBS_VER=	3
USE_CMAKE=		yes

PLIST_FILES=	bin/khtml2png2

.include <bsd.port.pre.mk>

post-patch:
	@${REINPLACE_CMD} -e 's,QT_QT_LIBRARY,QT_LIBRARIES,g' \
		${WRKSRC}/CMakeLists.txt

.include <bsd.port.post.mk>
