# Created by: Cezary Morga <cm@therek.net>
# $FreeBSD: ports/devel/p5-File-ShareDir-PAR/Makefile,v 1.7 2012/11/17 05:56:16 svnexp Exp $

PORTNAME=	File-ShareDir-PAR
PORTVERSION=	0.06
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Perl5 File::ShareDir module with PAR support

BUILD_DEPENDS=	p5-Class-Inspector>=0:${PORTSDIR}/devel/p5-Class-Inspector \
		p5-File-ShareDir>=0:${PORTSDIR}/devel/p5-File-ShareDir \
		p5-PAR>=0:${PORTSDIR}/devel/p5-PAR \
		p5-Params-Util>=0:${PORTSDIR}/devel/p5-Params-Util
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	YES

MAN3=		File::ShareDir::PAR.3

.include <bsd.port.mk>
