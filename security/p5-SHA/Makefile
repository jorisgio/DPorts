# New ports collection makefile for:	p5-SHA
# Date created:				Sep 30, 2002
# Whom:	      				Jim Geovedi <jim@corebsd.or.id>
#
# $FreeBSD: ports/security/p5-SHA/Makefile,v 1.10 2012/11/17 06:01:13 svnexp Exp $
#

PORTNAME=	SHA
PORTVERSION=	2.01
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:GAAS
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl5 interface to the SHA1 algorithm

RUN_DEPENDS=	p5-Digest-SHA1>=0:${PORTSDIR}/security/p5-Digest-SHA1
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		SHA.3

.include <bsd.port.mk>
