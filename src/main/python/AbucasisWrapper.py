# Copyright 2018 The Hyve
#
# Licensed under the GNU General Public License, version 3,
# or (at your option) any later version (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# https://www.gnu.org/licenses/
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# !/usr/bin/env python3
from .model import EtlWrapper

class AbucasisWrapper(EtlWrapper):

    def __init__(self, connection, source_schema, debug, skip_vocab):
        super().__init__(connection, source_schema, debug, skip_vocab)

    def run(self):
        pass
