# New ports collection makefile for:	drexelsnmp
# Date created:				2005-02-15
# Whom:					Anders Nordby <anders@FreeBSD.org>
#
# $FreeBSD: ports/java/drexelsnmp/Makefile,v 1.9 2012/11/17 05:58:42 svnexp Exp $
#

PORTNAME=	drexelsnmp
PORTVERSION=	1.4.2
PORTREVISION=	1
CATEGORIES=	java devel net-mgmt
MASTER_SITES=	http://gicl.cs.drexel.edu/people/sevy/snmp/
DISTNAME=	source_${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Java SNMP protocol implementation

USE_JAVA=	yes
USE_ZIP=	yes

CLASSDIR=	${PREFIX}/share/java/classes
NO_WRKSUBDIR=	yes

PLIST_FILES=	share/java/classes/snmp.jar

do-build:
	${MKDIR} ${WRKSRC}/build_library
	(cd ${WRKSRC} && ${JAVAC} -sourcepath source -d build_library source/snmp/*.java && ${JAR} cvf snmp.jar -C build_library/ .)

do-install:
	${INSTALL} -d -o root -g wheel -m 0755 ${CLASSDIR}
	${INSTALL_DATA} ${WRKSRC}/snmp.jar ${CLASSDIR}/

.include <bsd.port.mk>
