# New ports collection makefile for:	Devel-RingBuffer
# Date created:	   28 August 2006
# Whom:		   Sergey Skvortsov <skv@protey.ru>
#
# $FreeBSD: ports/devel/p5-Devel-RingBuffer/Makefile,v 1.6 2012/11/17 05:56:14 svnexp Exp $
#

PORTNAME=	Devel-RingBuffer
PORTVERSION=	0.31
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Shared memory ring buffers for Perl scripts diagnosis/debug

RUN_DEPENDS=	p5-IPC-Mmap>=0:${PORTSDIR}/devel/p5-IPC-Mmap
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Devel::RingBuffer.3 Devel::RingBuffer::Ring.3

.include <bsd.port.mk>
