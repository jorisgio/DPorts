# Created by: Alan Snelson <Alan@Wave2.org>
# $FreeBSD: ports/databases/p5-DBIx-VersionedDDL/Makefile,v 1.8 2012/12/08 09:49:37 svnexp Exp $

PORTNAME=	DBIx-VersionedDDL
PORTVERSION=	0.17
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	Alan@Wave2.org
COMMENT=	Upgrade and downgrade database schemas to a specified version

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-DBD-SQLite>=1.31:${PORTSDIR}/databases/p5-DBD-SQLite \
		p5-Moose>=1.21:${PORTSDIR}/devel/p5-Moose \
		p5-Text-CSV>=1.20:${PORTSDIR}/textproc/p5-Text-CSV \
		p5-MooseX-Attribute-ENV>=0.01:${PORTSDIR}/devel/p5-MooseX-Attribute-ENV \
		p5-MooseX-Object-Pluggable>=0:${PORTSDIR}/devel/p5-MooseX-Object-Pluggable
RUN_DEPENDS=	p5-DBD-SQLite>=1.31:${PORTSDIR}/databases/p5-DBD-SQLite \
		p5-Moose>=1.21:${PORTSDIR}/devel/p5-Moose \
		p5-Text-CSV>=1.20:${PORTSDIR}/textproc/p5-Text-CSV \
		p5-MooseX-Attribute-ENV>=0.01:${PORTSDIR}/devel/p5-MooseX-Attribute-ENV \
		p5-MooseX-Object-Pluggable>=0:${PORTSDIR}/devel/p5-MooseX-Object-Pluggable

PERL_CONFIGURE=	yes

MAN1=	migrate_schema.1
MAN3=	DBIx::VersionedDDL.3 \
	DBIx::VersionedDDL::Plugin::DefaultScriptProcessor.3

.include <bsd.port.mk>
