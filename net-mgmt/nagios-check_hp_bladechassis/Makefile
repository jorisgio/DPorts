# New ports collection makefile for:	nagios-check_email_delivery
# Date created: 	1 July 2011
# Whom:			Ryan Steinmetz
#
# $FreeBSD: ports/net-mgmt/nagios-check_hp_bladechassis/Makefile,v 1.4 2012/11/17 06:00:33 svnexp Exp $

PORTNAME=	check_hp_bladechassis
PORTVERSION=	1.0.1
CATEGORIES=	net-mgmt
MASTER_SITES=	http://folk.uio.no/trondham/software/files/ \
		http://mirrors.rit.edu/zi/
PKGNAMEPREFIX=	nagios-

MAINTAINER=	zi@FreeBSD.org
COMMENT=	Nagios Plugin to monitor your HP Blade Enclosure

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

RUN_DEPENDS=	p5-Net-SNMP>=0:${PORTSDIR}/net-mgmt/p5-Net-SNMP

NO_BUILD=	yes
USE_PERL5_RUN=	yes
MAN8=		check_hp_bladechassis.8
PLIST_FILES=	libexec/nagios/check_hp_bladechassis
PLIST_DIRSTRY=	libexec/nagios/

.include <bsd.port.pre.mk>

do-install:
	@${MKDIR} ${PREFIX}/libexec/nagios
	${INSTALL_SCRIPT} ${WRKSRC}/check_hp_bladechassis ${PREFIX}/libexec/nagios/
	${INSTALL_MAN} ${WRKSRC}/check_hp_bladechassis.8 ${PREFIX}/man/man8/

.include <bsd.port.post.mk>
