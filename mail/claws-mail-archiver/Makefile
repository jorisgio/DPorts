# Created by: Martin Wilke
# $FreeBSD: ports/mail/claws-mail-archiver/Makefile,v 1.25 2012/12/10 17:32:44 svnexp Exp $

PORTNAME=	archiver
PORTVERSION=	0.6.13
CATEGORIES=	mail
MASTER_SITES=	http://www.claws-mail.org/downloads/plugins/
PKGNAMEPREFIX=	claws-mail-
DISTNAME=	archive-${PORTVERSION}

MAINTAINER=	pawel@FreeBSD.org
COMMENT=	Mail archiver plugin for Claws Mail

LICENSE=	GPLv3

BUILD_DEPENDS=	claws-mail>=3.9.0:${PORTSDIR}/mail/claws-mail
RUN_DEPENDS=	claws-mail>=3.9.0:${PORTSDIR}/mail/claws-mail

USE_GMAKE=	yes
USE_AUTOTOOLS=	autoconf
MAKE_JOBS_SAFE=	yes

.include <bsd.port.mk>
