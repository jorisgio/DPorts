# New ports collection makefile for:    mailx
# Date created:         18 Febrary 1999
# Whom:                 Issei Suzuki <issei@jp.FreeBSD.org>
#
# $FreeBSD: ports/mail/mailx/Makefile,v 1.13 2012/11/17 05:59:05 svnexp Exp $
#

PORTNAME=	mailx
PORTVERSION=	0.5
PORTREVISION=	1
CATEGORIES=	mail
MASTER_SITES=	${MASTER_SITE_PORTS_JP}
DISTFILES=	mail-2.2.8.tar.gz mailx-memo-2.2.8R

PATCH_SITES=	${MASTER_SITE_PORTS_JP}
PATCHFILES=	mailx.v05.patch.gz
PATCH_DIST_STRIP=	-p1

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Mail command with mailx extensions

CONFLICTS=	heirloom-mailx-[0-9]*

EXTRACT_ONLY=	mail-2.2.8.tar.gz
WRKSRC=		${WRKDIR}/mail-2.2.8
USE_PERL5=	yes
MAN1=		mailx.1
MANCOMPRESSED=	yes

post-patch:
	${PERL5} -pi.bak -e 's/^(\.Nm mail)/$$1x/i; s/^(\.Dt MAIL)/$$1X/' ${WRKSRC}/mail.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mail ${PREFIX}/bin/mailx
	${INSTALL_MAN} ${WRKSRC}/mail.1.gz ${PREFIX}/man/man1/mailx.1.gz
	${MKDIR} ${PREFIX}/share/doc/mailx
	${INSTALL_DATA} ${DISTDIR}/mailx-memo-2.2.8R ${PREFIX}/share/doc/mailx

.include <bsd.port.mk>
