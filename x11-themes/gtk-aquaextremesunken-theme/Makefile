# New ports collection makefile for:	AquaExtreme Sunken (gtk20 theme/master)
# Date created:				25 Feb 2005
# Whom:					Alexey Dokuchaev <danfe@FreeBSD.org>
#
# $FreeBSD: ports/x11-themes/gtk-aquaextremesunken-theme/Makefile,v 1.10 2012/11/17 06:03:31 svnexp Exp $
#

PORTNAME=	aquaextremesunken
PORTVERSION=	1.0
PORTREVISION=	7
CATEGORIES=	x11-themes gnome
MASTER_SITES=	http://www.users.monornet.hu/linux/gtk2/oldies/
PKGNAMEPREFIX?=	${TYPE}-
PKGNAMESUFFIX=	-theme
DISTNAME=	AquaExtremeSunken

MAINTAINER=	danfe@FreeBSD.org
COMMENT=	A port of AquaExtreme Sunken theme

TYPE?=		gtk

THEME_NAME=	${DISTNAME}

NO_BUILD=	yes

.if ${TYPE} == "gtk"
THEME_DIR=	${PREFIX}/share/themes/${THEME_NAME}
PLIST_SUB+=	GTK20="" METACITY="@comment "
USE_GNOME=	gtk20
.else	# metacity
THEME_DIR=	${PREFIX}/share/themes/${THEME_NAME}
PLIST_SUB+=	GTK20="@comment " METACITY=""
USE_GNOME=	gnomehier
.endif

do-install:
	@${MKDIR} ${THEME_DIR}
.if ${TYPE} == "gtk"
	cd ${WRKSRC} && ${FIND} gtk-2.0 | \
		${CPIO} -pdu -R ${SHAREOWN}:${SHAREGRP} ${THEME_DIR}
	${INSTALL_DATA} ${WRKSRC}/index.theme ${THEME_DIR}
.else
	cd ${WRKSRC} && ${FIND} metacity-1 | \
		${CPIO} -pdu -R ${SHAREOWN}:${SHAREGRP} ${THEME_DIR}
.endif

.include <bsd.port.mk>
