# New ports collection makefile for:	pyClamd
# Date created:				Jan 7, 2009
# Whom:					Milan Obuch
#
# $FreeBSD: ports/security/py-pyclamd/Makefile,v 1.5 2012/11/17 06:01:17 svnexp Exp $
#

PORTNAME=	pyclamd
PORTVERSION=	0.2.2
CATEGORIES=	security python
MASTER_SITES=	http://xael.org/norman/python/pyclamd/
DISTFILES=	pyclamd.py

MAINTAINER=	bsd@dino.sk
COMMENT=	Python ClamD interface module

USE_PYTHON=	yes
USE_PYDISTUTILS=yes

.include <bsd.port.pre.mk>

do-extract:
	@${RM} -rf ${WRKDIR}
	@${MKDIR} ${WRKDIR}
	@${MKDIR} ${WRKDIR}/${PKGNAME}
	if ! (cd ${WRKDIR} && ${CP} ${DISTDIR}/${DISTFILES} ${WRKDIR}/${PKGNAME}/); \
	then \
		exit 1; \
	fi; \

.include <bsd.port.post.mk>
