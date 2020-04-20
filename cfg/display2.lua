
local cfg = {}

cfg.display_css = [[
@font-face {
	font-family: 'Pricedown';
	src: url(font/Pdown.woff);
}

.div_job{
  position: absolute;
  top: 220px;
  right: 20px;
  font-size: 30px;
  font-family: Pricedown !important;
  color: white;
  text-shadow: black 0 0 10px;
}
]]

cfg.display_css_3 = [[
@font-face {
	font-family: 'Pricedown';
	src: url(font/Pdown.woff);
}

.div_gang{
  position: absolute;
  top: 174px;
  right: 20px;
  font-size: 40px;
  font-family: Pricedown !important;
  color: red;
  text-shadow: 0px 0px 0 rgb(255,107,-51),1px 1px 0 rgb(200,10,-52),2px 2px  0 rgb(40,25,-110),3px 3px 2px rgba(0,0,0,1),3px 3px 1px rgba(0,0,0,0.5),0px 0px 2px rgba(0,0,0,.2);
  }
]]











return cfg

