# New ports collection makefile for:	p5-Net-Flickr-Backup
# Date created:		2006-08-05
# Whom:			Tsung-Han Yeh <snowfly@yuntech.edu.tw>
#
# $FreeBSD: ports/www/p5-Net-Flickr-Backup/Makefile,v 1.12 2012/11/17 06:02:52 svnexp Exp $
#

PORTNAME=	Net-Flickr-Backup
PORTVERSION=	3.1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	snowfly@yuntech.edu.tw
COMMENT=	OOP for backing up your Flickr photos locally

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-File-Find-Rule>=0:${PORTSDIR}/devel/p5-File-Find-Rule \
		p5-IO-stringy>=2.101:${PORTSDIR}/devel/p5-IO-stringy \
		p5-Image-MetaData-JPEG>=0.15:${PORTSDIR}/graphics/p5-Image-MetaData-JPEG \
		p5-Net-Flickr-RDF>=2.2:${PORTSDIR}/www/p5-Net-Flickr-RDF \
		p5-TimeDate>=1.16:${PORTSDIR}/devel/p5-TimeDate \
		p5-Text-Unidecode>=0.04:${PORTSDIR}/converters/p5-Text-Unidecode \
		p5-libwww>=1.38:${PORTSDIR}/www/libwww
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Net::Flickr::Backup.3

.include <bsd.port.mk>
