# New ports collection makefile for:	p5-Proc-WaitStat
# Date created:				Tue 02 Mar 2010
# Whom:					Alexey V. Degtyarev <alexey@renatasystems.org>
#
# $FreeBSD: ports/devel/p5-Proc-WaitStat/Makefile,v 1.3 2012/11/17 05:56:27 svnexp Exp $
#

PORTNAME=	Proc-WaitStat
PORTVERSION=	1.00
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	alexey@renatasystems.org
COMMENT=	Interpret and act on wait() status values

BUILD_DEPENDS=	p5-IPC-Signal>=0:${PORTSDIR}/devel/p5-IPC-Signal
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Proc::WaitStat.3

.include <bsd.port.mk>
