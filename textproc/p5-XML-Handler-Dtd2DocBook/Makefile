# New ports collection makefile for:	XML-Handler-Dtd2DocBook
# Date created:	   			2006/07/11
# Whom:		   			chinsan <chinsan.tw@gmail.com>
#
# $FreeBSD: ports/textproc/p5-XML-Handler-Dtd2DocBook/Makefile,v 1.8 2012/11/17 06:02:12 svnexp Exp $
#

PORTNAME=	XML-Handler-Dtd2DocBook
PORTVERSION=	0.41
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Generate a DocBook documentation from a DTD

BUILD_DEPENDS=	p5-libxml>=0:${PORTSDIR}/textproc/p5-libxml \
		p5-XML-Handler-Dtd2Html>=0.41:${PORTSDIR}/textproc/p5-XML-Handler-Dtd2Html
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN1=		dtd2db.pl.1
MAN3=		XML::Handler::Dtd2DocBook.3

.include <bsd.port.mk>
