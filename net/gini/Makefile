# New ports collection makefile for:	GINI
# Date created:				23 April 2003
# Whom:					Kimura Fuyuki <fuyuki@hadaly.org>
#
# $FreeBSD: ports/net/gini/Makefile,v 1.13 2012/11/17 06:00:01 svnexp Exp $
#

PORTNAME=	gini
PORTVERSION=	0.5.1
PORTREVISION=	7
CATEGORIES=	net multimedia
MASTER_SITES=	SF/${PORTNAME}/OldFiles

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A lightweight media streaming server

LIB_DEPENDS=	vorbis.4:${PORTSDIR}/audio/libvorbis

USE_BZIP2=	yes
USE_GNOME=	glib12
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
USE_GMAKE=	yes
USERS=		${PORTNAME}
GROUPS=		${USERS}

MAN1=		ginicon.1 ginifeed.1
MAN8=		gini.8

post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/gini.sh.sample ${PREFIX}/etc/rc.d
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
