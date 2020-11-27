//   This program is free software: you can redistribute it and/or modify
//   it under the terms of the GNU General Public License as published by
//   the Free Software Foundation, either version 3 of the License, or
//   (at your option) any later version.
//   This program is distributed in the hope that it will be useful,
//   but WITHOUT ANY WARRANTY; without even the implied warranty of
//   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//   GNU General Public License for more details.
//   You should have received a copy of the GNU General Public License
//   along with this program.  If not, see <https://www.gnu.org/licenses/>.


//Author:Jonathan Kevin Selvadurai
//Date:27/11/2020


using haystack
using skyarcd
using connExt

**
** Covid19 Extension
**
@ExtMeta
{
  name    = "covid19"
  icon24  = `fan://frescoRes/img/iconMissing24.png`
  icon72  = `fan://frescoRes/img/iconMissing72.png`
  depends = ["conn"]
}
const class Covid19Ext : Ext
{
  @NoDoc new make() : super() {}
}