# New ports collection makefile for:	DBIx-Class-DigestColumns
# Date created:		23 Aug 2006
# Whom:			Lars Balker Rasmussen <lbr@FreeBSD.org>
#
# $FreeBSD: ports/databases/p5-DBIx-Class-DigestColumns/Makefile,v 1.11 2012/11/17 05:55:14 svnexp Exp $
#

PORTNAME=	DBIx-Class-DigestColumns
PORTVERSION=	0.06000
PORTREVISION=	1
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Automatic digest columns

RUN_DEPENDS=	p5-DBIx-Class>=0.06002:${PORTSDIR}/databases/p5-DBIx-Class
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_MODBUILD=	yes

MAN3=	DBIx::Class::DigestColumns.3

post-extract:
	@${PERL} -i.bak -ne 'print unless /^\s*build_requires/ .. /},$$/ or /^\s*recommends/ .. /},$$/ ' ${WRKSRC}/Build.PL

.include <bsd.port.mk>
