# ex:ts=8
# New ports collection makefile for:	pdftohtml
# Date created:			1 Jun 2001
# Whom:				Soeren Boll Overgaard <boll@tolkien.dk>
#
# $FreeBSD: ports/textproc/pdftohtml/Makefile,v 1.31 2012/11/17 06:02:15 svnexp Exp $
#

PORTNAME=	pdftohtml
PORTVERSION=	0.39
PORTREVISION=	6
CATEGORIES=	textproc
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}-${PORTVERSION}

MAINTAINER=	erwin@FreeBSD.org
COMMENT=	A command-line tool for converting pdf-files into html

CONFLICTS=	poppler-utils-[0-9]*

USE_GHOSTSCRIPT_RUN=	yes
USE_GMAKE=	yes

PLIST_FILES=	bin/pdftohtml

WRKSRC=		${WRKDIR}/${DISTNAME}

pre-patch:
	@${FIND} ${WRKSRC} -name Makefile | ${XARGS} \
		${REINPLACE_CMD} -e "s|-O[0-9]||" -e "s|-g||"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/pdftohtml ${PREFIX}/bin

.include <bsd.port.mk>
