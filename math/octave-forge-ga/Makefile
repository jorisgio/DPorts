# New ports collection makefile for:	octave-forge-ga
# Date created:		8 September 2008
# Whom:			Stephen Montgomery-Smith <stephen@math.missouri.edu>
#
# $FreeBSD: ports/math/octave-forge-ga/Makefile,v 1.18 2012/11/17 05:59:24 svnexp Exp $
#

PORTNAME=	octave-forge-ga
PORTVERSION=	0.10.0
PORTREVISION=	1
CATEGORIES=	math

MAINTAINER=	stephen@FreeBSD.org
COMMENT=	Octave-forge package ${OCTAVE_PKGNAME}

# OCTSRC is the name of the directory of the package.
# It is usually ${OCTAVE_PKGNAME} or ${DISTNAME}.
OCTSRC=		${OCTAVE_PKGNAME}

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/Mk/bsd.octave.mk"
do-build:
	@${DO_NADA}

post-build:
	${RM} -f ${WRKSRC}/Makefile ${WRKSRC}/configure
	cd ${WRKDIR} && ${TAR} cfz ${DISTNAME}.tar.gz ${OCTSRC}

.include <bsd.port.post.mk>
