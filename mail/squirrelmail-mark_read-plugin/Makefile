# New ports collection makefile for:	squirrelmail-mark_read-plugin
# Date created:				2008-02-16
# Whom:					Ion-Mihai "IOnut" Tetcu <itetcu@FreeBSD.org>
#
# $FreeBSD: ports/mail/squirrelmail-mark_read-plugin/Makefile,v 1.6 2012/11/17 05:59:15 svnexp Exp $
#

PORTNAME=	mark_read
PORTVERSION=	1.4.2
PORTREVISION=	2
DISTNAME=	${PORTNAME:S/-/_/}-${PORTVERSION}-1.2
DIST_SUBDIR=	squirrelmail

MAINTAINER=	itetcu@FreeBSD.org
COMMENT=	Provides one-click link to mark read/unread all mails in a folder

USE_SM_COMPAT=	YES
USE_PERL5_RUN=	yes

SQUIRREL_PLUGIN_NAME=	${PORTNAME:S/-/_/}

post-patch:
	@${RM} ${WRKSRC}/${SQUIRREL_PLUGIN_NAME}/mark_read.php.orig

.include <bsd.port.pre.mk>

.include "${PORTSDIR}/mail/squirrelmail/bsd.squirrelmail.mk"

.include <bsd.port.post.mk>
