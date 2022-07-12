#!/bin/bash
# Unsnappy
# Copyright (c) 2022 Media Scope Group OÜ
# Author: Dawid Wiktor
# Email: info@mediascope.group
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

sudo su;
systemctl disable snapd.service;
systemctl disable snapd.seeded.service;
systemctl disable snapd.socket;
snap remove firefox;
snap remove snap-store;
snap remove gtk-common-themes;
snap remove gnome-3-38-2004;
snap remove core18;
snap remove snapd-desktop-integration;
rm -rf /var/cache/snapd/;
apt autoremove --purge snapd;
rm -rf ~/snap
