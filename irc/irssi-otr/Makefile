# New ports collection makefile for:	irssi-otr
# Date created:		2008-08-16
# Whom:			Ashish Shukla <wahjava@gmail.com>
#
# $FreeBSD: ports/irc/irssi-otr/Makefile,v 1.11 2012/11/17 05:58:29 svnexp Exp $
#

PORTNAME=	irssi-otr
PORTVERSION=	0.3
PORTREVISION=	4
CATEGORIES=	irc
MASTER_SITES=	ftp://download.tuxfamily.org/${MASTER_SITE_SUBDIR}/
MASTER_SITE_SUBDIR=	irssiotr

MAINTAINER=	ashish@FreeBSD.org
COMMENT=	A plugin for irssi for Off-the-Record (OTR) messaging

BUILD_DEPENDS=	${LOCALBASE}/include/irssi/src/common.h:${PORTSDIR}/irc/irssi \
		${LOCALBASE}/bin/libgcrypt-config:${PORTSDIR}/security/libgcrypt
LIB_DEPENDS=	otr.4:${PORTSDIR}/security/libotr3 \
		gcrypt.18:${PORTSDIR}/security/libgcrypt
RUN_DEPENDS=	irssi:${PORTSDIR}/irc/irssi

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/LICENSE

USE_CMAKE=	yes
USE_LDCONFIG=	yes
USE_GNOME=	glib20
USE_PKGCONFIG=	build

PLIST_FILES=	lib/irssi/modules/libotr.so \
		%%DOCSDIR%%/LICENSE %%DOCSDIR%%/README
PLIST_DIRS=	%%DOCSDIR%%

.include <bsd.port.mk>
