# New ports collection makefile for:	libgnetwork
# Date created:				11 December 2003
# Whom:					Joe Marcus Clarke <marcus@FreeBSD.org>
#
# $FreeBSD: ports/net/libgnetwork/Makefile,v 1.35 2012/11/17 06:00:04 svnexp Exp $
#

PORTNAME=	libgnetwork
PORTVERSION=	0.0.9
PORTREVISION=	8
CATEGORIES=	net gnome
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	A GLib-based networking wrapper

USE_AUTOTOOLS=	libtool
USE_BZIP2=	yes
USE_GETTEXT=	yes
USE_GNOME=	gnomeprefix gnomehack intlhack gconf2
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

#.if !defined(WITHOUT_SSL)
#LIB_DEPENDS+=	gnutls.13:${PORTSDIR}/security/gnutls
#CONFIGURE_ARGS+=--enable-ssl=gnutls
#.else
CONFIGURE_ARGS+=--enable-ssl=no
#.endif

#pre-everything::
#	@${ECHO_MSG} ""
#	@${ECHO_MSG} "libgnetwork has the following configurable option(s):"
#	@${ECHO_MSG} "	WITHOUT_SSL	Disable GnuTLS SSL support"
#	@${ECHO_MSG} ""

.include <bsd.port.mk>
