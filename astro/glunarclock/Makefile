# New ports collection makefile for:	glunarclock
# Date created:		9 December 2003
# Whom:			Vincent Tantardini <vinc@freebsd-fr.org>
#
# $FreeBSD: ports/astro/glunarclock/Makefile,v 1.58 2012/11/17 05:54:24 svnexp Exp $
#   $MCom: ports/astro/glunarclock/Makefile,v 1.12 2009/04/07 03:25:51 marcus Exp $
#

PORTNAME=	glunarclock
PORTVERSION=	0.34.1
PORTREVISION=	1
CATEGORIES=	astro gnome
MASTER_SITES=	SF

MAINTAINER=	ports@FreeBSD.org
COMMENT=	GNOME applet that displays the current phase of the Moon

LIB_DEPENDS=	xklavier.12:${PORTSDIR}/x11/libxklavier

USE_GNOME=	gnomehack gnomepanel gnomeprefix intlhack libgnomeui
USE_GMAKE=	yes
USE_GETTEXT=	yes
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include `pkg-config --cflags libgnomeui-2.0`
LDFLAGS+=	-L${LOCALBASE}/lib
CONFIGURE_ENV=	LIBS="`pkg-config --libs libgnomeui-2.0`"
INSTALLS_OMF=	yes

PLIST_SUB=	VERSION="${PORTVERSION:R}"

GCONF_SCHEMAS=	glunarclock.schemas

post-patch:
	@${FIND} ${WRKSRC} -name Makefile.in | ${XARGS} ${REINPLACE_CMD} -e \
		's|-DGNOME_DISABLE_DEPRECATED||g'

.include <bsd.port.mk>
