# New ports collection makefile for:	grisbi
# Date created:		19 November 2002
# Whom:			Thierry Thomas <thierry@pompo.net>
#
# $FreeBSD: ports/finance/grisbi/Makefile,v 1.57 2012/11/17 05:57:25 svnexp Exp $
#

PORTNAME=	grisbi
PORTVERSION=	0.8.9
PORTREVISION=	1
CATEGORIES=	finance
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}%20stable/${PORTVERSION:R}.x/

MAINTAINER=	thierry@FreeBSD.org
COMMENT=	Personal accounting application

LICENSE=	GPLv2

LIB_DEPENDS=	ofx.5:${PORTSDIR}/finance/libofx

USE_BZIP2=	yes
USE_ICONV=	yes
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
USE_GNOME=	gtk20 glib20 libxml2
USE_OPENSSL=	yes
WITH_OPENSSL_PORT=	yes
INSTALLS_ICONS=	yes

MAN1=		grisbi.1

CPPFLAGS+=	-I${LOCALBASE}/include ${PTHREAD_CFLAGS}
LDFLAGS+=	-L${LOCALBASE}/lib ${PTHREAD_LIBS}

.if defined(WITHOUT_NLS)
CONFIGURE_ARGS+=--disable-nls
PLIST_SUB+=	NLS="@comment "
.else
USE_GETTEXT=	yes
PLIST_SUB+=	NLS=""
.endif

pre-configure:
	${REINPLACE_CMD} -e "s|-lpthread|${PTHREAD_LIBS}|g"	\
		${WRKSRC}/${CONFIGURE_SCRIPT}
.if defined(NOPORTDOCS)
	${REINPLACE_CMD} -e "s|pixmaps help|pixmaps|" ${WRKSRC}/Makefile.in
.endif

.include <bsd.port.mk>
