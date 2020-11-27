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
using axon
using web

**
** Axon functions for covid19
**
const class Covid19Lib{

  //Connect to Covid API Server
  static Str getCovidAPI(Uri site){
      c := WebClient(site)
      try{
          c.reqMethod = "GET"
          c.writeReq
          c.readRes
          Str result :=(c.resStr) // process response
          return result
        }
        catch(Err e){
          echo(e.trace)
          echo(e)
          return "API Error"
        }
        finally{
          c.close()
        }
   }

  @Axon
  static Str ontCaseByDate(Str srchDate){
    Str site:="https://api.opencovid.ca/timeseries?stat=cases&loc=ON&date="+srchDate
    return Covid19Lib.getCovidAPI(Uri(site))
  }


  @Axon
  static Str allOntCases(){
    Uri site:=`https://api.opencovid.ca/timeseries?stat=cases&loc=ON`
    return Covid19Lib.getCovidAPI(site)
  }



}

