# New ports collection makefile for:	p5-Mail-Audit-Attach
# Date created:				28 May 2006
# Whom:					Aaron Dalton <aaron@FreeBSD.org>
#
# $FreeBSD: ports/mail/p5-Mail-Audit-Attach/Makefile,v 1.12 2012/11/17 05:59:08 svnexp Exp $
#

PORTNAME=	Mail-Audit-Attach
PORTVERSION=	0.96
CATEGORIES=	mail perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Mail::Audit plugin for attachment handling

RUN_DEPENDS=	p5-Mail-Audit>=2:${PORTSDIR}/mail/p5-Mail-Audit \
		p5-Mail-Tools>=1:${PORTSDIR}/mail/p5-Mail-Tools
BUILD_DEPENDS:=	${RUN_DEPENDS}

MAKE_JOBS_SAFE=  yes

MAN3=	Mail::Audit::Attach.3

PERL_CONFIGURE=	yes

.include <bsd.port.mk>
