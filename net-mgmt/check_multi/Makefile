# $FreeBSD: ports/net-mgmt/check_multi/Makefile,v 1.6 2012/11/17 06:00:31 svnexp Exp $

PORTNAME=	check_multi
PORTVERSION=	0.19
CATEGORIES=	net-mgmt
#MASTER_SITES=	http://my-plugin.de/${PORTNAME}/
#PKGNAMEPREFIX=	nagios-
#DISTNAME=	${PORTNAME}-${PORTVERSION}.current
MASTER_SITES=	ftp://ftp.dinoex.de/pub/FreeBSD/distfiles/
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A multi purpose wrapper plugin for Nagios

LICENSE=	GPLv2

USE_PERL5_RUN=	yes
NO_BUILD=	yes

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}
PLUGIN_DIR=	libexec/nagios

do-configure:
	${REINPLACE_CMD} -e "s|/usr/bin/perl|${PERL5}|" \
		${WRKSRC}/check_multi

do-install:
	-${MKDIR} ${PREFIX}/${PLUGIN_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/check_multi ${PREFIX}/${PLUGIN_DIR}/
.if !defined(NOPORTEXAMPLES)
	${MKDIR} ${EXAMPLESDIR}
	@${TAR} -C ${WRKSRC}/contrib -cf - . | ${TAR} -C ${EXAMPLESDIR} -xf -
.endif

.include <bsd.port.mk>
