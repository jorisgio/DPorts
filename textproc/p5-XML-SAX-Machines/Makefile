# New ports collection makefile for:	XML::SAX::Machines
# Date created:		28 Jan 2002
# Whom:			Sergey Skvortsov <skv@protey.ru>
#
# $FreeBSD: ports/textproc/p5-XML-SAX-Machines/Makefile,v 1.18 2012/11/17 06:02:13 svnexp Exp $
#

PORTNAME=	XML-SAX-Machines
PORTVERSION=	0.42
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Manage collections of SAX processors

BUILD_DEPENDS=	p5-XML-SAX>=0:${PORTSDIR}/textproc/p5-XML-SAX \
		p5-XML-SAX-Writer>=0:${PORTSDIR}/textproc/p5-XML-SAX-Writer
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		XML::Filter::Distributor.3 XML::Filter::DocSplitter.3 \
		XML::Filter::Merger.3 XML::Filter::Tee.3 XML::SAX::ByRecord.3 \
		XML::SAX::EventMethodMaker.3 XML::SAX::Machine.3 \
		XML::SAX::Machines.3 XML::SAX::Machines::ConfigHelper.3 \
		XML::SAX::Manifold.3 XML::SAX::Pipeline.3 XML::SAX::Tap.3

regression-test: build
	${MAKE} -C ${WRKSRC} test

post-install:
.ifndef(NOPORTEXAMPLES)
		@${ECHO_MSG} "===>   Installing examples for ${PKGNAME}"
		@${MKDIR} ${EXAMPLESDIR}
		${INSTALL_SCRIPT} ${WRKSRC}/examples/* ${EXAMPLESDIR}
.endif

.include <bsd.port.mk>
