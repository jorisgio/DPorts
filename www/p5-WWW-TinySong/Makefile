# New ports collection makefile for:	p5-WWW-TinySong
# Date created:		2009-01-27
# Whom:			Dennis Herrmann <adox@mcx2.org>
#
# $FreeBSD: ports/www/p5-WWW-TinySong/Makefile,v 1.6 2012/11/17 06:02:55 svnexp Exp $
#

PORTNAME=	WWW-TinySong
PORTVERSION=	1.01
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	dhn@FreeBSD.org
COMMENT=	Get free music links from tinysong.com

BUILD_DEPENDS=	p5-HTML-Parser>=0:${PORTSDIR}/www/p5-HTML-Parser \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	YES

MAN3=	WWW::TinySong.3

.include <bsd.port.pre.mk>

.if ${PERL_LEVEL} < 501400
TEST_DEPENDS+=	p5-Test-Simple>=0.98:${PORTSDIR}/devel/p5-Test-Simple
.endif

.include <bsd.port.post.mk>
