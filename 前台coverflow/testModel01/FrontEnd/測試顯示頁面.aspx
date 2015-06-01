<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd/Site.Master" AutoEventWireup="true" CodeBehind="測試顯示頁面.aspx.cs" Inherits="testModel01.FrontEnd.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

    		<!-- jQuery/jQueryUI (hosted) -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.9.0/jquery-ui.js"></script>
		<!--<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.0/themes/sunny/jquery-ui.css" rel="stylesheet" type="text/css"/>-->

		<!-- Markdown parser -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/pagedown/1.0/Markdown.Converter.min.js"></script>

		<!-- Prettyprint -->
		<link href="https://google-code-prettify.googlecode.com/svn/loader/prettify.css" rel="stylesheet" type="text/css"/>
		<script src="https://google-code-prettify.googlecode.com/svn/loader/prettify.js"></script>

		<!-- Index -->
    <script ></script>
<style>
			body {
				font-family:			"Segoe UI", Verdana, Helvetica, Arial, sans-serif;
				font-size:				11px;
				padding:				0;
			}

			#menu {
				margin-bottom:			2em;
			}

			#preview {
				border:					solid thin silver;
				padding:				2em;
				margin:					0 10%;
				text-align:				center;
				box-shadow:				0 0 2em silver;
			}

			.chapter {
				-webkit-columns:		460px;
				   -moz-columns:		460px;
						columns:		460px;

				-webkit-column-gap:		4em;
				   -moz-column-gap:		4em;
						column-gap:		4em;

				-webkit-column-rule:	thin solid silver;
				   -moz-column-rule:	thin solid silver;
						column-rule:	thin solid silver;

				text-align:				justify;
			}

			h1,
			h2 {
				background:				black;
				color:					white;
				padding:				.2em .4em;
			}
			h1 {
				margin-top:				1em;
			}
			h2 {
				background:				gray;
			}

			hr {
				border-top:			double;
				margin:				2em 25%;
			}

			#footer {
				margin-top:			4em;
				text-align:			center;
				color:				silver;
				border-top:			thin solid silver;
				padding-top:		1em;
			}

			.output {
				font-family:		monospace;
				border:				solid thin silver;
				padding:			.2em .4em;
				background-color:	#cf3;
			}

			.clickable {
				cursor:				pointer;
			}

			pre {
				tab-size:			4;
				overflow-x:			auto;
				background-color:	#eee;
				-webkit-column-break-inside: avoid;
			}
    .mycss {
    max-height:200px;
    max-width:300px;

                
    }
		</style>
		<script>
		    $(function () {
		        function tabsToSpaces(line, tabsize) {
		            var out = '',
						tabsize = tabsize || 4,
						c;
		            for (c in line) {
		                var ch = line.charAt(c);
		                if (ch === '\t') {
		                    do {
		                        out += ' ';
		                    } while (out.length % tabsize);
		                } else {
		                    out += ch;
		                }
		            }
		            return out;
		        }

		        function visualizeElement(element, type) {
		            var code = $(element).html().split('\n'),
						tabsize = 4,
						minlength = 2E53,
						l;

		            // Convert tabs to spaces
		            for (l in code) {
		                code[l] = tabsToSpaces(code[l], tabsize);
		            }


		            // determine minimum length
		            var minlength = 2E53;
		            var first = 2E53;
		            var last = 0;
		            for (l in code) {
		                if (/\S/.test(code[l])) {
		                    minlength = Math.min(minlength, /^\s*/.exec(code[l])[0].length);
		                    first = Math.min(first, l);
		                    last = Math.max(last, l);
		                }
		            }

		            code = code.slice(first, last + 1);

		            // strip tabs at start
		            for (l in code) {
		                code[l] = code[l].slice(minlength);
		            }

		            // recombine
		            code = code.join('\n');

		            var fragment = $('<pre class="prettyprint"><code/></pre>').text(code).insertAfter(element);
		            $('<h3 class="clickable">' + type + '&hellip;</h3>').insertBefore(fragment).click(function () {
		                fragment.slideToggle();
		            });
		        }

		        // extract html fragments
		        $('div.prettyprint, span.prettyprint').each(function () {
		            visualizeElement(this, 'HTML');
		        });

		        // extract scripts
		        $('script.prettyprint').each(function () {
		            visualizeElement(this, 'Javascript');
		        });

		        // Include the readme
		        var markdown = new Markdown.Converter();
		        $.get('README.md', function (readme) {
		            $('#readme').html(markdown.makeHtml(readme));
		            $('#readme h1').each(function () {
		                $(this).nextUntil('h1').wrapAll('<div class="chapter"/>');
		            });
		            $('#readme pre').addClass('prettyprint');
		            prettyPrint();

		            // build menu
		            var menuitems = [];
		            $('h1').each(function () {
		                var text = $(this).text(),
							id = $(this).attr('id') || 'chapter ' + text;
		                $(this).attr('id', id);
		                menuitems.push('<a href="#' + id + '">' + text + '</a>');
		            });
		            $(menu).html(menuitems.join(' &mdash; '));
		        }, 'html');
		    });
		</script>

		<!-- Plugin -->
    <script src="../Scripts/jquery.coverflow.js"></script>
		<!-- Optionals -->

    <script src="../Scripts/jquery.interpolate.js"></script>
    <script src="../Scripts/jquery.touchSwipe.min.js"></script>
    <script src="../Scripts/reflection.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">



    
		<div id="preview">
			<div id="preview-coverflow">
                <asp:PlaceHolder ID="PlaceHolder1" runat="server">
           
                </asp:PlaceHolder>
			</div>
			<style>
      
				#preview {
                    padding-top: 100px;
                    margin-bottom: 20px;
                                 

				}
				#preview-coverflow .cover {
			cursor:		pointer;
					width:		320px;
					height:		300px;
					box-shadow:	0 0 4em 1em white;
				}
			</style>
			<script>
			    $(function () {
			        if ($.fn.reflect) {
			            $('#preview-coverflow .cover').reflect();	// only possible in very specific situations
			        }

			        $('#preview-coverflow').coverflow({
			            index: 6,
			            density: 5,
			            innerOffset: 50,
			            innerScale: .7,
			            animateStep: function (event, cover, offset, isVisible, isMiddle, sin, cos) {
			                if (isVisible) {
			                    if (isMiddle) {
			                        $(cover).css({
			                            'filter': 'none',
			                            '-webkit-filter': 'none', 
			                        });
			                    } else {
			                        var brightness = 1 + Math.abs(sin),
										contrast = 1 - Math.abs(sin),
										filter = 'contrast(' + contrast + ') brightness(' + brightness + ')';
			                        $(cover).css({
			                            'filter': filter,
			                            '-webkit-filter': filter
			                        });
			                    }
			                }
			            }
			        });
			    });
			</script>
		</div>

</asp:Content>
