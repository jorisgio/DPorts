# ex:ts=8
# Ports collection makefile for:	diacanvas2
# Date created:			Feb 9, 2003
# Whom:				ijliao
#
# $FreeBSD: ports/graphics/diacanvas2/Makefile,v 1.39 2012/11/17 05:58:03 svnexp Exp $
#

PORTNAME=	diacanvas2
PORTVERSION=	0.15.4
PORTREVISION=	3
CATEGORIES=	graphics gnome
MASTER_SITES=	SF/diacanvas/DiaCanvas2/${PORTVERSION}
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A general drawing canvas from dia dialog editor

USE_GNOME=	gnomehack pygnome2
USE_PYTHON=	2.2+
USE_GMAKE=	yes
USE_AUTOTOOLS=	libtool
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
USE_LDCONFIG=	yes
USE_DISPLAY=	yes

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

post-patch:
	@${REINPLACE_CMD} -e \
		's|unit_tests doc|unit_tests|g' ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
