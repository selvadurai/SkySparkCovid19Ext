#! /usr/bin/env fan

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

using build

**
** Build: covid19Ext
**
class Build : BuildPod
{
  new make()
  {
    podName = "covid19Ext"
    summary = "TODO: summary of pod name..."
    version = Version("1.0")
    meta    = [
                "org.name":     "Acme",
                //"org.uri":      "http://acme.com/",
                //"proj.name":    "Project Name",
                //"proj.uri":     "http://acme.com/product/",
                "license.name": "Commercial",
              ]
    depends = ["sys 1.0",
               "haystack 3.0",
               "folio 3.0",
               "axon 3.0",
               "skyarcd 3.0",
               "connExt 3.0",
               "fresco 3.0",
               "web 1.0",]
    srcDirs = [`fan/`,
               `test/`]
    resDirs = [`locale/`,
               `lib/`]
    index   =
    [
      "skyarc.ext": "covid19Ext::Covid19Ext",
      "skyarc.lib": "covid19Ext::Covid19Lib",
    ]
  }
}