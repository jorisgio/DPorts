# New ports collection makefile for:	databases/memcacheq
# Date created:		2010-12-23
# Whom:			Mikhail T. <m.tsatsenko@gmail.com>
#
# $FreeBSD: ports/databases/memcacheq/Makefile,v 1.6 2012/11/17 05:55:10 svnexp Exp $
#

PORTNAME=	memcacheq
PORTVERSION=	0.2.0
PORTREVISION=	2
CATEGORIES=	databases
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE} \
		${MASTER_SITE_GENTOO}
MASTER_SITE_SUBDIR=	distfiles

MAINTAINER=	m.tsatsenko@gmail.com
COMMENT=	Simple queue service over Memcache

LICENSE=	BSD

LIB_DEPENDS=	event-1.4:${PORTSDIR}/devel/libevent

USE_CSTD=	gnu89
CFLAGS+=	-I"${BDB_INCLUDE_DIR}"
LDFLAGS+=	-l"${BDB_LIB_NAME}" -L"${LOCALBASE}/lib"

USE_RC_SUBR=	memcacheq
USE_BDB=	5
GNU_CONFIGURE=	YES
CONFIGURE_ARGS=	--with-libevent=${LOCALBASE} --with-bdb=${LOCALBASE} --enable-threads

PORTDOCS=	README

MCQDIR?=	/var/db/memcacheq
PLIST_SUB=	MCQDIR=${MCQDIR}

.include <bsd.port.pre.mk>

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif
	${MKDIR} ${MCQDIR} || ${TRUE}
	${CHOWN} nobody:nobody ${MCQDIR}

.include <bsd.port.post.mk>
