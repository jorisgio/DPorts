# New ports collection makefile for:	amigadepacker
# Date created:				18 Oct 2009
# Whom:					Emanuel Haupt <ehaupt@FreeBSD.org>
#
# $FreeBSD: ports/archivers/amigadepacker/Makefile,v 1.5 2012/11/17 05:54:20 svnexp Exp $
#

PORTNAME=	amigadepacker
PORTVERSION=	0.04
CATEGORIES=	archivers
MASTER_SITES=	http://zakalwe.fi/~shd/foss/amigadepacker/ \
		CRITICAL

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	Tool for depacking some compressed Amiga formats

LICENSE=	GPLv2

HAS_CONFIGURE=	yes
USE_BZIP2=	yes
USE_CSTD=	gnu89

CONFIGURE_ARGS+=	--prefix=${PREFIX}
ALL_TARGET=	${PORTNAME}

MAN1=		amigadepacker.1
PLIST_FILES=	bin/amigadepacker

post-patch:
	@${REINPLACE_CMD} -E '/^(CC|CFLAGS)/d' ${WRKSRC}/Makefile.in

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${MAN1} ${MANPREFIX}/man/man1

.include <bsd.port.mk>
