# New ports collection makefile for:	dico
# Date created:				11 October 2000
# Whom:					Cyrille Lefevre <clefevre@citeweb.net>
#
# $FreeBSD: ports/french/dico/Makefile,v 1.26 2012/11/17 05:57:28 svnexp Exp $
#

PORTNAME=	dico
PORTVERSION=	1.1
PORTREVISION=	7
CATEGORIES=	french
MASTER_SITES=	ftp://ftp.supelec.fr/lsi/pub/security/
DISTNAME=	le_dico

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Interactive dictionary in french

BROKEN_WWW=	http://www.montefiore.ulg.ac.be/cgi-bin-ulg/DICO.html

# Global variables
#

WRKSRC=		${WRKDIR}/${PORTNAME}
USE_AUTOTOOLS=	automake14 autoconf
CONFIGURE_ARGS=	--mandir=${PREFIX}/man
USE_GMAKE=	true
AUTOMAKE_ARGS=	--add-missing --foreign --include-deps
MAKE_ARGS=	prefix=${PREFIX}
MAN1=		dico.1
REINPLACE_SUB=	PREFIX=${PREFIX}

# Post-patch
#

post-patch:
	@${REINPLACE_CMD} ${REINPLACE_SUB:S/$/!g/:S/^/ -e s!%%/:S/=/%%!/} \
		${WRKSRC}/sources/dico.c

# Pre-configure
#

pre-configure:
	@cd ${WRKSRC} && ${ACLOCAL}

# Post-install
#

post-install:
.if defined(NOPORTDOCS)
	@${RM} -rf ${DOCSDIR}
.endif

.include <bsd.port.mk>
