# New ports collection makefile for:	p5-Template-Plugin-Monta
# Date created:				14 June 2005
# Whom:					TAKAHASHI Kaoru <kaoru@kaisei.org>
#
# $FreeBSD: ports/www/p5-Template-Plugin-Monta/Makefile,v 1.8 2012/11/17 06:02:54 svnexp Exp $
#

PORTNAME=	Template-Plugin-Monta
PORTVERSION=	0.03
CATEGORIES=	www textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kaoru@kaisei.org
COMMENT=	Template-Toolkit plugin to Monta Method

BUILD_DEPENDS=	p5-Template-Toolkit>=0:${PORTSDIR}/www/p5-Template-Toolkit
RUN_DEPENDS:=	${BUILD_DEPENDS} \
		p5-Acme-Monta>=0:${PORTSDIR}/www/p5-Acme-Monta

PERL_CONFIGURE=	yes

MAN3=		Template::Plugin::Monta.3

.include <bsd.port.mk>
