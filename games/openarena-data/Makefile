# New ports collection makefile for:	openarena-data
# Date created:				15 June 2010
# Whom:					Dominic Fandrey
#
# $FreeBSD: ports/games/openarena-data/Makefile,v 1.4 2012/11/17 05:57:48 svnexp Exp $
#

PORTNAME=	data
PORTVERSION=	0.8.8
CATEGORIES=	games
MASTER_SITES=	SF/oarena:data \
		http://openarena.ws/request.php?4\\\#/:data \
		SF/oarena:patch \
		http://openarena.ws/request.php?5\\\#/:patch
DISTFILES=	${OA_DATA}:data
EXTRACT_ONLY=

MAINTAINER=	kamikaze@bsdforen.de
COMMENT=	OpenArena game data files

WRKSRC=		${WRKDIR}/baseoa
NO_BUILD=	yes
FETCH_ARGS=

OA_DATA=	${PKGNAMEPREFIX}${OA_DATA_VER}.zip
OA_DATA_VER=	0.8.8

.include "../openarena/Makefile.include"

do-install:
	${MKDIR} ${DATADIR}
.for _file in ${DISTFILES:C/:[^:]*//}
	${EXTRACT_CMD} ${EXTRACT_BEFORE_ARGS} ${DISTDIR}/${_file} \
		${EXTRACT_AFTER_ARGS} -C ${DATADIR} --strip-components 2 \
		${PKGNAMEPREFIX}\?.\?.\?/baseoa/
.endfor

.include <bsd.port.post.mk>
