# New ports collection makefile for:    p5-MLDBM
# Date created:                         December 3 1997
# Whom:                                 ache@freebsd.org
#
# $FreeBSD: ports/databases/p5-MLDBM/Makefile,v 1.29 2012/11/17 05:55:16 svnexp Exp $
#

PORTNAME=	MLDBM
PORTVERSION=	2.04
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Store multi-level hash structure in single level tied hash

BUILD_DEPENDS=	p5-FreezeThaw>=0:${PORTSDIR}/devel/p5-FreezeThaw
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		MLDBM.3

.include <bsd.port.mk>
