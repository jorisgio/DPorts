# New ports collection makefile for:	p5-Class-AlzaboWrapper
# Date created:				13 Oct 2004
# Whom:	      				mat
#
# $FreeBSD: ports/devel/p5-Class-AlzaboWrapper/Makefile,v 1.11 2012/11/17 05:56:06 svnexp Exp $
#

PORTNAME=	Class-AlzaboWrapper
PORTVERSION=	0.14
CATEGORIES=	devel databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Higher level wrapper around Alzabo Row and Table objects

BUILD_DEPENDS=	p5-Params-Validate>=0:${PORTSDIR}/devel/p5-Params-Validate \
		p5-Exception-Class>=0:${PORTSDIR}/devel/p5-Exception-Class \
		p5-Alzabo>=0:${PORTSDIR}/devel/p5-Alzabo
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_MODBUILD=	yes

MAN3=		Class::AlzaboWrapper.3 Class::AlzaboWrapper::Cursor.3

.if !defined(NOPORTDOCS)
PORTDOCS=	Changes README

post-install:
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${DOCSDIR}
	@${ECHO_MSG} "===> Documentation installed in ${DOCSDIR}."
.endif

.include <bsd.port.mk>
