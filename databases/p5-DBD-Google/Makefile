# Created by: ijliao
# $FreeBSD: ports/databases/p5-DBD-Google/Makefile,v 1.14 2012/11/17 05:55:14 svnexp Exp $

PORTNAME=	DBD-Google
PORTVERSION=	0.51
PORTREVISION=	1
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Treat Google as a datasource for DBI

BUILD_DEPENDS=	p5-Net-Google>=0:${PORTSDIR}/net/p5-Net-Google \
		p5-URI>=0:${PORTSDIR}/net/p5-URI \
		p5-HTML-Parser>=0:${PORTSDIR}/www/p5-HTML-Parser \
		p5-SQL-Statement>=0:${PORTSDIR}/databases/p5-SQL-Statement \
		p5-DBI>=0:${PORTSDIR}/databases/p5-DBI
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	DBD::Google.3 SQL::Dialects::Google.3

.include <bsd.port.mk>
