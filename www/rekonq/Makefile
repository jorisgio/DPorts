# $FreeBSD: ports/www/rekonq/Makefile,v 1.21 2012/11/17 06:03:03 svnexp Exp $

PORTNAME=	rekonq
PORTVERSION=	1.3
CATEGORIES=	www kde
MASTER_SITES=	SF/${PORTNAME}/1.0/

MAINTAINER=	makc@FreeBSD.org
COMMENT=	Lightweight KDE browser based on WebKit

USE_BZIP2=	yes
USE_CMAKE=	yes
USE_KDE4=	kdehier kdelibs kdeprefix automoc4
USE_QT4=	script webkit \
		moc_build qmake_build rcc_build uic_build
MAKE_JOBS_SAFE=	yes

.include <bsd.port.mk>
