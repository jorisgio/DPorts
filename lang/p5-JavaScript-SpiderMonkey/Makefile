# New ports collection makefile for:	p5-JavaScript-SpiderMonkey
# Date created:				25 February 2005
# Whom:	      				kappa@freebsd.org.ua
#
# $FreeBSD: ports/lang/p5-JavaScript-SpiderMonkey/Makefile,v 1.16 2012/11/17 05:58:54 svnexp Exp $
#

PORTNAME=	JavaScript-SpiderMonkey
PORTVERSION=	0.21
PORTREVISION=	1
CATEGORIES=	lang perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Perl interface to Mozilla JavaScript implementation

LIB_DEPENDS=	js.1:${PORTSDIR}/lang/spidermonkey17

TEST_DEPENDS=	p5-Log-Log4perl>=0:${PORTSDIR}/devel/p5-Log-Log4perl

PERL_CONFIGURE=	yes

MAN3=		JavaScript::SpiderMonkey.3

post-patch:
	@${REINPLACE_CMD} -e 's|libjs.a|libjs.so|' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
