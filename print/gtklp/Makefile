# New ports collection makefile for: 	gtklp
# Date created:		22 Oct 2002
# Whom:			Martin Klaffenboeck <martin.klaffenboeck@gmx.at>
#
# $FreeBSD: ports/print/gtklp/Makefile,v 1.53 2012/11/17 06:00:50 svnexp Exp $
#

PORTNAME=	gtklp
PORTVERSION=	1.2.9
PORTREVISION=	1
DISTVERSIONSUFFIX=	.src
CATEGORIES=	print
MASTER_SITES=	SF

MAINTAINER=	sylvio@FreeBSD.org
COMMENT=	A gtk interface to cups

LIB_DEPENDS=	cups.2:${PORTSDIR}/print/cups-client

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

USE_GNOME=	gtk20
USE_OPENSSL=	yes
USE_AUTOTOOLS=	automake:env
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

MAN1=		gtklp.1 gtklpq.1

.if !defined(WITHOUT_NLS)
USE_GETTEXT=	yes
PLIST_SUB+=	NLS=""
.endif

.include <bsd.port.mk>
