# New ports collection Makefile for:	maven-ant-tasks
# Date created:		June 2010
# Whom:			Chris Rees <utisoft@gmail.com>
#
# $FreeBSD: ports/devel/maven-ant-tasks/Makefile,v 1.9 2012/11/17 05:55:59 svnexp Exp $
#

PORTNAME=	maven-ant-tasks
PORTVERSION=	2.1.3
CATEGORIES=	devel java
MASTER_SITES=	${MASTER_SITE_APACHE}
MASTER_SITE_SUBDIR=	maven/binaries
EXTRACT_SUFX=	.jar
EXTRACT_ONLY=

MAINTAINER=	crees@FreeBSD.org
COMMENT=	Allows Maven's artifact handling to be used from within an Ant build

RUN_DEPENDS=	ant:${PORTSDIR}/devel/apache-ant

LICENSE=	AL2

USE_JAVA=	1.5+

NO_BUILD=	yes

PLIST_FILES=	%%JAVASHAREDIR%%/apache-ant/lib/${DISTNAME}${EXTRACT_SUFX}

do-install:
	@${INSTALL_DATA} ${DISTDIR}/${DISTNAME}${EXTRACT_SUFX} \
		${JAVASHAREDIR}/apache-ant/lib/

.include <bsd.port.mk>
