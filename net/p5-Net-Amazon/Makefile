# New ports collection makefile for:	Net-Amazon
# Date created:	   			Oct 23 2003 \
# Whom:		   			clsung@dragon2.net
#
# $FreeBSD: ports/net/p5-Net-Amazon/Makefile,v 1.41 2012/12/17 15:43:22 svnexp Exp $
#

PORTNAME=	Net-Amazon
PORTVERSION=	0.61
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Framework for accessing amazon.com via SOAP and XML/HTTP

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

RUN_DEPENDS=	p5-libwww>=0:${PORTSDIR}/www/p5-libwww \
		p5-URI>=0:${PORTSDIR}/net/p5-URI \
		p5-XML-Simple>=0:${PORTSDIR}/textproc/p5-XML-Simple \
		p5-Log-Log4perl>=0:${PORTSDIR}/devel/p5-Log-Log4perl
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

.include "Makefile.man"

.include <bsd.port.mk>
