# New ports collection makefile for:	tkmerge
# Date created:         16 Dec 2004
# Whom:			Bob Willcox <bob@immure.com>
#
# $FreeBSD: ports/devel/tkmerge/Makefile,v 1.8 2012/11/17 05:57:05 svnexp Exp $
#

PORTNAME=	tkmerge
PORTVERSION=	0.85
PORTREVISION=	1
CATEGORIES=	devel tk
MASTER_SITES=	http://immure.com/~bob/ports/tkmerge/

MAINTAINER=	bob@immure.com
COMMENT=	A tk script to aid in the merging changes between two files

USE_TK_RUN=	84+

RUN_DEPENDS+=	${LOCALBASE}/lib/bwidget/label.tcl:${PORTSDIR}/x11-toolkits/bwidget

NO_BUILD=	yes
MAN1=		tkmerge.1
PLIST_FILES=	bin/tkmerge

.include <bsd.port.pre.mk>

post-patch:
	@${REINPLACE_CMD} -e 's|wish8.4|${WISH}|g' ${WRKSRC}/tkmerge

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tkmerge ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/tkmerge.1 ${PREFIX}/man/man1

.include <bsd.port.post.mk>
