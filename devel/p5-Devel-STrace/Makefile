# New ports collection makefile for:	Devel-STrace
# Date created:	   28 August 2006
# Whom:		   Sergey Skvortsov <skv@protey.ru>
#
# $FreeBSD: ports/devel/p5-Devel-STrace/Makefile,v 1.6 2012/11/17 05:56:14 svnexp Exp $
#

PORTNAME=	Devel-STrace
PORTVERSION=	0.31
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	strace(1)-like runtime call trace for Perl applications

RUN_DEPENDS=	p5-Devel-RingBuffer>=0:${PORTSDIR}/devel/p5-Devel-RingBuffer \
		p5-Time-HiRes>=0:${PORTSDIR}/devel/p5-Time-HiRes
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Devel::STrace.3 Devel::STrace::Monitor.3

post-patch:
	@${REINPLACE_CMD} -e 's!\.pl!!g' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
