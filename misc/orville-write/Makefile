# New ports collection makefile for:	orville-write
# Date created:		4 December 1999
# Whom:			James Howard <howardj@wam.umd.edu>
#
# $FreeBSD: ports/misc/orville-write/Makefile,v 1.12 2012/11/17 05:59:42 svnexp Exp $
#

PORTNAME=	orville-write
PORTVERSION=	2.55
CATEGORIES=	misc
MASTER_SITES=	http://unixpapa.com/software/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Advanced replacement for write/mesg

GNU_CONFIGURE=	yes

MAN1=		amin.1 helpers.1 huh.1 mesg.1 write.1

.include <bsd.port.pre.mk>

.if ${OSVERSION} > 900006
EXTRA_PATCHES=	${PATCHDIR}/utmpx-wrttmp.h \
		${PATCHDIR}/utmpx-wrt_him.c \
		${PATCHDIR}/utmpx-wrt_me.c \
		${PATCHDIR}/utmpx-lib_common.c \
		${PATCHDIR}/utmpx-lib_common.h \
		${PATCHDIR}/utmpx-getutent.h \
		${PATCHDIR}/utmpx-getutent.c \
		${PATCHDIR}/utmpx-mesg.c \
		${PATCHDIR}/utmpx-amin.c \
		${PATCHDIR}/utmpx-huh.c \
		${PATCHDIR}/utmpx-helpers.c
.endif

do-install:
.for i in amin helpers huh mesg
	${INSTALL_PROGRAM} -m 4711 ${WRKSRC}/${i} ${PREFIX}/bin
.endfor
.for i in write
	${INSTALL_PROGRAM} -m 6711 ${WRKSRC}/${i} ${PREFIX}/bin
.endfor
.for i in jot tel telegram
	${LN} -sf write ${PREFIX}/bin/${i}
.endfor
.for i in orville.conf
	${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/etc
.endfor
.for i in wrthist wrttmp
	${INSTALL_DATA} -m 600 /dev/null ${PREFIX}/etc/${i}
.endfor
.for i in ${MAN1}
	${INSTALL_MAN} ${WRKSRC}/${i} ${MANPREFIX}/man/man1
.endfor

.include <bsd.port.post.mk>
