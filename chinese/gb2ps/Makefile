# ex:ts=8
# Ports collection makefile for:  gb2ps
# Date created:			  Mon Feb 03, 1997
# Whom:				  David O'Brien (obrien@FreeBSD.org)
#
# $FreeBSD: ports/chinese/gb2ps/Makefile,v 1.19 2012/11/17 05:54:56 svnexp Exp $
#

PORTNAME=	gb2ps
PORTVERSION=	2.02
CATEGORIES=	chinese print
MASTER_SITES=	ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/unix/print/:sw  \
		ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/fonts/gb/misc/:font
DISTNAME=	gb2ps.2.02
DISTFILES=	${DISTNAME}.tar.gz:sw  \
		csong24.ccf.gz:font ckai24.ccf.gz:font cfang24.ccf.gz:font \
		chei24.ccf.gz:font cfan24.ccf.gz:font

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Converts Chinese GB (simple) encoded text to PostScript

EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}
WRKSRC=		${WRKDIR}/GB2PS

do-install:
	@${MKDIR} ${PREFIX}/share/chinese/gb
	${INSTALL_PROGRAM} ${WRKSRC}/gb2ps ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/cover.ps ${PREFIX}/share/chinese
.for font in csong24.ccf ckai24.ccf cfang24.ccf chei24.ccf cfan24.ccf
	${GUNZIP_CMD} -c ${DISTDIR}/${font}.gz > ${PREFIX}/share/chinese/gb/${font}
.endfor
.if !defined(NOPORTDOCS)
	@${MKDIR} ${PREFIX}/share/doc/gb2ps
	${INSTALL_DATA} ${WRKSRC}/gb2ps.help ${PREFIX}/share/doc/gb2ps
.endif

.include <bsd.port.mk>
