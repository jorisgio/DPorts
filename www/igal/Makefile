# New ports collection makefile for:   igal
# Date created:                        14 Aug 2002
# Whom:                                Dylan Carlson  <absinthe@pobox.com>
#
# $FreeBSD: ports/www/igal/Makefile,v 1.14 2012/11/17 06:02:37 svnexp Exp $
#

PORTNAME=	igal
PORTVERSION=	1.4
PORTREVISION=	7
CATEGORIES=	www graphics
MASTER_SITES=	http://www.stanford.edu/~epop/igal/

MAINTAINER=	absinthe@pobox.com
COMMENT=	A static html image gallery generator for *nix

RUN_DEPENDS=	${LOCALBASE}/bin/cjpeg:${PORTSDIR}/graphics/jpeg \
		convert:${PORTSDIR}/graphics/ImageMagick

CONFLICTS=	igal2-*

MAN1=	igal.1

post-patch:
	@${REINPLACE_CMD} -e 's,/usr/local,${PREFIX},g' ${WRKSRC}/Makefile \
		${WRKSRC}/igal

.include <bsd.port.mk>
