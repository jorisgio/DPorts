# New ports collection makefile for:	p5-ParseTemplate
# Date created:				03 August 2010
# Whom:					Frederic Culot <frederic@culot.org>
#
# $FreeBSD: ports/devel/p5-ParseTemplate/Makefile,v 1.6 2012/11/17 05:56:26 svnexp Exp $
#

PORTNAME=	ParseTemplate
PORTVERSION=	3.08
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN/Parse
PKGNAMEPREFIX=	p5-

MAINTAINER=	culot@FreeBSD.org
COMMENT=	Processor for templates containing Perl expressions

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

PERL_CONFIGURE=	yes

MAN3=		Parse::Template.3

.include <bsd.port.pre.mk>

.if ${PERL_LEVEL} < 501400
TEST_DEPENDS+=	p5-Test-Simple>=0.96:${PORTSDIR}/devel/p5-Test-Simple
.endif

.include <bsd.port.post.mk>
