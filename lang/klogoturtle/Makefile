# New ports collection makefile for:    klogoturtle
# Date created:                 2003-07-23
# Whom:                         Tilman Linneweh <arved@FreeBSD.org>
#
# $FreeBSD: ports/lang/klogoturtle/Makefile,v 1.25 2012/12/30 18:56:06 svnexp Exp $

PORTNAME=	klogoturtle
PORTVERSION=	0.6
PORTREVISION=	10
CATEGORIES=	lang kde
MASTER_SITES=	http://klogoturtle.sourceforge.net/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	LOGO Interpreter for the KDE Desktop

DEPRECATED=	Depends on QT3; unmaintained
EXPIRATION_DATE=	2013-07-01

USE_KDELIBS_VER=3
USE_AUTOTOOLS=	libtool
LDFLAGS+=	${PTHREAD_LIBS}

post-patch:
	@${REINPLACE_CMD} -e 's/-O2//g; s/-lpthread/${PTHREAD_LIBS}/g' \
		${WRKSRC}/configure

.include <bsd.port.mk>
