# New ports collection makefile for:	p5-DBIx-Class-Schema-PopulateMore
# Date created:		2012-01-19
# Whom:			Steve Wills <swills@FreeBSD.org>
#
# $FreeBSD: ports/databases/p5-DBIx-Class-Schema-PopulateMore/Makefile,v 1.7 2012/12/17 08:59:15 svnexp Exp $
#

PORTNAME=	DBIx-Class-Schema-PopulateMore
PORTVERSION=	0.17
PORTREVISION=	2
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	An enhanced populate method

BUILD_DEPENDS=	p5-Data-Visitor>=0.27:${PORTSDIR}/devel/p5-Data-Visitor \
		p5-DateTimeX-Easy>=0.089:${PORTSDIR}/devel/p5-DateTimeX-Easy \
		p5-List-MoreUtils>=0.30:${PORTSDIR}/lang/p5-List-MoreUtils \
		p5-Moose>=1.24:${PORTSDIR}/devel/p5-Moose
RUN_DEPENDS=	p5-Data-Visitor>=0.27:${PORTSDIR}/devel/p5-Data-Visitor \
		p5-DateTimeX-Easy>=0.089:${PORTSDIR}/devel/p5-DateTimeX-Easy \
		p5-List-MoreUtils>=0.30:${PORTSDIR}/lang/p5-List-MoreUtils \
		p5-Moose>=1.24:${PORTSDIR}/devel/p5-Moose

TEST_DEPENDS=	p5-DBD-SQLite>=0:${PORTSDIR}/databases/p5-DBD-SQLite \
		p5-DBIx-Class>=0.08127:${PORTSDIR}/databases/p5-DBIx-Class \
		p5-DateTime-Format-SQLite>=0.11:${PORTSDIR}/devel/p5-DateTime-Format-SQLite \
		p5-Path-Class>=0.23:${PORTSDIR}/devel/p5-Path-Class \
		p5-SQL-Translator>0.11007:${PORTSDIR}/databases/p5-SQL-Translator \
		p5-YAML-Tiny>=1.38:${PORTSDIR}/textproc/p5-YAML-Tiny

PERL_CONFIGURE=	yes

MAN3=	DBIx::Class::Schema::PopulateMore.3 \
	DBIx::Class::Schema::PopulateMore::Command.3 \
	DBIx::Class::Schema::PopulateMore::Inflator.3 \
	DBIx::Class::Schema::PopulateMore::Inflator::Date.3 \
	DBIx::Class::Schema::PopulateMore::Inflator::Env.3 \
	DBIx::Class::Schema::PopulateMore::Inflator::Find.3 \
	DBIx::Class::Schema::PopulateMore::Inflator::Index.3 \
	DBIx::Class::Schema::PopulateMore::Test::Schema.3 \
	DBIx::Class::Schema::PopulateMore::Test::Schema::Result.3 \
	DBIx::Class::Schema::PopulateMore::Test::Schema::Result::Company.3 \
	DBIx::Class::Schema::PopulateMore::Test::Schema::Result::CompanyPerson.3 \
	DBIx::Class::Schema::PopulateMore::Test::Schema::Result::EmploymentHistory.3 \
	DBIx::Class::Schema::PopulateMore::Test::Schema::Result::FriendList.3 \
	DBIx::Class::Schema::PopulateMore::Test::Schema::Result::Gender.3 \
	DBIx::Class::Schema::PopulateMore::Test::Schema::Result::Person.3 \
	DBIx::Class::Schema::PopulateMore::Test::Schema::ResultSet.3 \
	DBIx::Class::Schema::PopulateMore::Test::Schema::ResultSet::Person.3 \
	DBIx::Class::Schema::PopulateMore::Visitor.3

.include <bsd.port.pre.mk>

.if ${PERL_LEVEL} < 501400
TEST_DEPENDS+=	p5-Test-Simple>=0.98:${PORTSDIR}/devel/p5-Test-Simple
.endif

.include <bsd.port.post.mk>
