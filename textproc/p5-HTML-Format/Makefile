# New ports collection makefile for:	p5-HTML-Format
# Date created:				25 April 2001
# Whom:					Pete Fritchman <petef@databits.net>
#
# $FreeBSD: ports/textproc/p5-HTML-Format/Makefile,v 1.20 2012/11/17 06:02:04 svnexp Exp $
#

PORTNAME=	HTML-Format
PORTVERSION=	2.10
PORTREVISION=	1
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	A module to format HTML to text or PS

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Font-AFM>=0:${PORTSDIR}/x11-fonts/p5-Font-AFM \
		p5-HTML-Tree>=3.15:${PORTSDIR}/www/p5-HTML-Tree
RUN_DEPENDS=	p5-Font-AFM>=0:${PORTSDIR}/x11-fonts/p5-Font-AFM \
		p5-HTML-Tree>=3.15:${PORTSDIR}/www/p5-HTML-Tree
TEST_DEPENDS=	p5-File-Slurp>=0:${PORTSDIR}/devel/p5-File-Slurp

PERL_MODBUILD=	yes
INSTALL_TARGET=	pure_install

MAN3=		HTML::FormatPS.3 \
		HTML::FormatRTF.3 \
		HTML::FormatText.3 \
		HTML::Formatter.3

.include <bsd.port.pre.mk>

.if ${PERL_LEVEL} < 501400
TEST_DEPENDS+=	p5-Test-Simple>=0.98:${PORTSDIR}/devel/p5-Test-Simple
.endif

.include <bsd.port.post.mk>
