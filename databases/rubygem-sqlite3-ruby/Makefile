# New ports collection makefile for:	sqlite3-ruby
# Date created:		26 June 2003
# Whom:			Akinori MUSHA aka knu <knu@idaemons.org>
#
# $FreeBSD: ports/databases/rubygem-sqlite3-ruby/Makefile,v 1.26 2012/11/17 05:55:25 svnexp Exp $
#

PORTNAME=	sqlite3-ruby
PORTVERSION=	1.3.2
CATEGORIES=	databases rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Ruby interface to the SQLite DB engine version 3

LIB_DEPENDS=	sqlite3.8:${PORTSDIR}/databases/sqlite3
BUILD_DEPENDS=	swig:${PORTSDIR}/devel/swig13

CONFIGURE_ARGS+=--with-sqlite3-dir=${LOCALBASE}

GEM_NAME=	${DISTNAME}

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
