# Created by: Alex Dupre <ale@FreeBSD.org>
# $FreeBSD: ports/devel/sabre/Makefile,v 1.3 2012/12/10 11:29:55 svnexp Exp $

PORTNAME=	sabre
PORTVERSION=	20100501
CATEGORIES=	devel multimedia java
MASTER_SITES=	SF
MASTER_SITE_SUBDIR=	sabre-library
DISTNAME=	${PORTNAME}-src-${PORTVERSION}

MAINTAINER=	ale@FreeBSD.org
COMMENT=	A Simple API for Binary REpresentations and an UDF Library

LICENSE=	LGPL21

WRKSRC=		${WRKDIR}/Simple\ API\ for\ Binary\ REpresentations\ \(SABRE\)
USE_ZIP=	yes
USE_JAVA=	yes
JAVA_VERSION=	1.6+
USE_ANT=	yes
ALL_TARGET=	dist

PLIST_FILES=	%%JAVAJARDIR%%/${PORTNAME}.jar %%JAVAJARDIR%%/udflib.jar

do-install:
	@${ECHO_MSG} -n ">> Installing JAR as ${JAVAJARDIR}/${PORTNAME}.jar..."
	@${INSTALL_DATA} ${WRKSRC}/dist/${PORTNAME}.jar ${JAVAJARDIR}/
	@${ECHO_MSG} " [ DONE ]"
	@${ECHO_MSG} -n ">> Installing JAR as ${JAVAJARDIR}/udflib.jar..."
	@${INSTALL_DATA} ${WRKSRC}/dist/udflib.jar ${JAVAJARDIR}/
	@${ECHO_MSG} " [ DONE ]"

.include <bsd.port.mk>
