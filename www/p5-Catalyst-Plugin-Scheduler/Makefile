# Created by: Fernan Aguero <fernan@iib.unsam.edu.ar>
# $FreeBSD: ports/www/p5-Catalyst-Plugin-Scheduler/Makefile,v 1.9 2012/11/17 06:02:47 svnexp Exp $

PORTNAME=	Catalyst-Plugin-Scheduler
PORTVERSION=	0.10
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Schedule events to run in a cron-like manner

BUILD_DEPENDS=	p5-Catalyst-Runtime>=5.7000:${PORTSDIR}/www/p5-Catalyst-Runtime \
		p5-Class-Data-Inheritable>=0:${PORTSDIR}/devel/p5-Class-Data-Inheritable \
		p5-DateTime-Event-Cron>=0:${PORTSDIR}/devel/p5-DateTime-Event-Cron \
		p5-Set-Scalar>=0:${PORTSDIR}/devel/p5-Set-Scalar \
		p5-YAML>=0:${PORTSDIR}/textproc/p5-YAML
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	Catalyst::Plugin::Scheduler.3

.include <bsd.port.mk>
