# New ports collection makefile for:	devel/p5-SVN-Mirror
# Date created:				Mar 15 2004
# Whom:					Autrijus Tang <autrijus@autrijus.org>
#
# $FreeBSD: ports/devel/p5-SVN-Mirror/Makefile,v 1.48 2012/11/17 05:56:28 svnexp Exp $
#

PORTNAME=	SVN-Mirror
PORTVERSION=	0.75
PORTREVISION=	2
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	rafan@FreeBSD.org
COMMENT=	Mirror remote subversion repository to local

BUILD_DEPENDS=	p5-Data-UUID>=0:${PORTSDIR}/devel/p5-Data-UUID \
		p5-subversion>=0:${PORTSDIR}/devel/p5-subversion \
		p5-Term-ReadKey>=0:${PORTSDIR}/devel/p5-Term-ReadKey \
		p5-Class-Accessor>=0:${PORTSDIR}/devel/p5-Class-Accessor \
		p5-TimeDate>=0:${PORTSDIR}/devel/p5-TimeDate \
		p5-File-chdir>=0:${PORTSDIR}/devel/p5-File-chdir \
		p5-SVN-Simple>=0:${PORTSDIR}/devel/p5-SVN-Simple \
		p5-URI>=0:${PORTSDIR}/net/p5-URI \
		p5-VCP-autrijus>=0:${PORTSDIR}/devel/p5-VCP-autrijus
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN1=		svm.1
MAN3=		SVN::Mirror.3

regression-test:
	cd ${WRKSRC} && ${MAKE} test

.include <bsd.port.mk>
