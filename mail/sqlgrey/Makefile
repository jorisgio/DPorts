# New ports collection makefile for:    sqlgrey
# Date created:				17 Feb 2005
# Whom:					mat
#
# $FreeBSD: ports/mail/sqlgrey/Makefile,v 1.22 2012/11/17 05:59:15 svnexp Exp $
#

PORTNAME=	sqlgrey
PORTVERSION=	1.8.0
CATEGORIES=	mail
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}-1.8%20%28stable%29

MAINTAINER=	chifeng@gmail.com
COMMENT=	Greylisting policy server for Postfix using an SQL backend

RUN_DEPENDS=	p5-Net-Server>=0:${PORTSDIR}/net/p5-Net-Server \
		p5-IO-Multiplex>=0:${PORTSDIR}/devel/p5-IO-Multiplex \
		p5-Pod-Parser>=0:${PORTSDIR}/textproc/p5-Pod-Parser

USE_PERL5_RUN=	yes
USE_RC_SUBR=	sqlgrey
NO_BUILD=	yes

ETCFILES=	clients_fqdn_whitelist clients_ip_whitelist dyn_fqdn.regexp smtp_server.regexp sqlgrey.conf
USERS=		sqlgrey
GROUPS=		${USERS}
ETCDIR?=	etc/sqlgrey

SUB_FILES=	pkg-install
MY_SUB_LIST=	ETCDIR=${ETCDIR} ETCFILES="${ETCFILES}" USER=${USERS} GROUP=${GROUPS} PERL=${PERL}
SUB_LIST+=	${MY_SUB_LIST}
PLIST_SUB=	TOUCH=${TOUCH} ${MY_SUB_LIST}

PKGINSTALL=	${WRKDIR}/pkg-install
PKGDEINSTALL=	${PKGINSTALL}

MAN1=	sqlgrey.1

.if !defined(NOPORTDOCS)
PORTDOCS=	Changelog FAQ HOWTO README TODO
.endif

OPTIONS=	PGSQL "PostgreSQL backend" off \
		MYSQL "MySQL backend" off \
		SQLITE "SQLite backend" off \
		STATS "Depend on Date::Calc for logstats.pl script" off

.include <bsd.port.pre.mk>

.if defined(WITH_PGSQL)
RUN_DEPENDS+=	p5-DBD-Pg>=0:${PORTSDIR}/databases/p5-DBD-Pg
.endif

.if defined(WITH_MYSQL)
RUN_DEPENDS+=	p5-DBD-mysql>=0:${PORTSDIR}/databases/p5-DBD-mysql
.endif

.if defined(WITH_SQLITE)
RUN_DEPENDS+=	p5-DBD-SQLite>=0:${PORTSDIR}/databases/p5-DBD-SQLite
.endif

.if defined(WITH_STATS)
RUN_DEPENDS+=	p5-Date-Calc>=0:${PORTSDIR}/devel/p5-Date-Calc
.endif

post-patch:
	@${REINPLACE_CMD} -e 's-#!/usr/bin/perl-#!${PERL}-' -e 's!/etc/sqlgrey!${PREFIX}/${ETCDIR}!g' ${WRKSRC}/sqlgrey

do-install:
	@${INSTALL_SCRIPT} ${WRKSRC}/sqlgrey-logstats.pl ${PREFIX}/bin
	@${INSTALL_SCRIPT} ${WRKSRC}/sqlgrey ${PREFIX}/sbin
	@${INSTALL_SCRIPT} ${WRKSRC}/update_sqlgrey_config ${PREFIX}/sbin
	@cd ${WRKSRC} && perldoc -u sqlgrey | pod2man sqlgrey > ${MANPREFIX}/man/man1/sqlgrey.1
	@${MKDIR} ${PREFIX}/${ETCDIR}
.for i in ${ETCFILES}
	@${INSTALL_DATA} ${WRKSRC}/etc/${i} ${PREFIX}/${ETCDIR}/${i}.dist
	@[ "${i}" = "dyn_fqdn.regexp" ] || [ "${i}" = "smtp_server.regexp" ] || [ "${i}" = "sqlgrey.conf" ] || ${TOUCH} ${PREFIX}/${ETCDIR}/${i}.local
	@[ -f ${PREFIX}/${ETCDIR}/${i} ] || ${INSTALL_DATA} ${WRKSRC}/etc/${i} ${PREFIX}/${ETCDIR}/${i}
.endfor
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${DOCSDIR}
	@${ECHO_MSG} "===> Documentation installed in ${DOCSDIR}."
.endif

post-install:
	@${SH} ${PKGINSTALL} ${PKGNAME} POST-INSTALL

.include <bsd.port.post.mk>
