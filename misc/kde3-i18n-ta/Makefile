# New ports collection makefile for:    kde3-i18n-ta
# Date created:                         05 April 2002
# Whom:                                 Lauri Watts <lauri@kde.org>
#
# $FreeBSD: ports/misc/kde3-i18n-ta/Makefile,v 1.58 2012/11/17 05:59:39 svnexp Exp $
#

PORTNAME=	kde-i18n
PORTVERSION=	${KDE_VERSION}
PORTREVISION=	5
CATEGORIES?=	misc kde
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/${PORTVERSION:S/.0//}/src/kde-i18n
PKGNAMEPREFIX=	ta-
DIST_SUBDIR=	KDE

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Tamil messages and documentation for KDE3

USE_KDELIBS_VER=3
USE_BZIP2=	yes
USE_GMAKE=	yes
USE_GETTEXT=	build
GNU_CONFIGURE=	yes
KDE_I18N=	yes

.include "${.CURDIR}/../../x11/kde3/Makefile.kde"

.include <bsd.port.mk>
