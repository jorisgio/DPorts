# New ports collection makefile for:	gawk+mb
# Date created:		5 April 1995
# Whom:			Nobuhiro Yasutomi <nobu@psrc.isac.co.jp>
#
# $FreeBSD: ports/japanese/gawk/Makefile,v 1.29 2012/11/17 05:58:34 svnexp Exp $
#

PORTNAME=	gawk
PORTVERSION=	3.0.6
CATEGORIES=	japanese lang
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	${PORTNAME}

PATCH_SITES=	http://www.hinadori.atnifty.com/~wills/program/
PATCHFILES=	${PORTNAME}mb115.diff.gz
PATCH_DIST_STRIP=	-p1

MAINTAINER=	ota@j.email.ne.jp
COMMENT=	GNU awk + multi-byte extension

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-bitops --enable-non-decimal-data

INFO=		gawk

MAN1=		gawk.1 igawk.1

DOCSDIR=	${PREFIX}/share/doc/${PKGBASE}

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/OREADME.MB ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README.MB ${DOCSDIR}
.endif

.include <bsd.port.mk>
