# New ports collection makefile for:	rus-ispell
# Date created:				29.01.2001
# Whom:					ache
#
# $FreeBSD: ports/russian/rus-ispell/Makefile,v 1.29 2012/11/17 06:00:56 svnexp Exp $
#

PORTNAME=	rus-ispell
PORTVERSION=	0.99g5
CATEGORIES=	russian textproc
MASTER_SITES=	ftp://scon155.phys.msu.su/pub/russian/ispell/

MAINTAINER=	office@FreeBSD.org
COMMENT=	New Russian dictionaries for ispell

BUILD_DEPENDS=	buildhash:${PORTSDIR}/textproc/ispell
RUN_DEPENDS=	ispell:${PORTSDIR}/textproc/ispell

USE_GMAKE=	yes
.if defined(RUS_ISPELL_WITH_YO_ONLY)
MAKE_ARGS+=	YO=1
.endif
.if defined(RUS_ISPELL_LOCAL_DICT)
MAKE_ARGS+=	LOCAL_DICT=${RUS_ISPELL_LOCAL_DICT}
.endif

MAKE_ENV=	LC_ALL=ru_RU.KOI8-R

ALL_TARGET=	koi

NO_WRKSUBDIR=	yes

do-install:
	cd ${WRKSRC} && \
		${INSTALL_DATA} russian.hash russian.dict russian.aff \
		${PREFIX}/share/ispell
	${INSTALL_SCRIPT} ${FILESDIR}/ispell-ru.sh ${PREFIX}/bin/ispell-ru

.include <bsd.port.pre.mk>

.if ${ARCH} == "powerpc"
BROKEN=		Does not compile on powerpc
.endif

.include <bsd.port.post.mk>
