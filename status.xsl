<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version = "1.0">
<xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes" />
<xsl:template match = "/icestats">
<html>
<head>
	<title>HMSU Radio Server</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />   
	<link rel="stylesheet" type="text/css" href="radio.css" />
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
</head>
<body id="back">
    <div class="container-fluid">
    <xsl:choose>
        <xsl:when test="source">
           <div class="col-md-12 text-center">
                <img src="hmsu-logo-mazaloweb-1.png" width="360px" />
             </div>
            <div class="col-md-12 text-center"> 
	            <h2 style="color: #656565;">HMSU Online Radio</h2>
                <!-- <h6 style="color: #656565;">LOW QUALITY STREAM - 96kbps</h6> -->
            </div>
        </xsl:when>
        <xsl:otherwise>
        <div class="col-md-12 text-center">
            <img src="hmsu-logo-mazaloweb-1.png"/>
        </div>
        <div class="col-md-12 text-center">
            <h2>No Stream Available</h2>
        </div>    
        </xsl:otherwise>
    </xsl:choose>

	<div class="col-md-12 text-center">
	<!--mount point stats-->
	<xsl:for-each select="source">
	    <xsl:choose>
	    	<xsl:when test="listeners">
                <audio xmlns="http://www.w3.org/1999/xhtml" controls="controls" preload="none">
                    <source src="/bass" type="audio/mpeg" />
                </audio>
	            <!-- <div class="col-md-12 text-center">
                    For high quality you could try <a href="https://radio2.hmsu.org">radio2.hmsu.org</a>
                </div> -->
		    </xsl:when>
	    </xsl:choose>
	</xsl:for-each>
    <div class="col-md-12 text-center">
        <a href="https://t.me/joinchat/G31X6xAaWZ0PQHqif5Ukvw">Join <strong>H.M.S.U. Radio</strong> Telegram Group</a>
    </div>
    </div>
    </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
