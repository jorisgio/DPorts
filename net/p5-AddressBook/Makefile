# New ports collection makefile for:	p5-AddressBook
# Date created:				November 22, 2004
# Whom:	      				Brian Somers <brian@FreeBSD.org>
#
# $FreeBSD: ports/net/p5-AddressBook/Makefile,v 1.6 2012/11/17 06:00:09 svnexp Exp $
#

PORTNAME=	AddressBook
PORTVERSION=	0.16
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:DLEIGH
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl5 module providing an LDAP addressbook interface

USE_PERL5=	yes
RUN_DEPENDS=	p5-Date-Manip>=0:${PORTSDIR}/devel/p5-Date-Manip \
		p5-XML-DOM>=0:${PORTSDIR}/textproc/p5-XML-DOM

NO_BUILD=	yes
ALL_FILES=	AddressBook.pm AddressBook/Entry.pm AddressBook/Config.pm \
		AddressBook/DB/BBDB.pm AddressBook/DB/DBI.pm \
		AddressBook/DB/HTML.pm AddressBook/DB/LDAP.pm \
		AddressBook/DB/LDIF.pm AddressBook/DB/PDB.pm \
		AddressBook/DB/Text.pm

do-install:
		@ ${MKDIR} ${SITE_PERL}/AddressBook/DB
.for file in ${ALL_FILES}
		@ ${INSTALL_DATA} ${WRKSRC}/lib/${file} ${SITE_PERL}/${file}
.endfor

.include <bsd.port.mk>
