# New ports collection makefile for:   twitux
# Date created:        25 August 2008
# Whom:                Arnaud Berthomier
#
# $FreeBSD: ports/net/twitux/Makefile,v 1.9 2012/11/17 06:00:23 svnexp Exp $
#

PORTNAME=		twitux
PORTVERSION=	0.69
PORTREVISION=	6
CATEGORIES=		net
MASTER_SITES=	SF

MAINTAINER=		oz@cyprio.net
COMMENT=		GNOME client for Twitter

LIB_DEPENDS=	soup-2.4.1:${PORTSDIR}/devel/libsoup \
	sexy.2:${PORTSDIR}/x11-toolkits/libsexy \
	notify.4:${PORTSDIR}/devel/libnotify \
	canberra:${PORTSDIR}/audio/libcanberra

USE_XORG=		x11
USE_GNOME=		glib20 gtk20 gconf2 libxml2 gnomedocutils
INSTALLS_OMF=	yes
USE_BZIP2=		yes
GNU_CONFIGURE=	yes
USE_GMAKE=		yes
USE_GETTEXT=	yes
CONFIGURE_ENV+=	GMSGFMT="${LOCALBASE}/bin/msgfmt"
GCONF_SCHEMAS=	twitux.schemas
INSTALLS_ICONS=	yes

.include <bsd.port.mk>
