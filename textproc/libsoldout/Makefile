# New ports collection makefile for:	libupskirt
# Date created:		2010-02-10
# Whom:			Bapt <baptiste.daroussin@gmail.com>
#
# $FreeBSD: ports/textproc/libsoldout/Makefile,v 1.7 2012/11/17 06:02:01 svnexp Exp $
#

PORTNAME=	libsoldout
DISTVERSION=	1.2
CATEGORIES=	textproc devel
MASTER_SITES=	http://instinctive.eu/code/

MAINTAINER=	natbsd@instinctive.eu
COMMENT=	Flexible C library for markdown

LICENSE=	BSD
LICENSE_FILE=	${WRKSRC}/LICENSE

MAKEFILE=	BSDmakefile
USE_LDCONFIG=	yes
USE_BZIP2=	yes

.include <bsd.port.pre.mk>

.if ${OSVERSION} < 700000
BROKEN=		does not compile on 6.X
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/libsoldout.so.1 ${PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKSRC}/mkd2html ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/mkd2man ${PREFIX}/bin
	cd ${PREFIX}/lib && ${LN} -s libsoldout.so.1 libsoldout.so
	${MKDIR} ${PREFIX}/include/soldout
	${INSTALL_DATA} ${WRKSRC}/*.h ${PREFIX}/include/soldout

.include <bsd.port.post.mk>
