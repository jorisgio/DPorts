# New ports collection makefile for:	p5-Apache2-SiteControl
# Date created: 			18 June 2011
# Whom:					Nick Hilliard <nick@foobar.org
#
# $FreeBSD: ports/www/p5-Apache2-SiteControl/Makefile,v 1.3 2012/11/17 06:02:44 svnexp Exp $
#

PORTNAME=	Apache2-SiteControl
PORTVERSION=	1.05
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	nick@foobar.org
COMMENT=	Perl web site authentication/authorization system

BUILD_DEPENDS=	p5-Apache-AuthCookie>=3.08:${PORTSDIR}/www/p5-Apache-AuthCookie \
		p5-Apache-Session>=1.54:${PORTSDIR}/www/p5-Apache-Session \
		p5-Crypt-CAST5>=0.04:${PORTSDIR}/security/p5-Crypt-CAST5 \
		p5-Crypt-CBC>=2.14:${PORTSDIR}/security/p5-Crypt-CBC \
		p5-libapreq2>=2.05:${PORTSDIR}/www/p5-libapreq2
RUN_DEPENDS=	p5-Apache-AuthCookie>=3.08:${PORTSDIR}/www/p5-Apache-AuthCookie \
		p5-Apache-Session>=1.54:${PORTSDIR}/www/p5-Apache-Session \
		p5-Crypt-CAST5>=0.04:${PORTSDIR}/security/p5-Crypt-CAST5 \
		p5-Crypt-CBC>=2.14:${PORTSDIR}/security/p5-Crypt-CBC \
		p5-libapreq2>=2.05:${PORTSDIR}/www/p5-libapreq2

OPTIONS=	RADIUS "Support for RADIUS back-end" on

PERL_CONFIGURE=	yes

MAN3=		Apache2::SiteControl.3 \
		Apache2::SiteControl::GrantAllRule.3 \
		Apache2::SiteControl::ManagerFactory.3 \
		Apache2::SiteControl::PermissionManager.3 \
		Apache2::SiteControl::Radius.3 \
		Apache2::SiteControl::Rule.3 \
		Apache2::SiteControl::User.3 \
		Apache2::SiteControl::UserFactory.3

.include <bsd.port.options.mk>

.if !defined(WITHOUT_RADIUS)
RUN_DEPENDS+=	p5-Authen-Radius>=0.10:${PORTSDIR}/security/p5-Authen-Radius
.endif

.include <bsd.port.mk>
