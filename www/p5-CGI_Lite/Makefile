# New ports collection makefile for:	p5-CGI_Lite
# Date created:				September 30th 1996
# Whom:	      				James FitzGibbon <jfitz@FreeBSD.org>
#
# $FreeBSD: ports/www/p5-CGI_Lite/Makefile,v 1.27 2012/11/17 06:02:46 svnexp Exp $
#

PORTNAME=	CGI-Lite
PORTVERSION=	2.02
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	Process and decode WWW forms and cookies

PERL_CONFIGURE=	yes

MAN3=		CGI::Lite.3

DOCS=		CHANGES README TODO
EXAMPLES=	cookies get_post print upload file post reference

post-install:
.ifndef(NOPORTDOCS)
	@${ECHO_MSG} "===>   Installing docs for ${PKGNAME}"
	${MKDIR} ${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${DOCSDIR}
	@${ECHO_MSG} "===>   Installing examples for ${PKGNAME}"
	${MKDIR} ${EXAMPLESDIR}
	cd ${WRKSRC}/examples && ${INSTALL_SCRIPT} ${EXAMPLES} ${EXAMPLESDIR}
.endif

.include <bsd.port.mk>
