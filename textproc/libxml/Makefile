# New ports collection makefile for:	libxml
# Date created:				28 September 1998
# Whom:					Yukihiro Nakai <Nakai@technologist.com>
#
# $FreeBSD: ports/textproc/libxml/Makefile,v 1.64 2012/12/05 12:55:45 svnexp Exp $
#

PORTNAME=	libxml
PORTVERSION=	1.8.17
PORTREVISION=	5
CATEGORIES=	textproc gnome
MASTER_SITES=	GNOME

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	XML parser library for GNOME

DEPRECATED=	Last release in 2002, unsupported by developers

USE_AUTOTOOLS=	libtool
USE_GMAKE=	yes
USE_GNOME=	pkgconfig
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes
MAKE_JOBS_UNSAFE=yes

pre-patch:
	@${FIND} ${WRKSRC} -name "*.[ch]" | ${XARGS} ${REINPLACE_CMD} -e \
		's|malloc\.h|stdlib.h|g'

.include <bsd.port.mk>
