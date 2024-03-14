<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">

<html lang="en">

<head>
    <title>POKEDEX</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>

<body>
    <header>
        <div class="container bg-black bg-opacity-50">
            <img src="img/header.jpeg" class="card-img img-fluid opacity-50 " alt="..."/>
            <div class="card-img-overlay px-5 container justify-content-center">
                <p class="bg-black text-center opacity-50 text-white card-text display-4 mt-4 mb-0">POKEDEX</p>
                <p class="fs-4 text-center text-white"><xsl:value-of select="pokedex/definition"/></p>
            </div>
		</div>
    </header>
    <main>
        <section class="container bg-black bg-opacity-50">
            <p class="text-center text-white opacity-50 display-4 mt-2 mb-1">TYPES</p>
            <div class="row justify-content-center text-white">
				<xsl:for-each select="pokedex/types/type">
					<div class="col-3 col-xl-3 mx-3 mb-3 mt-3 text-center border border-3 rounded-3"><img
                        src="img/{.}_type.png" class="img-fluid" alt=""/>
                    <p><xsl:value-of select="."/></p>
                </div>
				</xsl:for-each>
            </div>
        </section>
        <section class="container bg-black bg-opacity-50">
            <p class="text-center text-white opacity-50 display-5 mt-2 mb-1">POKEMONS</p>
            <div class="row justify-content-evenly container">
				<xsl:for-each select="pokedex/pokemon">
                <div class="col-5 row mb-3 mt-3 border border-3 rounded-3">
                    <div class="col-6 mt-2 "><img
                            src="https://assets.pokemon.com/assets/cms2/img/pokedex/detail/{dex}.png" class="img-fluid"
                            alt=""/>
                    </div>
					
                    <div class="col-6 mt-2">
                        <p class="text-white fs-4"><xsl:value-of select="species"/></p>
						<xsl:for-each select="baseStats">
                        <xsl:choose>
                            <xsl:when test="SPD &gt; 100">
                             <h6 >HP: <xsl:value-of select="HP"/></h6>
                             <h6>ATK: <xsl:value-of select="ATK"/></h6>
                             <h6>DEF: <xsl:value-of select="DEF"/></h6>
                             <h6 >SPD: <span class="text-danger fw-bold"><xsl:value-of select="SPD"/></span></h6>
                             <h6>SATK: <xsl:value-of select="SATK"/></h6>
                            </xsl:when>
                            <xsl:otherwise>
                            <h6>HP: <xsl:value-of select="HP"/></h6>
                             <h6>ATK: <xsl:value-of select="ATK"/></h6>
                             <h6>DEF: <xsl:value-of select="DEF"/></h6>
                             <h6>SPD: <xsl:value-of select="SPD"/></h6>
                             <h6>SATK: <xsl:value-of select="SATK"/></h6>
                            </xsl:otherwise>
                        </xsl:choose>
                    
                        
                        <div class="row mt-3">
                        <xsl:for-each select="../types/type">
                            <img src="img/{.}_type.png" class="img-fluid  w-25 h-25" alt=""/>
                            </xsl:for-each>
                        </div>
                        
                        </xsl:for-each>
                    </div>
                </div>
				</xsl:for-each>
			</div>
        </section>
    </main>
    <footer class="container">
        <h3 class="text-center">EL MUNDO POKEMON EN AZARQUIEL - SIDAM - S IASIR</h3>
    </footer>
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
</body>

</html>

</xsl:template>
</xsl:stylesheet>