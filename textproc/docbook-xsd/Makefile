# ex:ts=8
# Ports collection makefile for:	docbook-xsd
# Date created:			Feb 9, 2004
# Whom:				ijliao
#
# $FreeBSD: ports/textproc/docbook-xsd/Makefile,v 1.5 2012/11/17 06:01:54 svnexp Exp $
#

PORTNAME=	docbook-xsd
PORTVERSION=	1.0.b1
CATEGORIES=	textproc
MASTER_SITES=	http://www.oasis-open.org/docbook/xmlschema/${PORTVERSION:S/.b/b/}/
DISTNAME=	${PORTNAME}-${PORTVERSION:S/.b/b/}

MAINTAINER=	gabor@FreeBSD.org
COMMENT=	DocBook W3C XML Schema

USE_ZIP=	yes
NO_BUILD=	yes

do-install:
	@${MKDIR} ${DATADIR}
	@${CP} ${WRKSRC}/*.xsd ${DATADIR}
	@${FIND} ${DATADIR} -type f | \
		${SED} 's,^${PREFIX}/,,' >> ${TMPPLIST}
	@${FIND} ${DATADIR} -type d | ${SORT} -r | \
		${SED} 's,^${PREFIX}/,@dirrm ,' >> ${TMPPLIST}

.include <bsd.port.mk>
