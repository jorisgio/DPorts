# New ports collection makefile for:	drac
# Date created:			07 January 2001
# Whom:				Anders Nordby <anders@fix.no>
#
# $FreeBSD: ports/mail/drac/Makefile,v 1.32 2012/11/17 05:59:01 svnexp Exp $
#

PORTNAME=	drac
PORTVERSION=	1.12
PORTREVISION=	8
CATEGORIES=	mail
MASTER_SITES=	ftp://ftp.cc.umanitoba.ca/src/ \
		http://atreides.freenix.no/~anders/ \
		ftp://totem.fix.no/pub/mirrors/misc/
DISTNAME=	${PORTNAME}
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Dynamic Relay Authorization Control, a POP-before-SMTP implementation

.if defined(WITH_POSTFIX_DB3)
LIB_DEPENDS+=	db3.3:${PORTSDIR}/databases/db3
.endif
.if defined(WITH_POSTFIX_DB41)
LIB_DEPENDS+=	db41.1:${PORTSDIR}/databases/db41
.endif

NO_WRKSUBDIR=	yes
USE_RC_SUBR=	dracd

.if !defined(NOPORTDOCS)
MAN3=		dracauth.3
MAN1=		rpc.dracd.1
.endif

.include <bsd.port.pre.mk>

MAKE_ARGS+=	-DWITH_TI_RPC

pre-everything::
	@${ECHO_MSG} "============================================================="
	@${ECHO_MSG} "For databases compatible with other MTAs than sendmail, use:"
	@${ECHO_MSG}
	@${ECHO_MSG} "WITH_POSTFIX=yes        (Postfix)"
	@${ECHO_MSG} "WITH_POSTFIX_DB3=yes    (Postfix with DB3 database maps)"
	@${ECHO_MSG} "WITH_POSTFIX_DB41=yes   (Postfix with DB41 database maps)"
	@${ECHO_MSG} "WITH_EXIM=yes           (Exim)"
	@${ECHO_MSG}
	@${ECHO_MSG} "Define WITH_FOREGROUND to make the rpc.dracd daemon stay in"
	@${ECHO_MSG} "foreground instead of detaching itself. This breaks the"
	@${ECHO_MSG} "startup script."
	@${ECHO_MSG} "============================================================="

post-patch:
	@${REINPLACE_CMD} -e "s|%%PREFIX%%|${PREFIX}|g" ${WRKSRC}/rpc.dracd.1m

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/rpc.dracd ${PREFIX}/sbin/
	@${INSTALL_DATA} ${WRKSRC}/drac.h ${PREFIX}/include/
	@${INSTALL_DATA} ${WRKSRC}/libdrac.a ${PREFIX}/lib/
	@${INSTALL_DATA} ${WRKSRC}/dracd.allow-sample ${PREFIX}/etc/
.if !defined(NOPORTDOCS)
	@${INSTALL_MAN} ${WRKSRC}/dracauth.3 ${PREFIX}/man/man3/
	@${INSTALL_MAN} ${WRKSRC}/rpc.dracd.1m ${PREFIX}/man/man1/rpc.dracd.1
.endif

.include <bsd.port.post.mk>
