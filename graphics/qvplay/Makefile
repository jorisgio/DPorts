# New ports collection makefile for:	qvplay
# Date created:		2 May 1997
# Whom:			Jun-ichiro itojun Itoh <itojun@itojun.org>
#
# $FreeBSD: ports/graphics/qvplay/Makefile,v 1.16 2012/11/17 05:58:21 svnexp Exp $
#

PORTNAME=	qvplay
PORTVERSION=	0.95
CATEGORIES=	graphics
MASTER_SITES=	http://www.asahi-net.or.jp/~xg2k-hys/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Digital camera downloading tool for Casio QV series

WRKSRC=		${WRKDIR}/QVplay095/obj/FreeBSD

GNU_CONFIGURE=	yes

MAN1=		qvplay.1 qvrec.1 qvalldel.1

MYPORTDOCS=	FAQ.txt HISTORY PROTOCOL.txt PROTOCOL.eng \
		README README.eng README.FreeBSD
SUB_FILES=	pkg-message

pre-patch:
	@${MKDIR} ${WRKSRC}

pre-configure:
	@( cd ${WRKDIR}/QVplay095; ./setup FreeBSD )

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for file in ${MYPORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/../../${file} ${DOCSDIR}
.endfor
.endif
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
