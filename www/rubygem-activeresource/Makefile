# Ports collection makefile for:	rubygem-activeresource
# Date created:				30 Jan 2009
# Whom:					Cheng-Lung Sung <clsung@FreeBSD.org>
#
# $FreeBSD: ports/www/rubygem-activeresource/Makefile,v 1.23 2013/01/09 04:43:48 svnexp Exp $

PORTNAME=	activeresource
PORTVERSION=	3.2.11
CATEGORIES=	www rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	A coherent wrapper object-relational mapping for REST web services

RUN_DEPENDS=	rubygem-activesupport>=${PORTVERSION}:${PORTSDIR}/devel/rubygem-activesupport \
		rubygem-activemodel>=${PORTVERSION}:${PORTSDIR}/databases/rubygem-activemodel

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
