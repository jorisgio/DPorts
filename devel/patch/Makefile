# New ports collection makefile for:    patch
# Date created:         21 Jan 1998
# Whom:                 ache
#
# $FreeBSD: ports/devel/patch/Makefile,v 1.29 2012/11/17 05:56:37 svnexp Exp $
#

PORTNAME=	patch
PORTVERSION=	2.7
PORTREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	patch

MAINTAINER=	glarkin@FreeBSD.org
COMMENT=	GNU patch utility

LICENSE=	GPLv3

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=--program-prefix=g
USE_GMAKE=	yes
USE_XZ=		yes

MAN1=		gpatch.1
PLIST_FILES=	bin/gpatch

.include <bsd.port.mk>
