# ex:ts=8
# Ports collection makefile for:  spim
# Date created:			  Mon Oct 28, 1996
# Whom:				  David O'Brien (obrien@cs.ucdavis.edu)
#
# $FreeBSD: ports/emulators/spim/Makefile,v 1.38 2012/11/17 05:57:23 svnexp Exp $
#

PORTNAME=	spim
PORTVERSION=	8.0
CATEGORIES=	emulators
MASTER_SITES=	http://pages.cs.wisc.edu/~larus/SPIM/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	MIPS32 Simulator

OPTIONS_DEFINE=	GUI DOCS
OPTIONS_DEFAULT=	GUI

BUILD_WRKSRC=	${WRKSRC}/${PORTNAME}
INSTALL_WRKSRC=	${WRKSRC}/${PORTNAME}

ALL_TARGET=	${PORTNAME}

MAN1=		spim.1
PORTDOCS=	cycle.ps.gz spim.ps.gz SPIM.html
PLIST_FILES=	bin/spim %%DATADIR%%/exceptions.s
PLIST_DIRS=	%%DATADIR%%

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MGUI}
USE_XORG=	x11 xaw
BUILD_DEPENDS+=			imake:${PORTSDIR}/devel/imake
PLIST_FILES+=	bin/xspim
MAN1+=		xspim.1
.endif

post-build:
.if ${PORT_OPTIONS:MGUI}
	@(cd ${WRKSRC}/xspim && ${XMKMF} && \
		${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} ${MAKEFILE})
.endif

do-install:
	${INSTALL_PROGRAM} ${INSTALL_WRKSRC}/spim ${PREFIX}/bin/spim
	${INSTALL_MAN} ${WRKSRC}/Documentation/spim.man ${MANPREFIX}/man/man1/spim.1
	${MKDIR} ${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/CPU/exceptions.s ${DATADIR}/exceptions.s
.if ${PORT_OPTIONS:MGUI}
	${INSTALL_PROGRAM} ${WRKSRC}/xspim/xspim ${PREFIX}/bin/xspim
	${INSTALL_MAN} ${WRKSRC}/Documentation/xspim.man ${MANPREFIX}/man/man1/xspim.1
.endif
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/Documentation/TeX/cycle.ps ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/Documentation/TeX/spim.ps ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/Documentation/SPIM.html ${DOCSDIR}
	${GZIP_CMD} ${DOCSDIR}/cycle.ps ${DOCSDIR}/spim.ps
.endif

.include <bsd.port.mk>
