# New ports collection makefile for:	starplot
# Date created:				Mon Aug 20 09:08:07 EDT 2001
# Whom:					Patrick Li <pat@databits.net>
#
# $FreeBSD: ports/astro/starplot/Makefile,v 1.31 2012/11/17 05:54:26 svnexp Exp $
#

PORTNAME=	starplot
PORTVERSION=	0.95.5
PORTREVISION=	6
CATEGORIES=	astro
MASTER_SITES=	http://starplot.org/downloads/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	3-dimensional viewer for star charts

USE_GNOME=	gnomehack gtk20
USE_GETTEXT=	yes
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

MAN1=		starconvert.1 starpkg.1 starplot.1

post-patch:
	@${REINPLACE_CMD} -e \
		's|$$(docdir)/examples|${EXAMPLESDIR}|g' ${WRKSRC}/configure

.include <bsd.port.mk>
