# New ports collection makefile for:	p5-CGI-Ex
# Date created:		2006-07-20
# Whom:			Gea-Suan Lin <gslin@gslin.org>
#
# $FreeBSD: ports/www/p5-CGI-Ex/Makefile,v 1.24 2012/11/17 06:02:45 svnexp Exp $
#

PORTNAME=	CGI-Ex
PORTVERSION=	2.38
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	CGI utility suite - makes powerful application writing fun and easy

BUILD_DEPENDS=	p5-Template-Alloy>=1.004:${PORTSDIR}/www/p5-Template-Alloy
RUN_DEPENDS=	p5-Template-Alloy>=1.004:${PORTSDIR}/www/p5-Template-Alloy

PERL_CONFIGURE=	yes

MAN3=		CGI::Ex.3 CGI::Ex::App.3 CGI::Ex::App::Constants.3 \
		CGI::Ex::Auth.3 CGI::Ex::Conf.3 \
		CGI::Ex::Die.3 CGI::Ex::Dump.3 CGI::Ex::Fill.3 \
		CGI::Ex::JSONDump.3 CGI::Ex::Template.3 CGI::Ex::Validate.3

PORTEXAMPLES=	*

post-install:
.if !defined(NOPORTEXAMPLES)
	${MKDIR} ${EXAMPLESDIR}/
.for i in app benchmark devel
	${MKDIR} ${EXAMPLESDIR}/${i}
.endfor
	${CP} -R ${WRKSRC}/samples/* ${EXAMPLESDIR}/
.endif

.include <bsd.port.mk>
