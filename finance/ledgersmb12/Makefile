# Created by: anarcat@anarcat.ath.cx
# $FreeBSD: ports/finance/ledgersmb12/Makefile,v 1.11 2012/11/20 19:16:19 svnexp Exp $

PORTNAME=	ledgersmb
PORTVERSION=	1.2.17
CATEGORIES=	finance perl5
MASTER_SITES=	SF/ledger-smb/${PORTNAME}/${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A double entry accounting system

BUILD_DEPENDS=	p5-DBD-Pg>=0:${PORTSDIR}/databases/p5-DBD-Pg \
			p5-MIME-Lite>=0:${PORTSDIR}/mail/p5-MIME-Lite \
			p5-Config-Std>=0:${PORTSDIR}/devel/p5-Config-Std
RUN_DEPENDS:=	${BUILD_DEPENDS}

LATEST_LINK=	ledgersmb12

WRKSRC=		${WRKDIR}/${PORTNAME}
NO_BUILD=	yes
USE_PERL5=	yes

SUB_FILES=	pkg-message

.include <bsd.port.pre.mk>

post-patch:
	@${PERL} -pi -e 's|/usr/bin/perl|${PERL}|' \
		`${FIND} ${WRKSRC} -name \*.pl`
	@${PERL} -pe 's|%%PREFIX%%|${PREFIX}|g' \
		${FILESDIR}/ledger-smb-httpd.conf.in \
		> ${WRKDIR}/ledger-smb-httpd.conf

do-install:
	@${CP} -R ${WRKSRC} ${PREFIX}
	@cd ${PREFIX}/${PORTNAME} ; \
		${CHOWN} -hR ${WWWOWN}:${WWWGRP} * ; \
		${CHMOD} 711 templates css spool
	@${INSTALL_DATA} ${WRKDIR}/ledger-smb-httpd.conf ${PREFIX}/etc/

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.post.mk>
