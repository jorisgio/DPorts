# Ports collection makefile for:	rubygem-simple_form
# Date created:				2011-06-16
# Whom:					rpsfa@rit.edu
#
# $FreeBSD: ports/devel/rubygem-simple_form/Makefile,v 1.8 2012/11/17 05:57:01 svnexp Exp $

PORTNAME=		simple_form
PORTVERSION=		2.0.2
CATEGORIES=		devel rubygems
MASTER_SITES=		RG

MAINTAINER=		ruby@FreeBSD.org
COMMENT=		Forms made easy

RUN_DEPENDS=		rubygem-activemodel>=3.0:${PORTSDIR}/databases/rubygem-activemodel \
			rubygem-actionpack>=3.0:${PORTSDIR}/www/rubygem-actionpack

USE_RUBY=		yes
USE_RUBYGEMS=		yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
