# New ports collection makefile for:	Regexp-Common-Email-Address
# Date created:	   25 Apr 2008
# Whom:		   Sergey Skvortsov <skv@protey.ru>
#
# $FreeBSD: ports/textproc/p5-Regexp-Common-Email-Address/Makefile,v 1.5 2012/11/17 06:02:07 svnexp Exp $
#

PORTNAME=	Regexp-Common-Email-Address
PORTVERSION=	1.01
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Regex pattern for Email Addresses

BUILD_DEPENDS=	p5-Email-Address>=0:${PORTSDIR}/mail/p5-Email-Address \
		p5-Regexp-Common>=0:${PORTSDIR}/textproc/p5-Regexp-Common
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Regexp::Common::Email::Address.3

.include <bsd.port.mk>
