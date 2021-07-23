# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=(python3_{9..10})

DESCRIPTION="A Featureful File Browser for Cockpit."
HOMEPAGE="https://github.com/45Drives/cockpit-navigator"

if [[ ${PV} == 9999* ]] ; then
	inherit git-r3
	EGIT_REPO_URI="${HOMEPAGE}"
	KEYWORDS=""
	SRC_URI=""
else
	KEYWORDS="~amd64"
	SRC_URI="${HOMEPAGE}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
fi

LICENSE="LGPL-3"
SLOT="0"

DEPEND=""
BDEPEND=""
RDEPEND="${DEPEND}
	sys-apps/cockpit
	net-misc/rsync
	app-arch/zip
"
