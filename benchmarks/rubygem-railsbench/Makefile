# Ports collection makefile for:	rubygem-railsbench
# Date created:				02 April 2007
# Whom:					Alexander Logvinov <ports@logvinov.com>
#
# $FreeBSD: ports/benchmarks/rubygem-railsbench/Makefile,v 1.10 2012/11/17 05:54:50 svnexp Exp $

PORTNAME=	railsbench
PORTVERSION=	0.9.8
CATEGORIES=	benchmarks rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Scripts designed for benchmarking of Rails applications

RUN_DEPENDS=	rubygem-hoe>=1.2.0:${PORTSDIR}/devel/rubygem-hoe

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes
PLIST_FILES=	bin/railsbench

OPTIONS=	GRUFF	"Plotting of perf data support using gruff"	off
OPTIONSFILE=	${PORT_DBDIR}/rubygem-${PORTNAME}/options

.include <bsd.port.pre.mk>

.if defined(WITH_GRUFF)
RUN_DEPENDS+=	rubygem-gruff>=0.2.8:${PORTSDIR}/graphics/rubygem-gruff
.endif

.include <bsd.port.post.mk>
