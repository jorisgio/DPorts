# New ports collection makefile for:    p5-ack
# Date created:				2006/08/15
# Whom:	      				chinsan <chinsan.tw@gmail.com>
#
# $FreeBSD: ports/textproc/p5-ack/Makefile,v 1.36 2012/11/17 06:02:14 svnexp Exp $
#

PORTNAME=	ack
PORTVERSION=	1.96
PORTREVISION=	1
CATEGORIES=	textproc perl5 sysutils
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	App
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	A grep-like text finder for large trees of text

BUILD_DEPENDS=	p5-File-Next>=0.40:${PORTSDIR}/sysutils/p5-File-Next
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN1=		ack.1

OPTIONS_DEFINE=	BASH_COMPLETE
BASH_COMPLETE_DESC=	install bash completion files

.include <bsd.port.options.mk>

COMPLETION_DIR=		${PREFIX}/etc/bash_completion.d
.if ${PORT_OPTIONS:MBASH_COMPLETE}
RUN_DEPENDS+=	${COMPLETION_DIR}:${PORTSDIR}/shells/bash-completion
PLIST_SUB+=		BASH=""
post-install:
	${INSTALL_DATA} ${WRKSRC}/etc/ack.bash_completion.sh ${COMPLETION_DIR}
.else
PLIST_SUB+=		BASH="@comment "
.endif

.include <bsd.port.mk>
