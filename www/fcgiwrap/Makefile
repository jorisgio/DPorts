# New ports collection makefile for:	fcgiwrap
# Date created:		2010-06-15
# Whom:			Bapt <baptiste.daroussin@gmail.com>
#
# $FreeBSD: ports/www/fcgiwrap/Makefile,v 1.10 2012/11/18 16:55:50 svnexp Exp $
#

PORTNAME=	fcgiwrap
PORTVERSION=	1.0.3
PORTREVISION=	5
CATEGORIES=	www
MASTER_SITES=	http://cloud.github.com/downloads/gnosek/fcgiwrap/

MAINTAINER=	bapt@FreeBSD.org
COMMENT=	Simple FastCGI wrapper for CGI scripts

LICENSE=	MIT

LIB_DEPENDS=	fcgi.0:${PORTSDIR}/www/fcgi

WRKSRC=		${WRKDIR}/gnosek-fcgiwrap-2e301c8

USE_RC_SUBR=	fcgiwrap

USE_AUTOTOOLS=	autoconf autoheader

CFLAGS+=	-I${LOCALBASE}/include -L${LOCALBASE}/lib
GNU_CONFIGURE=	yes

MAN8=		fcgiwrap.8
PLIST_FILES=	sbin/fcgiwrap

post-patch:
	@${REINPLACE_CMD} 's/@prefix@@mandir@/@mandir@/' ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
