<? echo '<?xml version="1.0" encoding="iso-8859-1"?>'; ?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
  <head>
    <title><?=$cms_content->title?> - RSS</title>
	  <?=css_bundle("rss", array(), "wildfire.sitemap")?>
	  <?=css_bundle("rss")?>	  
  </head>
  <body>    
    <div id="rss_content">
    <ul>
      <xsl:for-each select="rss/channel/item">
      <div class="article">
        <li><a href="{link}" rel="bookmark"><xsl:value-of select="title"/></a></li>        
      </div>
      </xsl:for-each>
      </ul>
    </div>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>