# New ports collection makefile for:	p5-Solr
# Date created:		2009-03-16
# Whom:			Gea-Suan Lin <gslin@gslin.org>
#
# $FreeBSD: ports/textproc/p5-Solr/Makefile,v 1.3 2012/11/17 06:02:08 svnexp Exp $
#

PORTNAME=	Solr
PORTVERSION=	0.03
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:GARAFOLA/Solr
PKGNAMEPREFIX=	p5-

MAINTAINER=	gslin@gslin.org
COMMENT=	Perl extension for interfacing with Solr

RUN_DEPENDS=	p5-File-Slurp>0:${PORTSDIR}/devel/p5-File-Slurp \
		p5-Log-Log4perl>0:${PORTSDIR}/devel/p5-Log-Log4perl \
		p5-XML-Simple>0:${PORTSDIR}/textproc/p5-XML-Simple \
		p5-libwww>0:${PORTSDIR}/www/p5-libwww

PERL_CONFIGURE=	yes
WRKSRC=		${WRKDIR}/${PORTNAME}

MAN3=		Solr.3 Solr::HTTPUpdateHandler.3 Solr::Schema.3

.include <bsd.port.mk>
