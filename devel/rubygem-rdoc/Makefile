# New ports collection makefile for:	Ruby rdoc
# Date created:		June 23, 2011
# Whom:			Philip M. Gollucci <pgollucci@p6m7g8.com>
#
# $FreeBSD: ports/devel/rubygem-rdoc/Makefile,v 1.12 2012/11/17 05:57:00 svnexp Exp $
#

PORTNAME=	rdoc
PORTVERSION=	3.12
CATEGORIES=	devel rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	RDoc produces HTML and command-line documentation for Ruby projects

BUILD_DEPENDS=	rubygem-json>=1.4:${PORTSDIR}/devel/rubygem-json
RUN_DEPENDS=	rubygem-json>=1.4:${PORTSDIR}/devel/rubygem-json

USE_RUBY=	yes
USE_RUBYGEMS=	yes
USE_RUBY_FEATURES=	iconv
RUBYGEM_AUTOPLIST=	yes

GEM_ENV+=	RUBYLIB=${PREFIX}/${GEM_LIB_DIR}/lib

.include <bsd.port.pre.mk>

pre-install:
RUBYGEM_ARGS+=	--bindir ${WRKDIR}

.include <bsd.port.post.mk>
