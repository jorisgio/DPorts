# Created by: Alex Deiter <tiamat@komi.mts.ru>
# $FreeBSD: ports/mail/imapsync/Makefile,v 1.55 2012/12/21 20:20:02 svnexp Exp $

PORTNAME=	imapsync
PORTVERSION=	1.508
CATEGORIES=	mail perl5
MASTER_SITES=	https://fedorahosted.org/released/${PORTNAME}/
EXTRACT_SUFX=	.tgz

MAINTAINER=	sidh@rtha.info
COMMENT=	IMAP synchronization, copy or migration tool

BUILD_DEPENDS=	p5-Mail-IMAPClient>0:${PORTSDIR}/mail/p5-Mail-IMAPClient \
		p5-Term-ReadKey>0:${PORTSDIR}/devel/p5-Term-ReadKey \
		p5-IO-Socket-SSL>0:${PORTSDIR}/security/p5-IO-Socket-SSL
RUN_DEPENDS=	p5-Mail-IMAPClient>0:${PORTSDIR}/mail/p5-Mail-IMAPClient \
		p5-Term-ReadKey>0:${PORTSDIR}/devel/p5-Term-ReadKey \
		p5-IO-Socket-SSL>0:${PORTSDIR}/security/p5-IO-Socket-SSL

USE_PERL5=	yes
NO_BUILD=	yes

PLIST_FILES=	bin/${PORTNAME}
MAN1=		${PORTNAME}.1

POD2MAN?=	pod2man

do-patch:
	${REINPLACE_CMD} \
		-e 's|/usr/bin/perl|${PERL}|g' \
		${WRKSRC}/${PORTNAME}

do-install:
	${POD2MAN} ${WRKSRC}/${PORTNAME} ${WRKSRC}/${PORTNAME}.1
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${PORTNAME}.1 ${MAN1PREFIX}/man/man1

.include <bsd.port.mk>
