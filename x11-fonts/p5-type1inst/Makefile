# New ports collection makefile for:	p5-type1inst
# Date created:		7 Jan 1998
# Whom:			giffunip@asme.org
#
# $FreeBSD: ports/x11-fonts/p5-type1inst/Makefile,v 1.22 2012/11/17 06:03:29 svnexp Exp $
#

PORTNAME=	type1inst
PORTVERSION=	0.6.1
PORTREVISION=	5
CATEGORIES=	x11-fonts perl5
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=X11/xutils
PKGNAMEPREFIX=	p5-

MAINTAINER=	hrs@FreeBSD.org
COMMENT=	A script that helps install Postscript fonts in X Window System

.if !defined(WITHOUT_X11)
RUN_DEPENDS=	${LOCALBASE}/bin/mkfontdir:${PORTSDIR}/x11-fonts/mkfontdir \
		${LOCALBASE}/bin/mkfontscale:${PORTSDIR}/x11-fonts/mkfontscale
.endif

USE_PERL5=	yes
NO_BUILD=	yes
PORTDOCS=	README
PLIST_FILES=	bin/t1embed bin/type1inst

MAN1=	type1inst.1

pre-install:
	${REINPLACE_CMD} 's,^#!/usr/bin/perl,#!${PERL},' ${WRKSRC}/type1inst

do-install:
	@cd ${WRKSRC} && ${INSTALL_SCRIPT} type1inst t1embed ${PREFIX}/bin
	@${INSTALL_MAN} ${WRKSRC}/type1inst.man ${PREFIX}/man/man1/type1inst.1
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
