# New ports collection makefile for:    ukr-ispell
# Date created:         5 Dec 2000
# Whom:                 mi
#
# $FreeBSD: ports/textproc/ua-ispell/Makefile,v 1.11 2012/11/17 06:02:23 svnexp Exp $
#

PORTNAME=	ispell-uk
PORTVERSION=	0.7
PORTREVISION=	1
CATEGORIES=     textproc ukrainian
MASTER_SITES=   SF/${PORTNAME}/OldFiles

MAINTAINER=     mi@aldan.algebra.com
COMMENT=	Ukrainian (KOI8-U) dictionary for ISPELL

BUILD_DEPENDS=  buildhash:${PORTSDIR}/textproc/ispell

USE_BZIP2=	YES
ALL_TARGET=	koi
USE_GMAKE=	YES
USE_PERL5=	yes

# Still need gmake for other reasons :-\
#post-patch:
#	${PERL} -pi -e 's,\$$\(MAKE\) -C (\w+),cd \1 && make,g' \
#		${WRKSRC}/Makefile.in

do-configure:
	cd ${WRKSRC} && ${SH} ./makeconfig.sh \
		-ispell=${PREFIX}/share/ispell -default=koi

do-install:
	${INSTALL_DATA} ${WRKSRC}/ukrainian-koi.hash \
		${PREFIX}/share/ispell/ukrainian.hash
	${INSTALL_DATA} ${WRKSRC}/Affix/ukrainian-koi.aff \
		${PREFIX}/share/ispell/ukrainian.aff
	${INSTALL_DATA} ${WRKSRC}/Dictionary/ukrainian-koi.dict \
		${PREFIX}/share/ispell/ukrainian.dict
	${INSTALL_SCRIPT} ${FILESDIR}/ispell-uk ${PREFIX}/bin

.include <bsd.port.pre.mk>

.if ${ARCH} == "powerpc" && ${OSVERSION} > 900000
BROKEN=		Does not build on powerpc-9: segfault
.endif

.include <bsd.port.post.mk>
