# New ports collection makefile for:	devel/p5-Term-RawInput
# Date created:				2011-02-06
# Whom:					Frederic Culot <culot@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-Term-RawInput/Makefile,v 1.3 2012/11/17 05:56:31 svnexp Exp $
#

PORTNAME=	Term-RawInput
PORTVERSION=	1.14
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:REEDFISH
PKGNAMEPREFIX=	p5-

MAINTAINER=	culot@FreeBSD.org
COMMENT=	Drop-in replacement for <STDIN> with handling of non-standard keys

BUILD_DEPENDS=	p5-Term-ReadKey>=0:${PORTSDIR}/devel/p5-Term-ReadKey
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Term::RawInput.3

.include <bsd.port.mk>
