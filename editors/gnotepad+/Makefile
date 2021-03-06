# New ports collection makefile for:	 gnotepad+
# Date created:		08 March 1999
# Whom:			brett@peloton.physics.montana.edu
#
# $FreeBSD: ports/editors/gnotepad+/Makefile,v 1.42 2012/11/17 05:57:14 svnexp Exp $
#

PORTNAME=	gnotepad+
PORTVERSION=	1.3.3
PORTREVISION=	8
CATEGORIES=	editors www gnome
MASTER_SITES=	SF/gnotepad/gnotepad-stable/${PORTVERSION} \
		SF/gnotepad/gnotepad%20User_s%20Manual/${DOCVERSION}:doc
DISTFILES=	${PORTNAME}-${PORTVERSION}${EXTRACT_SUFX}:DEFAULT
.if !defined(NOPORTDOCS)
DISTFILES+=	${PORTNAME}-help-${DOCVERSION}${EXTRACT_SUFX}:doc
.endif

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Simple GTK-based text/HTML editor

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

USE_XORG=	xpm
WANT_GNOME=	yes
USE_GNOME=	gnomeprefix gtk12
USE_GETTEXT=	yes
GNU_CONFIGURE=	yes
MAKE_JOBS_SAFE=	yes

MAN1=		gnp.1

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

DOCVERSION=	1.2.0

.include <bsd.port.pre.mk>

.if ${HAVE_GNOME:Mgnomelibs}!=""
USE_GNOME+=	gnomelibs
PKGNAMESUFFIX=	-gnome
.else
CONFIGURE_ARGS+=--disable-gnome
.endif

.if defined(NOPORTDOCS)
PLIST_SUB+=	NOPORTDOCS=""
.else
PLIST_SUB+=	NOPORTDOCS="@comment "
.endif

post-extract:
.if !defined(NOPORTDOCS)
	@${MV} ${WRKSRC}/docs ${WRKSRC}/docs.old
	@${CP} -R ${WRKDIR}/${PORTNAME}-help-${DOCVERSION}/docs ${WRKSRC}/docs
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|\(use_gtkhtml=\)yes|\1no|g' ${WRKSRC}/configure

.include <bsd.port.post.mk>
