# New ports collection makefile for:	devel/p5-Hash-Merge-Simple
# Date created:				29 Mar 2009
# Whom:					Lars Balker Rasmussen <lbr@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-Hash-Merge-Simple/Makefile,v 1.7 2012/11/17 05:56:18 svnexp Exp $
#

PORTNAME=	Hash-Merge-Simple
PORTVERSION=	0.051
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Recursively merge two or more hashes, simply

RUN_DEPENDS=	p5-Clone>=0:${PORTSDIR}/devel/p5-Clone
BUILD_DEPENDS:=	${RUN_DEPENDS}
BUILD_DEPENDS+=	p5-Test-Deep>=0:${PORTSDIR}/devel/p5-Test-Deep \
		p5-Test-Most>=0:${PORTSDIR}/devel/p5-Test-Most

MAN3=	Hash::Merge::Simple.3

PERL_CONFIGURE=	yes

.include <bsd.port.mk>
