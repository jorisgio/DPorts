# Ports collection makefile for:	rubygem-merb-core
# Date created:				13 Dec 2011
# Whom:					Scott Sanders <scott@jssjr.com>
#
# $FreeBSD: ports/www/rubygem-merb-core/Makefile,v 1.2 2012/11/17 06:03:04 svnexp Exp $
#

PORTNAME=	merb-core
PORTVERSION=	1.1.3
CATEGORIES=	www rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Merb. Pocket rocket web framework

RUN_DEPENDS=	rubygem-bundler>=0:${PORTSDIR}/sysutils/rubygem-bundler \
		rubygem-erubis>=2.6.2:${PORTSDIR}/www/rubygem-erubis \
		rubygem-extlib>=0.9.13:${PORTSDIR}/devel/rubygem-extlib \
		rubygem-mime-types>=1.16:${PORTSDIR}/misc/rubygem-mime-types \
		rubygem-rack>=0:${PORTSDIR}/www/rubygem-rack \
		rubygem-rake>=0:${PORTSDIR}/devel/rubygem-rake

USE_RUBY=		yes
USE_RUBYGEMS=		yes
RUBYGEM_AUTOPLIST=	yes

PLIST_FILES=	bin/merb

.include <bsd.port.mk>
