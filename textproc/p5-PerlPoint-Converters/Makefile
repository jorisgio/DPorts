# New ports collection makefile for:	p5-PerlPoint-Converters
# Date created:		8 Jun 2004
# Whom:	      		mat
#
# $FreeBSD: ports/textproc/p5-PerlPoint-Converters/Makefile,v 1.12 2012/11/17 06:02:06 svnexp Exp $
#

PORTNAME=	PerlPoint-Converters
PORTVERSION=	1.02.05
DISTVERSION=	${PORTVERSION:C/\.(..)$/\1/}
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Convert PerlPoint docs into various formats

BUILD_DEPENDS=	p5-PerlPoint-Package>=0:${PORTSDIR}/textproc/p5-PerlPoint-Package \
		p5-Getopt-ArgvFile>=0:${PORTSDIR}/devel/p5-Getopt-ArgvFile
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	YES

MAN1=		pp2html.1 pp2latex.1
MAN3=		Bundle::PerlPoint.3 \
		PerlPoint::Converters.3 \
		PerlPoint::Tags::HTML.3 \
		PerlPoint::Tags::LaTeX.3

.if !defined(NOPORTDOCS)
PORTDOCS=	# suck all DOCSDIR

post-patch:
	@cd ${WRKSRC}; ${CP} -R pp2html_styles images doc
	@${PERL} -pi -e 's!../(images|pp2html_styles)!$$1!g' ${WRKSRC}/doc/*.cfg

post-build:
	@cd ${WRKSRC}/doc; make

post-install:
	@${MKDIR} ${DOCSDIR}
	@cd ${WRKSRC}/doc; ${FIND} . | ${CPIO} -padm ${DOCSDIR}
.endif

.include <bsd.port.mk>
