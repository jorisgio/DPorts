# New ports collection makefile for:	p5-ODF-lpOD
# Date created:				March 11, 2011
# Whom:					Wen Heping <wenheping@gmail.com>
#
# $FreeBSD: ports/textproc/p5-ODF-lpOD/Makefile,v 1.7 2012/11/17 06:02:06 svnexp Exp $
#

PORTNAME=	ODF-lpOD
PORTVERSION=	1.121
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	An OpenDocument management interface

BUILD_DEPENDS=	p5-Archive-Zip>=1.30:${PORTSDIR}/archivers/p5-Archive-Zip \
		p5-XML-Twig>=3.37:${PORTSDIR}/textproc/p5-XML-Twig \
		p5-File-Type>=0:${PORTSDIR}/devel/p5-File-Type \
		p5-Image-Size>=0:${PORTSDIR}/graphics/p5-Image-Size \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww \
		p5-File-Slurp>=0:${PORTSDIR}/devel/p5-File-Slurp
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN1=		lpod_test.1
MAN3=		ODF::lpOD.3 \
		ODF::lpOD::Common.3 \
		ODF::lpOD::Document.3 \
		ODF::lpOD::Element.3 \
		ODF::lpOD::StructuredContainer.3 \
		ODF::lpOD::Style.3 \
		ODF::lpOD::Table.3 \
		ODF::lpOD::TextElement.3 \
		ODF::lpOD::Tutorial.3

.include <bsd.port.mk>
