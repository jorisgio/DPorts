# ex:ts=8
# Ports collection makefile for:	WebService::YouTube
# Date created:			Jan 25, 2007
# Whom:				ijliao
#
# $FreeBSD: ports/www/p5-WebService-YouTube/Makefile,v 1.7 2012/11/17 06:02:56 svnexp Exp $
#

PORTNAME=	WebService-YouTube
PORTVERSION=	1.0.3
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl interface to YouTube

RUN_DEPENDS=	p5-Class-Accessor>0:${PORTSDIR}/devel/p5-Class-Accessor \
		p5-libwww>0:${PORTSDIR}/www/p5-libwww \
		p5-URI>0:${PORTSDIR}/net/p5-URI \
		p5-XML-Simple>0:${PORTSDIR}/textproc/p5-XML-Simple \
		p5-version>0:${PORTSDIR}/devel/p5-version
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	WebService::YouTube.3 \
	WebService::YouTube::Feeds.3 \
	WebService::YouTube::User.3 \
	WebService::YouTube::Util.3 \
	WebService::YouTube::Video.3 \
	WebService::YouTube::Videos.3

.include <bsd.port.mk>
