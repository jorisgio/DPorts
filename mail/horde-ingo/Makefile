# Ports collection makefile for:  horde-ingo
# Date created:			  Dec 3, 2004
# Whom:				  Thierry Thomas (<thierry@pompo.net>)
#
# $FreeBSD: ports/mail/horde-ingo/Makefile,v 1.47 2013/01/10 18:35:13 svnexp Exp $
#

PORTNAME=	ingo
PORTVERSION=	3.0.2
CATEGORIES=	mail www pear
PKGNAMEPREFIX=	horde-

MAINTAINER=	horde@FreeBSD.org
COMMENT=	Horde email filter rules manager

LICENSE=	AL2
LICENSE_FILE=	${WRKSRC}/LICENSE

LATEST_LINK=	horde-${PORTNAME}

USE_PHP=	gettext
USE_HORDE_BUILD=	Horde_Role
USE_HORDE_RUN=	Horde_Role \
		horde \
		Horde_Auth \
		Horde_Autoloader \
		Horde_Core \
		Horde_Exception \
		Horde_Group \
		Horde_Form \
		Horde_Imap_Client \
		Horde_Mime \
		Horde_Perms \
		Horde_Share \
		Horde_Util

# Optional but we want it
RUN_DEPENDS+=	${PEARDIR}/Net/Sieve.php:${PORTSDIR}/net/pear-Net_Sieve \
		${PEARDIR}/Net/Socket.php:${PORTSDIR}/net/pear-Net_Socket

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear-channel-horde/bsd.horde.mk"
.include <bsd.port.post.mk>
