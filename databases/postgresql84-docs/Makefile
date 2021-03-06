# New ports collection makefile for:	PostgreSQL docs
# Date created:		August 26, 2002
# Whom:			Palle Girgensohn <girgen@pingpong.net>
#
# $FreeBSD: ports/databases/postgresql84-docs/Makefile,v 1.2 2012/11/17 05:55:20 svnexp Exp $
#

PORTNAME=	postgresql
PORTREVISION=	0
PKGNAMESUFFIX=	-docs

MAINTAINER=	pgsql@FreeBSD.org
COMMENT=	The PostgreSQL documentation set

MASTERDIR=	${.CURDIR}/../../databases/postgresql${WANT_PGSQL_VER}-server

USE_PGSQL=	yes
WANT_PGSQL_VER?=84

NO_BUILD=	YES
SLAVE_ONLY=	YES
PATCHDIR=	mustnotexist

PGDOCSDIR?=	${DOCSDIR}/release-${PGSQL_VER}

do-install:
	@ $(MKDIR) ${PGDOCSDIR}; \
	${GZIP_CMD} -dc ${WRKSRC}/doc/postgres.tar.gz | \
	( cd ${PGDOCSDIR} && $(TAR) xf - )

post-install:
	@ ${TAR} ztf ${WRKSRC}/doc/postgres.tar.gz | ${GREP} -v /$$ | \
	  ${SED} "s,^,${PGDOCSDIR:S,^${PREFIX}/,,}/," >> ${TMPPLIST} ;\
	  ${TAR} ztf ${WRKSRC}/doc/postgres.tar.gz | ${GREP} /$$ | \
	  ${SED} "s,^,@dirrm\ ," >> ${TMPPLIST} ;\
	  ${ECHO} @dirrm ${PGDOCSDIR:S,^${PREFIX}/,,} >> ${TMPPLIST} ;\
	  ${ECHO} "@unexec rmdir %D/${DOCSDIR:S,^${PREFIX}/,,} 2> /dev/null || true" >> ${TMPPLIST}

.include "${MASTERDIR}/Makefile"
