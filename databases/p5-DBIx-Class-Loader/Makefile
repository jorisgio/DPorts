# New ports collection makefile for:	databases/p5-DBIx-Class-Loader
# Date created:				16 Nov 2005
# Whom:					Lars Balker Rasmussen <lbr@FreeBSD.org>
#
# $FreeBSD: ports/databases/p5-DBIx-Class-Loader/Makefile,v 1.20 2012/11/17 05:55:15 svnexp Exp $
#

PORTNAME=	DBIx-Class-Loader
PORTVERSION=	0.21
PORTREVISION=	1
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Dynamic definition of DBIx::Class sub classes

BUILD_DEPENDS=	p5-DBI>=1.3:${PORTSDIR}/databases/p5-DBI \
		p5-DBIx-Class>=0.04001:${PORTSDIR}/databases/p5-DBIx-Class \
		p5-Lingua-EN-Inflect>=0:${PORTSDIR}/textproc/p5-Lingua-EN-Inflect \
		p5-UNIVERSAL-require>=0.10:${PORTSDIR}/devel/p5-UNIVERSAL-require
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-DBD-SQLite>=0:${PORTSDIR}/databases/p5-DBD-SQLite

PERL_CONFIGURE=	yes

MAN3=	DBIx::Class::Loader.3 \
	DBIx::Class::Loader::DB2.3 \
	DBIx::Class::Loader::Generic.3 \
	DBIx::Class::Loader::Pg.3 \
	DBIx::Class::Loader::SQLite.3 \
	DBIx::Class::Loader::Writing.3 \
	DBIx::Class::Loader::mysql.3

.include <bsd.port.mk>
