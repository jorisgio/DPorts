# New ports collection makefile for:	p5-XML-Smart
# Date created:				October 10th 2000
# Whom:	      				Cheng-Lung Sung <clsung@dragon2.net>
#
# $FreeBSD: ports/textproc/p5-XML-Smart/Makefile,v 1.25 2012/11/17 06:02:14 svnexp Exp $

PORTNAME=	XML-Smart
PORTVERSION=	1.6.9
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	A Smart, easy and powerful way to access/create XML files/data

BUILD_DEPENDS=	p5-Object-MultiType>=0:${PORTSDIR}/devel/p5-Object-MultiType \
		p5-XML-XPath>=0:${PORTSDIR}/textproc/p5-XML-XPath
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	YES

MAN3=		XML::Smart.3 XML::Smart::DTD.3 XML::Smart::FAQ.3 XML::Smart::Tutorial.3

.if !defined(NOPORTDOCS)
PORTDOCS=	Changes README

post-install:
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${DOCSDIR}
	@${ECHO_MSG} "===> Documentation installed in ${DOCSDIR}."
.endif

.include <bsd.port.mk>
