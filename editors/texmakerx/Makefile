# Ports collection makefile for:	texmakerx
# Date created:			Feb 22, 2009
# Whom:				lx
#
# $FreeBSD: ports/editors/texmakerx/Makefile,v 1.22 2012/11/17 05:57:18 svnexp Exp $
#

PORTNAME=	texmakerx
PORTVERSION=	2.1
PORTREVISION=	3
CATEGORIES=	editors
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/TexMakerX%20${PORTVERSION}
DISTNAME=	${PORTNAME}-${PORTVERSION:S:.0::}

MAINTAINER=	lx@FreeBSD.org
COMMENT=	A LaTeX IDE derived from Texmaker

LIB_DEPENDS=	poppler.18:${PORTSDIR}/graphics/poppler \
		poppler-qt4.3:${PORTSDIR}/graphics/poppler-qt4
RUN_DEPENDS=	latex:${PORTSDIR}/print/teTeX-base \
		dvips:${PORTSDIR}/print/dvipsk-tetex \
		${LOCALBASE}/share/icons/hicolor/index.theme:${PORTSDIR}/misc/hicolor-icon-theme

WRKSRC=	${WRKDIR}/${PORTNAME}${PORTVERSION}

USE_GHOSTSCRIPT=yes
USE_QT4=	gui network xml moc_build qmake_build rcc_build \
		uic_build qtestlib script
HAS_CONFIGURE=	yes
INSTALLS_ICONS=	yes
MAKE_JOBS_UNSAFE=	yes

OPTIONS=	XDVI "view dvi with xdvi" On \
		GV "view ps with gv" On

.include <bsd.port.pre.mk>

.if !defined(WITHOUT_XDVI)
RUN_DEPENDS+=	xdvi:${PORTSDIR}/print/xdvik
.endif

.if !defined(WITHOUT_GV)
RUN_DEPENDS+=	gv:${PORTSDIR}/print/gv
.endif

post-patch:
	@${REINPLACE_CMD} -e 's,^\(utilities.path =\).*,\1 ${DATADIR},' \
		-e 's,/usr/include,${LOCALBASE}/include,g' \
		-e 's,/usr/lib,${LOCALBASE}/lib,g' \
		${WRKSRC}/${PORTNAME}.pro

do-configure:
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} \
		${QMAKE} PREFIX=${PREFIX} ${PORTNAME}.pro

.include <bsd.port.post.mk>
