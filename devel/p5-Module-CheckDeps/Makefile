# New ports collection makefile for:	p5-Module-CheckDeps
# Date created:		2010-07-02
# Whom:			Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-Module-CheckDeps/Makefile,v 1.2 2012/11/17 05:56:21 svnexp Exp $
#

PORTNAME=	Module-CheckDeps
PORTVERSION=	0.08
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:ALEXBIO
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Very simple dependencies checker for Perl code

RUN_DEPENDS=	p5-PPI>=0:${PORTSDIR}/textproc/p5-PPI

PERL_CONFIGURE=	yes

MAN1=		checkdeps.1
MAN3=		Module::CheckDeps.3

.include <bsd.port.mk>
