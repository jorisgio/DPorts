# $FreeBSD: ports/audio/opus/Makefile,v 1.6 2012/12/11 13:04:14 svnexp Exp $

PORTNAME=	opus
PORTVERSION=	1.0.2
PORTREVISION=	1
CATEGORIES=	audio
MASTER_SITES=	http://downloads.xiph.org/releases/opus/ \
		https://ftp.mozilla.org/pub/mozilla.org/opus/

MAINTAINER=	naddy@FreeBSD.org
COMMENT=	IETF audio codec

USE_AUTOTOOLS=	libtool
USE_GNOME=	gnomehack
USE_LDCONFIG=	yes

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-doc   # requires doxygen
MAKE_JOBS_SAFE=	yes

regression-test: build
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE} check

.include <bsd.port.mk>
