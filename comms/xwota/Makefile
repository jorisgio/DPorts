# New ports collection makefile for:	xwota
# Date created:				September 13 2006
# Whom:					Diane Bruce <db@db.net>
#
# $FreeBSD: ports/comms/xwota/Makefile,v 1.13 2012/11/17 05:55:02 svnexp Exp $
#

PORTNAME=	xwota
PORTVERSION=	0.4
PORTREVISION=	7
CATEGORIES=	comms hamradio
MASTER_SITES=	http://people.fabaris.it/iz0ete/xwota/ \
		${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	db

MAINTAINER=	db@FreeBSD.org
COMMENT=	X version of who is on the air

USE_GNOME=	gtk20
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
USE_AUTOTOOLS=	libtool

post-install:
.if	!defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
.for	d in ${WRKSRC}/README \
	${WRKSRC}/COPYING \
	${WRKSRC}/AUTHORS \
	${WRKSRC}/ChangeLog \
	${WRKSRC}/INSTALL \
	${WRKSRC}/NEWS \
	${WRKSRC}/TODO
	@${INSTALL_DATA} ${WRKSRC}/${d} ${DOCSDIR}
.endfor
	@${ECHO} ""
	@${ECHO} "xwota docs installed in ${DOCSDIR}"
	@${ECHO} ""
.endif

.include <bsd.port.mk>
