# New ports collection makefile for:   port-authoring-tools
# Date created:        3 April 2004
# Whom:                Mark Linimon <linimon@FreeBSD.org>
#
# $FreeBSD: ports/ports-mgmt/port-authoring-tools/Makefile,v 1.5 2012/11/17 06:00:45 svnexp Exp $
#

PORTNAME=	port-authoring-tools
PORTVERSION=	1.0
CATEGORIES=	ports-mgmt
MASTER_SITES=	# empty
DISTFILES=	# empty
EXTRACT_ONLY=	# empty

MAINTAINER=	linimon@FreeBSD.org
COMMENT=	"meta-port" for tools to test and submit changes to ports

# note: portlint is brought in by porttools
RUN_DEPENDS=	\
		${LOCALBASE}/bin/fastest_cvsup:${PORTSDIR}/sysutils/fastest_cvsup \
		${LOCALBASE}/sbin/libchk:${PORTSDIR}/sysutils/libchk \
		${LOCALBASE}/bin/port:${PORTSDIR}/ports-mgmt/porttools

NO_BUILD=	yes

do-install:	# empty

.include <bsd.port.mk>
