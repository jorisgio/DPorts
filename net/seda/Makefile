# Created by: Mario Sergio Fujikawa Ferreira <lioux@FreeBSD.org>
# $FreeBSD: ports/net/seda/Makefile,v 1.8 2012/12/10 13:48:07 svnexp Exp $

PORTNAME=	seda
PORTVERSION=	3.0
PORTREVISION=	2
CATEGORIES=	net java
MASTER_SITES=	SF
DISTNAME=	${PORTNAME}-release-${VERSION_DATE}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	An Architecture for Highly Concurrent Server Applications

USE_JAVA=	yes
JAVA_VERSION=	1.6+
USE_ANT=	yes
ALL_TARGET=	dist

.ifndef(NOPORTDOCS)
ALL_TARGET+=	javadoc
.endif

JAVADOC_WRKSRC=	${WRKSRC}/build/javadoc
WRKSRC=		${WRKDIR}/${DISTNAME}/${PORTNAME}

VERSION_DATE=	20020712

DOC_FILES=	\
		gnutella-graph.gif \
		index.html \
		nbio.html \
		profile.gif \
		sandstorm.html \
		sandstorm.jpg
PORTDOCS=	${DOC_FILES} \
		javadoc

PLIST_FILES=	\
		%%JAVAJARDIR%%/${PORTNAME:tl}.jar

pre-build:
# use our build.xml
	@${CP} ${FILESDIR}/build.xml ${WRKSRC}

do-install:
# jar
	@${MKDIR} ${JAVAJARDIR}
	@${INSTALL_DATA} ${WRKSRC}/dist/lib/${PORTNAME:tl}.jar \
		${JAVAJARDIR}/
# docs
.ifndef(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
. for doc in ${DOC_FILES}
	@${INSTALL_DATA} ${WRKSRC}/docs/${doc} ${DOCSDIR}
. endfor
	@${MKDIR} ${DOCSDIR}/javadoc
# line taken from textproc/xerces-j maintained by hq@FreeBSD.org
	@cd ${JAVADOC_WRKSRC} && \
		${FIND} . -type d -exec ${MKDIR} "${DOCSDIR}/javadoc/{}" \; && \
		${FIND} . -not -type d -exec ${INSTALL_DATA} "{}" "${DOCSDIR}/javadoc/{}" \;
.endif

.include <bsd.port.mk>
