# Created by: mat
# $FreeBSD: ports/devel/p5-DateTime-Incomplete/Makefile,v 1.13 2012/11/17 05:56:12 svnexp Exp $

PORTNAME=	DateTime-Incomplete
PORTVERSION=	0.07.00
DISTVERSION=	${PORTVERSION:C/\.(..)$//}
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	An incomplete DateTime, like January 5

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-DateTime>=0:${PORTSDIR}/devel/p5-DateTime \
		p5-DateTime-Set>=0.14:${PORTSDIR}/devel/p5-DateTime-Set \
		p5-DateTime-Event-Recurrence>=0:${PORTSDIR}/devel/p5-DateTime-Event-Recurrence
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		DateTime::Incomplete.3

.if !defined(NOPORTDOCS)
PORTDOCS=	Changes LICENSE MANIFEST README TODO

post-install:
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${DOCSDIR}
	@${ECHO_MSG} "===> Documentation installed in ${DOCSDIR}."
.endif

.include <bsd.port.mk>
