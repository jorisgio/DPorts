# New ports collection makefile for:	databases/p5-DBIx-Class-UUIDColumns
# Date created:				03 August 2007
# Whom:					Zach Thompson <hideo@lastamericanempire.com>
#
# $FreeBSD: ports/databases/p5-DBIx-Class-UUIDColumns/Makefile,v 1.11 2012/11/17 05:55:15 svnexp Exp $
#

PORTNAME=	DBIx-Class-UUIDColumns
PORTVERSION=	0.02006
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	DBIx::Class::UUIDColumns - Implicit uuid columns

BUILD_DEPENDS=	p5-Class-Accessor-Grouped>=0:${PORTSDIR}/devel/p5-Class-Accessor-Grouped \
		p5-DBD-SQLite>=1.11:${PORTSDIR}/databases/p5-DBD-SQLite \
		p5-DBIx-Class>=0.07005:${PORTSDIR}/databases/p5-DBIx-Class \
		p5-Data-UUID>=0:${PORTSDIR}/devel/p5-Data-UUID
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	DBIx::Class::UUIDColumns.3 \
	DBIx::Class::UUIDColumns::UUIDMaker.3 \
	DBIx::Class::UUIDColumns::UUIDMaker::APR::UUID.3 \
	DBIx::Class::UUIDColumns::UUIDMaker::Data::GUID.3 \
	DBIx::Class::UUIDColumns::UUIDMaker::Data::UUID.3 \
	DBIx::Class::UUIDColumns::UUIDMaker::Data::Uniqid.3 \
	DBIx::Class::UUIDColumns::UUIDMaker::UUID.3 \
	DBIx::Class::UUIDColumns::UUIDMaker::UUID::Random.3 \
	DBIx::Class::UUIDColumns::UUIDMaker::Win32::Guidgen.3 \
	DBIx::Class::UUIDColumns::UUIDMaker::Win32API::GUID.3

.include <bsd.port.mk>
