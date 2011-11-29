<? echo '<?xml version="1.0" encoding="iso-8859-1"?>'; ?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
  <head>
    <title><?=$cms_content->title?> - RSS</title>
	  <?=css_bundle("wildfire.rss", array(), "wildfire.rss")?>
	  <?=css_bundle("rss")?>	  
  </head>
  <body>    
    <div id="explanation">
      <p>You are viewing an <acronym title="Really Simple Syndication">RSS</acronym> feed. RSS feeds allow you to stay up to date with the latest news and features you want from websites. To subscribe to it, you will need a News Reader or other similar device.</p>
      <p>Below is the latest Articles available from this feed.</p>
    </div>
    
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