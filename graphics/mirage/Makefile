# New ports collection makefile for:	mirage
# Date created:		31 January 2007
# Whom:			Andrew Pantyukhin <infofarmer@FreeBSD.org>
#
# $FreeBSD: ports/graphics/mirage/Makefile,v 1.18 2012/11/17 05:58:15 svnexp Exp $
#

PORTNAME=	mirage
PORTVERSION=	0.9.5.2
PORTREVISION=	1
CATEGORIES=	graphics
MASTER_SITES=	BERLIOS/mirageiv

MAINTAINER=	pawel@FreeBSD.org
COMMENT=	Fast and simple image viewer

LICENSE=	GPLv3

USE_BZIP2=	yes
USE_GNOME=	gtk20 pygtk2
WANT_GNOME=	yes
USE_GETTEXT=	yes
USE_PYTHON=	yes
USE_PYDISTUTILS=	yes
PYDISTUTILS_PKGNAME=	Mirage

PORT_VERBS=	${PORTNAME} imgfuncs

.include <bsd.port.pre.mk>

.if ${HAVE_GNOME:Mpygnome2}!=""
USE_GNOME+=	pygnome2
.endif

post-patch:
	@${REINPLACE_CMD} -e \
		's|%%LOCALBASE%%|${LOCALBASE}|g' ${WRKSRC}/setup.py

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
.for file in CHANGELOG README TODO TRANSLATORS
	${INSTALL_DATA} ${WRKSRC}/${file} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.post.mk>
