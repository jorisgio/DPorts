# New ports collection makefile for:	pgsphere
# Date created:		2010-02-09
# Whom:			Sunpoet Po-Chuan Hsieh <sunpoet@sunpoet.net>
#
# $FreeBSD: ports/databases/pgsphere/Makefile,v 1.9 2012/11/17 05:55:18 svnexp Exp $
#

PORTNAME=	pgsphere
PORTVERSION=	1.1.1
PORTREVISION=	3
CATEGORIES=	databases geography
MASTER_SITES=	http://pgfoundry.org/frs/download.php/2558/ \
		LOCAL/sunpoet

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Spherical data types, functions, and operators for PostgreSQL

DATADIR=	${PREFIX}/share/postgresql
DOCSDIR?=	${PREFIX}/share/doc/postgresql

USE_GMAKE=	yes
USE_LDCONFIG=	yes
USE_PGSQL=	yes

MAKE_ARGS+=	PG_CONFIG=${LOCALBASE}/bin/pg_config USE_PGXS=1 docdir=${DOCSDIR}
.if defined(NOPORTDOCS)
MAKE_ARGS+=	DOCS=""
.endif

PLIST_FILES=	lib/postgresql/pg_sphere.so \
		%%DATADIR%%/contrib/pg_sphere.sql
PLIST_DIRSTRY=	%%DATADIR%%/contrib

.if !defined(NOPORTDOCS)
PLIST_FILES+=	%%DOCSDIR%%/contrib/README.pg_sphere \
		%%DOCSDIR%%/contrib/COPYRIGHT.pg_sphere
PLIST_DIRS+=	%%DOCSDIR%%/contrib
.endif

#regression-test:
#	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${GMAKE} ${MAKE_ARGS} installcheck

.include <bsd.port.mk>
