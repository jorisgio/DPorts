# New ports collection makefile for:	rubygem-delayed_job
# Date created:		2011-06-16
# Whom:			Ryan Steinmetz <rpsfa@rit.edu>
#
# $FreeBSD: ports/devel/rubygem-delayed_job/Makefile,v 1.8 2012/11/17 05:56:58 svnexp Exp $
#

PORTNAME=	delayed_job
PORTVERSION=	3.0.3
CATEGORIES=	devel rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Asynchronously executing longer tasks in the background

RUN_DEPENDS=	rubygem-activesupport>=3.0:${PORTSDIR}/devel/rubygem-activesupport \
		rubygem-daemons>=0:${PORTSDIR}/devel/rubygem-daemons

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
