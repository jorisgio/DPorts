# New ports collection makefile for:	p5-Mail-Folder
# Date created:				October 24th 1996
# Whom:	      				James FitzGibbon <jfitz@FreeBSD.org>
#
# $FreeBSD: ports/mail/p5-Mail-Folder/Makefile,v 1.33 2012/11/17 05:59:08 svnexp Exp $
#

PORTNAME=	Mail-Folder
PORTVERSION=	0.07
CATEGORIES=	mail perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-
DISTNAME=	MailFolder-${PORTVERSION}

MAINTAINER=	chifeng@gmail.com
COMMENT=	Perl module for a folder-independant interface to email folders

BUILD_DEPENDS=	p5-Mail-Tools>=0:${PORTSDIR}/mail/p5-Mail-Tools \
		p5-TimeDate>=0:${PORTSDIR}/devel/p5-TimeDate \
		p5-File-Sync>=0:${PORTSDIR}/devel/p5-File-Sync \
		p5-MIME-Tools>=0:${PORTSDIR}/mail/p5-MIME-Tools
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	YES

MAN3=		Mail::Folder.3 Mail::Folder::Emaul.3 Mail::Folder::Mbox.3 \
		Mail::Folder::NNTP.3 Mail::Folder::Maildir.3

post-configure:
	@${PERL} -pi -e 's/^FULLEXT.*/FULLEXT=Mail\/Folder/' \
		${WRKSRC}/Makefile

.include <bsd.port.mk>
