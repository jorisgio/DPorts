# ex:ts=8
# Ports collection makefile for:	exiftags
# Date created:			Sep 13, 2002
# Whom:				ijliao
#
# $FreeBSD: ports/graphics/exiftags/Makefile,v 1.15 2012/11/17 05:58:04 svnexp Exp $
#

PORTNAME=	exiftags
PORTVERSION=	1.01
CATEGORIES=	graphics
MASTER_SITES=	http://johnst.org/sw/exiftags/

MAINTAINER=	multimedia@FreeBSD.org
COMMENT=	Parses a specified JPEG file for a JPEG APP1 section containing Exif data

MAKE_ARGS=	CC="${CC}" CFLAGS="${CFLAGS}" PREFIX="${PREFIX}"

MAN1=		exifcom.1 exiftags.1 exiftime.1
PORTDOCS=	CHANGES README
PLIST_FILES=	bin/exifcom bin/exiftags bin/exiftime

do-install:
.for i in exifcom exiftags exiftime
	${INSTALL_PROGRAM} ${WRKSRC}/${i} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${i}.1 ${MANPREFIX}/man/man1
.endfor
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for i in CHANGES README
	${INSTALL_DATA} ${WRKSRC}/${i} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
