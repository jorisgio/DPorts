# New ports collection makefile for:	Quanta+
# Date created:				26 Sep 2002
# Whom:					AlanE <alane@freebsd.org>
#
# $FreeBSD: ports/www/kdewebdev/Makefile,v 1.80 2012/12/30 18:56:29 svnexp Exp $
#

PORTNAME=	kdewebdev
PORTVERSION=	${KDE_VERSION}
PORTREVISION=	9
PORTEPOCH=	2
CATEGORIES=	www kde
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/${PORTVERSION:S/.0//}/src
DIST_SUBDIR=	KDE

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Comprehensive html/website development environment

BUILD_DEPENDS=	cvsservice:${PORTSDIR}/devel/kdesdk3
RUN_DEPENDS=	cvsservice:${PORTSDIR}/devel/kdesdk3 \
		tidy:${PORTSDIR}/www/tidy-lib

DEPRECATED=	Depends on QT3; unmaintained
EXPIRATION_DATE=	2013-07-01

USE_KDELIBS_VER=3
PREFIX=		${KDE_PREFIX}

USE_BZIP2=	yes
USE_XORG=	xpm
USE_GMAKE=	yes
USE_GETTEXT=	build
USE_AUTOTOOLS=  libtool

.include <${.CURDIR}/../../x11/kde3/Makefile.kde>
.include <bsd.port.mk>
