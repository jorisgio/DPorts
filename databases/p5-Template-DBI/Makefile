# New ports collection makefile for:	databases/p5-Template-DBI
# Date created:				04 December 2006
# Whom:					Anton Berezin <tobez@FreeBSD.org>
#
# $FreeBSD: ports/databases/p5-Template-DBI/Makefile,v 1.7 2012/11/17 05:55:16 svnexp Exp $
#

PORTNAME=	Template-DBI
PORTVERSION=	2.65
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	tobez@FreeBSD.org
COMMENT=	Template::Plugin::DBI - Template interface to the DBI module

BUILD_DEPENDS=	p5-Template-Toolkit>=0:${PORTSDIR}/www/p5-Template-Toolkit \
		p5-DBI>=0:${PORTSDIR}/databases/p5-DBI \
		p5-SQL-Statement>=1.28:${PORTSDIR}/databases/p5-SQL-Statement \
		p5-MLDBM>=0:${PORTSDIR}/databases/p5-MLDBM
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	Template::DBI.3 \
	Template::Plugin::DBI.3

.include <bsd.port.mk>
