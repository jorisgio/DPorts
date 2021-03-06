# Ports collection makefile for:	nessus-libraries
# Date created:				07 November 1999
# Whom:					Anders Nordby <anders@fix.no>
#
# $FreeBSD: ports/security/nessus-libraries/Makefile,v 1.66 2012/11/17 06:01:08 svnexp Exp $
#

# Define NESSUS_CLIENT_ONLY if you only want to build this for the nessus
# client.

PORTNAME=	nessus-libraries
PORTVERSION=	2.2.9
PORTREVISION=	1
CATEGORIES=	security
MASTER_SITES=	ftp://ftp.nessus.org/pub/nessus/nessus-${PORTVERSION}/src/ \
		ftp://ftp.gwdg.de/pub/linux/misc/nessus/nessus-${PORTVERSION}/src/ \
		http://ftp.gwdg.de/pub/linux/misc/nessus/nessus-${PORTVERSION}/src/ \
		ftp://sunsite.cnlab-switch.ch/mirror/nessus/nessus-${PORTVERSION}/src/ \
		ftp://ftp.ayamura.org/pub/nessus/nessus-${PORTVERSION}/src/
DISTNAME=	nessus-libraries-${PORTVERSION}

MAINTAINER=	udo.schweigert@siemens.com
COMMENT=	Libraries for Nessus, the security scanner

DIST_SUBDIR=	nessus
WRKSRC=		${WRKDIR}/nessus-libraries

USE_BISON=	build
USE_AUTOTOOLS=	libtool
CONFIGURE_ARGS=	--enable-cipher
.if defined(WITH_NESSUS_BPF_SHARE)
CONFIGURE_ARGS+=	--enable-bpf-sharing
.endif

USE_LDCONFIG=	YES

MAN1=		nessus-config.1

.if ! defined(NESSUS_CLIENT_ONLY) && ! defined(PACKAGE_BUILDING)
MANUAL_PACKAGE_BUILD=	needs /dev/bpf which is not available in pointyhat jail
pre-configure:
	@if [ ! -c /dev/bpf ]; then \
	    ${ECHO} "********************************************************";\
	    ${ECHO} "*                   W a r n i n g                      *";\
	    ${ECHO} "*                                                      *";\
	    ${ECHO} "* Nessus needs Berkeley Packet Filter (bpf).           *";\
	    ${ECHO} "* To use nessus, your kernel must be rebuilt with bpf, *";\
	    ${ECHO} "* and make bpf devices on /dev directory.              *";\
	    ${ECHO} "*                                                      *";\
	    ${ECHO} "* For more info on this read files/README.BPF          *";\
	    ${ECHO} "********************************************************";\
	    ${FALSE}; \
	fi
.endif

.include <bsd.port.mk>
