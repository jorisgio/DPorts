# Created by:			Henk van Oers <hvo.pm@xs4all.nl>
# $FreeBSD: ports/www/p5-Mojolicious-Plugin-Database/Makefile,v 1.9 2012/12/23 12:44:14 svnexp Exp $

PORTNAME=	Mojolicious-Plugin-Database
PORTVERSION=	1.08
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Handling of DBI based connections in Mojolicious

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-DBI>=0:${PORTSDIR}/databases/p5-DBI \
		p5-Mojolicious>=1:${PORTSDIR}/www/p5-Mojolicious
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-DBD-SQLite>=0:${PORTSDIR}/databases/p5-DBD-SQLite \
		p5-Try-Tiny>=0:${PORTSDIR}/lang/p5-Try-Tiny

PERL_CONFIGURE=	yes

MAN3=		Mojolicious::Plugin::Database.3 \
		Mojolicious::Plugin::README.3

.include <bsd.port.mk>
