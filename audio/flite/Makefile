# New ports collection makefile for:	flite
# Date created:				18 December 2004
# Whom:					Maxim Sobolev <sobomax@FreeBSD.org>
#
# $FreeBSD: ports/audio/flite/Makefile,v 1.8 2012/11/17 05:54:31 svnexp Exp $
#

PORTNAME=	flite
PORTVERSION=	1.4
CATEGORIES=	audio
MASTER_SITES=	http://www.speech.cs.cmu.edu/flite/packed/${PORTNAME}-${PORTVERSION}/
DISTNAME=	${PORTNAME}-${PORTVERSION}-release

MAINTAINER=	sobomax@FreeBSD.org
COMMENT=	A small run-time speech synthesis engine

USE_GMAKE=	yes
USE_BZIP2=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-shared=yes
USE_LDCONFIG=	yes

MAKE_JOBS_UNSAFE=	yes

CFLAGS:=	${CFLAGS:N-O:N-O[0123456789]} -O0

post-patch:
	@${REINPLACE_CMD} -e 's|-pd|-p|g' ${WRKSRC}/main/Makefile

.ifndef NOPORTDOCS
post-install:
	@${MKDIR} ${DOCSDIR}/
	${INSTALL_MAN} ${WRKSRC}/README ${DOCSDIR}/
.endif

.include <bsd.port.mk>
