# New ports collection makefile for:	passepartout
# Date created:				11st Sep 2003
# Whom:					Alexander Nedotsukov <bland@FreeBSD.org>
#
# $FreeBSD: ports/graphics/passepartout/Makefile,v 1.38 2012/11/17 05:58:18 svnexp Exp $
#    $MCom: ports/graphics/passepartout/Makefile,v 1.4 2006/09/30 15:31:05 ahze Exp $
#

PORTNAME=	passepartout
PORTVERSION=	0.7.1
PORTREVISION=	4
CATEGORIES=	graphics gnome
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	DTP application for X

BUILD_DEPENDS=	xsltproc:${PORTSDIR}/textproc/libxslt \
		docbook2html:${PORTSDIR}/textproc/docbook-utils \
    		${LOCALBASE}/share/sgml/docbook/4.1/dtd/catalog:${PORTSDIR}/textproc/docbook-410
LIB_DEPENDS=	xml\\+\\+-2.6.2:${PORTSDIR}/textproc/libxml++26 \
		gnomecanvasmm-2.6:${PORTSDIR}/graphics/libgnomecanvasmm26
RUN_DEPENDS=	xsltproc:${PORTSDIR}/textproc/libxslt

USE_BZIP2=	yes
USE_GMAKE=	yes
USE_GNOME=	gnomehack
GNU_CONFIGURE=	yes
CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

MAN1=		xml2ps.1 passepartout.1x

.include <bsd.port.pre.mk>

.if exists(${LOCALBASE}/lib/libfam.a)
WITH_FAM=	yes
.endif

.if defined(WITH_FAM)
USE_FAM=	yes
.endif

.include <bsd.port.post.mk>
