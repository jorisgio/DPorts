# Created by: Ying-Chieh Liao <ijliao@FreeBSD.org>
# $FreeBSD: ports/cad/impact/Makefile,v 1.15 2012/12/10 11:29:53 svnexp Exp $

PORTNAME=	impact
PORTVERSION=	0.7.5.3
CATEGORIES=	cad java
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/Version%20${PORTVERSION}
DISTNAME=	Impact-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Dynamic Finite Element Program Suite

USE_ZIP=	yes
WRKSRC=		${WRKDIR}/Impact
USE_JAVA=	yes
JAVA_VERSION=	1.6+
NO_BUILD=	yes

DATADIR=	${JAVASHAREDIR}/${PORTNAME}
SUB_FILES=	impact impactgui

PLIST_FILES=	bin/impact bin/impactgui

do-install:
	cd ${WRKSRC} && ${FIND} . -type d -exec ${MKDIR} ${DATADIR}/{} \;
	cd ${WRKSRC} && ${FIND} . -type f -exec ${INSTALL_DATA} {} ${DATADIR}/{} \;
	${INSTALL_SCRIPT} ${WRKDIR}/impact ${WRKDIR}/impactgui ${PREFIX}/bin

post-install:
	@${FIND} ${DATADIR} ! -type d | \
		${SED} 's,^${PREFIX}/,,' >> ${TMPPLIST}
	@${FIND} ${DATADIR} -type d | ${SORT} -r | \
		${SED} 's,^${PREFIX}/,@dirrm ,' >> ${TMPPLIST}

.include <bsd.port.mk>
