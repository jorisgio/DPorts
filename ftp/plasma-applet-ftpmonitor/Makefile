# New ports collection makefile for:	plasma-applet-ftpmonitor
# Date created:		2010-06-15
# Whom:			Max Brazhnikov <makc@FreeBSD.org>
#
# $FreeBSD: ports/ftp/plasma-applet-ftpmonitor/Makefile,v 1.6 2012/11/17 05:57:30 svnexp Exp $
#

PORTNAME=	ftpmonitor
PORTVERSION=	1.1
PORTREVISION=	3
CATEGORIES=	ftp kde
MASTER_SITES=	GOOGLE_CODE
PKGNAMEPREFIX=	plasma-applet-

MAINTAINER=	makc@FreeBSD.org
COMMENT=	KDE4 Plasma applet, which monitors connections to ftp daemons

USE_BZIP2=	yes
USE_CMAKE=	yes
USE_KDE4=	kdelibs kdeprefix automoc4
USE_QT4=	qmake_build moc_build uic_build rcc_build
MAKE_JOS_SAFE=	yes

post-patch:
	${REINPLACE_CMD} -e 's,/usr/local,${LOCALBASE},g' \
		${WRKSRC}/src/ftpserver/*.h

.include <bsd.port.mk>
