# New ports collection makefile for:	backupme
# Date created:				21 May 2010
# Whom:					Yaroslav Berezhinskiy <yaroslav@berezhinskiy.org.ua>
#
# $FreeBSD: ports/sysutils/backupme/Makefile,v 1.3 2012/11/17 06:01:25 svnexp Exp $
#

PORTNAME=	backupme
PORTVERSION=	0.1
CATEGORIES=	sysutils
MASTER_SITES=	http://backupme.org.ua/

MAINTAINER=	yaroslav@berezhinskiy.org.ua
COMMENT=	Flexible and easy backup utility

RUN_DEPENDS=	p5-Log-Log4perl>=0:${PORTSDIR}/devel/p5-Log-Log4perl \
		p5-XML-Simple>=0:${PORTSDIR}/textproc/p5-XML-Simple \
		p5-Mail-Sendmail>=0:${PORTSDIR}/mail/p5-Mail-Sendmail \
		p5-Filesys-Df>=0:${PORTSDIR}/sysutils/p5-Filesys-Df \
		p5-Filesys-DiskUsage>=0:${PORTSDIR}/sysutils/p5-Filesys-DiskUsage \
		p5-Net>=0:${PORTSDIR}/net/p5-Net \
		p5-Net-SCP-Expect>=0:${PORTSDIR}/net/p5-Net-SCP-Expect \
		p5-Net-IPv6Addr>=0:${PORTSDIR}/net-mgmt/p5-Net-IPv6Addr \
		p5-Net-Jabber>=0:${PORTSDIR}/net-im/p5-Net-Jabber \
		p5-Net-SSH>=0:${PORTSDIR}/net/p5-Net-SSH

USE_PERL5=	yes

NO_BUILD=	yes
NO_INSTALL_MANPAGES=	yes

PLIST_FILES=	bin/${PORTNAME} \
		etc/${PORTNAME}.sample.xml

do-install:
	@${CP} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin/
	@${CP} ${WRKSRC}/${PORTNAME}.sample.xml ${PREFIX}/etc/

post-install:
	@${ECHO_CMD} ""
	@${CAT} ${PKGMESSAGE}
	@${ECHO_CMD} ""

.include <bsd.port.mk>
