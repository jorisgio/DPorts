# New ports collection makefile for:    ja-scim-anthy
# Date created:		2 Mar 2005
# Whom:			Hajimu UMEMOTO <ume@FreeBSD.org>
#
# $FreeBSD: ports/japanese/scim-anthy/Makefile,v 1.40 2012/11/17 05:58:39 svnexp Exp $
#

PORTNAME=	scim-anthy
PORTVERSION=	1.2.7
PORTREVISION=	1
CATEGORIES=	japanese
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE_JP}
MASTER_SITE_SUBDIR=scim-imengine/37309

MAINTAINER=	ume@FreeBSD.org
COMMENT=	SCIM IMEngine module using Anthy

BUILD_DEPENDS=	scim:${PORTSDIR}/textproc/scim
LIB_DEPENDS=	anthy.1:${PORTSDIR}/japanese/anthy
RUN_DEPENDS:=	${BUILD_DEPENDS} \
		kasumi:${PORTSDIR}/japanese/kasumi

USE_GNOME=	lthack
USE_ICONV=	yes
USE_GMAKE=	yes
GNU_CONFIGURE=	yes

CONFIGURE_ENV=	PTHREAD_CFLAGS="${PTHREAD_CFLAGS}" \
		PTHREAD_LIBS="${PTHREAD_LIBS}"

CPPFLAGS+=	-I${LOCALBASE}/include -D__STDC_ISO_10646__
LDFLAGS+=	-L${LOCALBASE}/lib

post-install:
	@${CAT} ${PKGMESSAGE}
	@${ECHO}
	@${ECHO} To display this message again, type \`pkg_info -D ${PKGNAME}\'
	@${ECHO}

.include <bsd.port.mk>
