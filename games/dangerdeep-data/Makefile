# New ports collection makefile for:	dangerdeep-data
# Date created:		2006-10-12
# Whom:			Jose Alonso Cardenas Marquez <acm@FreeBSD.org>
#
# $FreeBSD: ports/games/dangerdeep-data/Makefile,v 1.4 2012/11/17 05:57:35 svnexp Exp $
#

PORTNAME=	data
PORTVERSION=	0.3.0
CATEGORIES=	games
MASTER_SITES=	SF/dangerdeep/danger_from_the_deep-${PORTNAME}/${PORTVERSION}
PKGNAMEPREFIX=	dangerdeep-
DISTNAME=	${PKGNAMEPREFIX}${PORTNAME}-${PORTVERSION}
DIST_SUBDIR=	${PKGNAMEPREFIX:S/-//}

MAINTAINER=	acm@FreeBSD.org
COMMENT=	The Danger from the Deep data files

USE_ZIP=	yes
NO_BUILD=	yes

DATADIR=	share/${PKGNAMEPREFIX:S/-//}
PLIST=		${WRKDIR}/pkg-plist
WRKSRC=		${WRKDIR}/${PORTNAME}

pre-install:
	@${RM} -f ${PLIST}
	@cd ${WRKSRC} && \
		${FIND} * -type f | ${SORT} | ${SED} -e 's|^|%%DATADIR%%/|' >> ${PLIST} && \
			${FIND} * -type d | ${SORT} -r | ${SED} -e 's|^|@dirrm %%DATADIR%%/|' >> ${PLIST}
	@${ECHO_CMD} "@dirrm %%DATADIR%%" >> ${PLIST}

do-install:
	@${MKDIR} ${PREFIX}/${DATADIR}
	cd ${WRKSRC} && \
		${FIND} * -type d -exec ${MKDIR} "${PREFIX}/${DATADIR}/{}" \; && \
			${FIND} * -type f -exec ${INSTALL_DATA} "{}" "${PREFIX}/${DATADIR}/{}" \;

.include <bsd.port.mk>
