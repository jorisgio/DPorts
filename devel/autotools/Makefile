# New ports collection makefile for:	autotools
# Date created:				14th April 2007
# Whom:					Ade Lovett <ade@FreeBSD.org>
#
# $FreeBSD: ports/devel/autotools/Makefile,v 1.14 2012/11/17 05:55:34 svnexp Exp $

PORTNAME=	autotools
PORTVERSION=	20120427
CATEGORIES=	devel
MASTER_SITES=	# none
DISTFILES=	# none

# note: before committing to this port, contact portmgr to arrange for an
# experimental ports run.  Untested commits may be backed out at portmgr's
# discretion.
MAINTAINER=	autotools@FreeBSD.org
COMMENT=	Autotools meta-port

RUN_DEPENDS=	libtool:${PORTSDIR}/devel/libtool \
		autoconf-2.13:${PORTSDIR}/devel/autoconf213 \
		autoconf-2.69:${PORTSDIR}/devel/autoconf \
		automake-1.4:${PORTSDIR}/devel/automake14 \
		automake-1.12:${PORTSDIR}/devel/automake

PLIST_FILES=	share/${PORTNAME}
NO_BUILD=	yes
NO_FETCH=	yes

do-install:
	@${ECHO_CMD} "Placeholder file" > ${PREFIX}/${PLIST_FILES}

.include <bsd.port.mk>
