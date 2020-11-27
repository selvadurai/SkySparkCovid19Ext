# SkySparkCovid19Ext
API for SkySpark to report the number of Covid 19 Cases in Ontario

Requirments:

Skyspark 3.0.15+ or higher
Fan version 1.70 or higher

Create a Axon Function like this to convert it to a Grid Table:

```Axon
() => do
   raw:  allOntCases()
   json: raw.ioReadJson
   if (json.has("cases")) return json->cases.toGrid
end
```
