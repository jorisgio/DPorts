# New ports collection makefile for:	kmess
# Date created:			21 June 2002
# Whom:				Hye-Shik Chang <perky@python.or.kr>
#
# $FreeBSD: ports/net-im/kmess-kde4/Makefile,v 1.53 2012/11/17 06:00:27 svnexp Exp $
#

PORTNAME=	kmess
PORTVERSION=	2.0.6.2
PORTREVISION=	1
CATEGORIES=	net-im kde
MASTER_SITES=	SF/${PORTNAME}/Latest%20versions/${PORTVERSION}/

MAINTAINER=	syncer@gmail.com
COMMENT=	MSN Messenger client for KDE

LIB_DEPENDS=	qca.2:${PORTSDIR}/devel/qca
RUN_DEPENDS=	qca-ossl>=2.0.0.b3:${PORTSDIR}/security/qca-ossl

LATEST_LINK=	${PORTNAME}-kde4
MAKE_JOBS_SAFE=	yes

USE_BZIP2=	yes
USE_GNOME=	libxml2 libxslt
USE_KDE4=	kdehier kdeprefix kdelibs libkonq automoc4
USE_QT4=	qmake_build moc_build rcc_build uic_build
USE_CMAKE=	yes
USE_GETTEXT=	yes

.include <bsd.port.mk>
