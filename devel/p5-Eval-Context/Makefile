# New ports collection makefile for:	p5-Eval-Context
# Date Created:				22 Apr 2008
# Whom:					Emanuel Haupt <ehaupt@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-Eval-Context/Makefile,v 1.10 2012/11/17 05:56:14 svnexp Exp $
#

PORTNAME=	Eval-Context
PORTVERSION=	0.09.11
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:NKH
PKGNAMEPREFIX=	p5-

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	Evaluate Perl code in context wrapper

BUILD_DEPENDS=	p5-Test-Output>=0:${PORTSDIR}/devel/p5-Test-Output \
		p5-Package-Generator>=0:${PORTSDIR}/devel/p5-Package-Generator \
		p5-Test-Spelling>=0:${PORTSDIR}/devel/p5-Test-Spelling \
		p5-Test-Block>=0:${PORTSDIR}/devel/p5-Test-Block \
		p5-Test-NoWarnings>=0:${PORTSDIR}/devel/p5-Test-NoWarnings \
		p5-Test-Distribution>=0:${PORTSDIR}/devel/p5-Test-Distribution \
		p5-Test-Warn>=0:${PORTSDIR}/devel/p5-Test-Warn \
		p5-Test-Pod>=0:${PORTSDIR}/devel/p5-Test-Pod \
		p5-Test-Dependencies>=0:${PORTSDIR}/devel/p5-Test-Dependencies \
		p5-version>=0:${PORTSDIR}/devel/p5-version \
		p5-Test-Strict>=0:${PORTSDIR}/devel/p5-Test-Strict \
		p5-Directory-Scratch-Structured>=0:${PORTSDIR}/devel/p5-Directory-Scratch-Structured \
		p5-Data-TreeDumper>=0:${PORTSDIR}/devel/p5-Data-TreeDumper \
		p5-Data-Compare>=0:${PORTSDIR}/devel/p5-Data-Compare \
		p5-File-Slurp>=0:${PORTSDIR}/devel/p5-File-Slurp
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_MODBUILD=	yes
MAKE_JOBS_SAFE=	yes

MAN3=		Eval::Context.3

.include <bsd.port.mk>
