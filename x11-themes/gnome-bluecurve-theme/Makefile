# New ports collection makefile for:	gnome-bluecurve-theme
# Date created:			29 May 2005
# Whom:				Jean-Yves Lefort <jylefort@FreeBSD.org>
#
# $FreeBSD: ports/x11-themes/gnome-bluecurve-theme/Makefile,v 1.9 2012/11/17 06:03:31 svnexp Exp $
#

PORTNAME=	gnome-bluecurve-theme

PORTREVISION=	4

COMMENT=	The Bluecurve GNOME meta-theme

RUN_DEPENDS=	${LOCALBASE}/share/themes/Bluecurve/gtk-2.0/gtkrc:${PORTSDIR}/x11-themes/gtk-bluecurve-theme \
		${LOCALBASE}/share/icons/Bluecurve/index.theme:${PORTSDIR}/x11-themes/icon-bluecurve-theme \
		${LOCALBASE}/share/themes/Bluecurve/metacity-1/metacity-theme-1.xml:${PORTSDIR}/x11-themes/metacity-bluecurve-theme

MASTERDIR=	${.CURDIR}/../bluecurve-themes

NO_BUILD=	yes
PLIST_FILES=	share/themes/Bluecurve/index.theme

do-install:
	${MKDIR} ${PREFIX}/share/themes/Bluecurve
	${INSTALL_DATA} ${WRKSRC}/art/index.theme ${PREFIX}/share/themes/Bluecurve

.include "${MASTERDIR}/Makefile"
