# Created by: rfarmer@predatorlabs.net
# $FreeBSD: ports/textproc/xml-commons/Makefile,v 1.4 2012/12/10 13:48:08 svnexp Exp $

PORTNAME=	xml-commons
PORTVERSION=	1.4.01
CATEGORIES=	textproc java
MASTER_SITES=	APACHE/xml/commons
DISTNAME=	${PORTNAME}-external-${PORTVERSION}
EXTRACT_SUFX=	-bin.tar.gz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Provides common XML code for Apache projects

USE_JAVA=	yes
JAVA_VERSION=	1.6+
JAVA_RUN=	yes
NO_BUILD=	yes

PLIST_FILES=	%%JAVAJARDIR%%/xml-apis-ext.jar \
		%%JAVAJARDIR%%/xml-apis.jar

do-install:
	${INSTALL_DATA} ${WRKSRC}/xml-apis-ext.jar ${JAVAJARDIR}
	${INSTALL_DATA} ${WRKSRC}/xml-apis.jar ${JAVAJARDIR}

.include <bsd.port.mk>
