# New ports collection makefile for:	textproc/p5-Data-Report
# Date created:				24 May 2006
# Whom:					Anton Berezin <tobez@FreeBSD.org>
#
# $FreeBSD: ports/textproc/p5-Data-Report/Makefile,v 1.9 2012/11/17 06:02:04 svnexp Exp $
#

PORTNAME=	Data-Report
PORTVERSION=	0.10
PORTREVISION=	1
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	tobez@FreeBSD.org
COMMENT=	Data::Report - Framework for flexible reporting

COMMON_DEPENDS=	p5-HTML-Parser>0:${PORTSDIR}/www/p5-HTML-Parser \
		p5-Text-CSV_XS>0:${PORTSDIR}/textproc/p5-Text-CSV_XS
BUILD_DEPENDS=	p5-Module-Build>=0.28:${PORTSDIR}/devel/p5-Module-Build \
		${COMMON_DEPENDS}
RUN_DEPENDS=	${COMMON_DEPENDS}

PERL_MODBUILD=	yes

MAN3=	Data::Report.3 Data::Report::Base.3

.include <bsd.port.mk>
