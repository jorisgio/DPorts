# New ports collection makefile for:	datetimer plugin for xfce4
# Date created:				02 February 2007
# Whom:					Martin Wilke (miwi@FreeBSD.org)
#
# $FreeBSD: ports/x11-clocks/xfce4-datetime-plugin/Makefile,v 1.44 2012/11/17 06:03:24 svnexp Exp $
#

PORTNAME=	xfce4-datetime-plugin
PORTVERSION=	0.6.1
PORTREVISION=	11
CATEGORIES=	x11-clocks xfce
MASTER_SITES=	${MASTER_SITE_XFCE}
MASTER_SITE_SUBDIR=/src/panel-plugins/${PORTNAME}/${PORTVERSION:R}
DIST_SUBDIR=	xfce4

MAINTAINER=	xfce@FreeBSD.org
COMMENT=	A datetime plugin for Xfce

USE_GMAKE=	yes
USE_BZIP2=	yes
INSTALLS_ICONS=	yes
USE_GETTEXT=	yes
GNU_CONFIGURE=	yes
USE_GNOME=	gtk20 intltool intlhack pkgconfig
USE_XFCE=	configenv libgui libutil panel

.include <bsd.port.mk>
