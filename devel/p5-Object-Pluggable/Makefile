# New ports collection makefile for:	p5-Object-Pluggable
# Date created:	   2010-09-29
# Whom:		   Jase Thew <freebsd@beardz.net>
#
# $FreeBSD: ports/devel/p5-Object-Pluggable/Makefile,v 1.7 2012/11/17 05:56:24 svnexp Exp $
#

PORTNAME=	Object-Pluggable
PORTVERSION=	1.29
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:HINRIK
PKGNAMEPREFIX=	p5-

MAINTAINER=	jase@FreeBSD.org
COMMENT=	A base class for creating plugin-enabled objects

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Task-Weaken>=0:${PORTSDIR}/devel/p5-Task-Weaken
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Object::Pluggable.3 \
		Object::Pluggable::Constants.3 \
		Object::Pluggable::Pipeline.3

.include <bsd.port.pre.mk>

.if ${PERL_LEVEL} < 501001
BUILD_DEPENDS+=	p5-Pod-Parser>=1.36:${PORTSDIR}/textproc/p5-Pod-Parser
.endif

post-install:
.ifndef(NOPORTEXAMPLES)
	@${ECHO_MSG} "===>   Installing examples for ${PKGNAME}"
	@${MKDIR} ${EXAMPLESDIR}/
	${INSTALL_SCRIPT} ${WRKSRC}/examples/* ${EXAMPLESDIR}/
.endif

.include <bsd.port.post.mk>
