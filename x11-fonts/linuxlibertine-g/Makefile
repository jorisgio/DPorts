# New ports collection makefile for:	linuxlibertine-G
# Date created:				24 April 2012
# Whom:					Baptiste Daroussin <bapt@FreeBSD.org>
# $FreeBSD: ports/x11-fonts/linuxlibertine-g/Makefile,v 1.2 2012/11/17 06:03:29 svnexp Exp $

PORTNAME=	linuxlibertine-g
PORTVERSION=	20120116
CATEGORIES=	x11-fonts
MASTER_SITES=	http://www.numbertext.org/linux/
DISTNAME=	e7a384790b13c29113e22e596ade9687-LinLibertineG-${PORTVERSION}

MAINTAINER=	office@FreeBSD.org
COMMENT=	Linux Libertine G and Linux Biolinum G fonts

BUILD_DEPENDS=	mkfontscale:${PORTSDIR}/x11-fonts/mkfontscale	\
		mkfontdir:${PORTSDIR}/x11-fonts/mkfontdir \
		fc-cache:${PORTSDIR}/x11-fonts/fontconfig
RUN_DEPENDS=	fc-cache:${PORTSDIR}/x11-fonts/fontconfig

USE_ZIP=	yes

PLIST_SUB=	FONTDIR="${FONTDIR:S|${PREFIX}/||}"

SUB_FILES=	pkg-message
PKGMESSAGE=	${WRKDIR}/pkg-message
SUB_LIST=	FONTDIR=${FONTDIR}

MKFONTSCL_CMD=	${LOCALBASE}/bin/mkfontscale
MKFONTDIR_CMD=	${LOCALBASE}/bin/mkfontdir

FONTNAME=	LinLibertineG
FONTDIR=	${PREFIX}/lib/X11/fonts/${FONTNAME}
INSTDAT=	fonts.dir fonts.scale

WRKSRC=	${WRKDIR}/${FONTNAME}

do-build:
	cd ${WRKSRC} && ${MKFONTSCL_CMD}
	cd ${WRKSRC} && ${MKFONTDIR_CMD}

do-install:
	${MKDIR} ${FONTDIR}
	cd ${WRKSRC} &&	\
		${INSTALL_DATA} ${INSTDAT} ${WRKSRC}/*.ttf ${FONTDIR}

post-install:
	${ECHO_MSG} "===> Running fc-cache"
	-${LOCALBASE}/bin/fc-cache -f -v ${FONTDIR}
	@${ECHO_MSG}
	@${CAT} ${PKGMESSAGE}
	@${ECHO_MSG}

.include <bsd.port.mk>
