---
###
# unit information: 
# Fill out with relevant information for this unit
###
title: Formatting Examples and Stylesheet for MUTOR Units
number: -1
short_description: A style guide and formatting examples to be used when 
  designing MUTOR units
summary: This page contains examples of the basic formatting options 
  available when creating a MUTOR unit. The rendered document 
  (_site/units/example.html) contains information about how to 
  format your unit, and is itself, along with its source file example.md, 
  an example of how to construct a unit.
authors: 
 - John MacCallum
topics: [Markdown, Liquid, HTML, MUTOR Units]
test_questions: []

###
# page layout:
# don't change
###
layout: unit
citations: ""
mathjax: true
# published: false
---

{% include unit_preamble.md %}

<form method="get" action="http://www.google.com/search" target="_blank">
<input type="hidden" name="sitesearch" value="MUTOR-2.github.io/MUTOR" />
<input type="text" name="q" maxlength="255" placeholder="Search with Google" />
</form>

<div class="mutor-search">
<script async src="https://cse.google.com/cse.js?cx=5356ce81f3abccd91"></script>
<div class="gcse-search"></div>
</div>

# Structure of the Document

## Header

Each unit document begins with a header:

	---
	###
	# unit information: 
	# Fill out with relevant information for this unit
	###
	title: Title of the unit
	number: 0
	short_description: short description of the unit
	summary: brief summary of the unit
	authors: 
	- author 1
	topics: [topic 1, topic 2]
	test_questions:
	- question 1
	- question 2

	###
	# page layout:
	# don't change
	###
	layout: unit
	citations: ""
	# published: false
	---

The first part of the header contains unit-specific information that
should be filled out by the author of the unit. The syntax is 
[YAML](https://yaml.org/refcard.html). Note the two equivalent ways
of making a list:

	authors:
	 - author 1
	 - author 2
	topics: [topic 1, topic 2]

The second part of the header contains page configuration and layout
information and should not be edited.

## Preamble and Postamble

The first line after the header should be the following:

	{% raw %}
	{% include unit_preamble.md %}
	{% endraw %}

and the final line of the file should be:

	{% raw %}
	{% include unit_postamble.md %}
	{% endraw %}
	
These [Liquid](https://shopify.github.io/liquid/) _tags_ (called _statements_
in other programming languages) paste the text found in _includes/unit_preamble.md
and _includes/unit_preamble.md respectively.

## Sections and Subsections

Section headers begin with one or more pound signs (#) followed by a space
and the title of the section:

	# This is a section
	## This is a subsection
	### This is a subsubsection
	
## Paragraphs

Consecutive lines of text are considered to be part of the same paragraph. 
To create a new paragraph, you must include a blank line.

	This will 
	all be one paragraph.
	
	This is a new paragraph.
	
## Multiple Files

You can divide your unit up into multiple files, for example, one containing
the contents of each section. In order to do that, make a folder in the 
_units directory and give it a name that begins with an underscore. If you are 
working on unit 4, you could call it _04, for example. Let's say your unit
consists of three sections, and they're all contained in their own files: 
_04/04S1.md, _04/04S2.md, and _04/04S3.md. Your entire 04.md file would then 
look like this (after the header):

	{% raw %}
	{% include unit_preamble.md %}
	
	{% include_relative _04/04S1.md %}
	
	{% include_relative _04/04S2.md %}
	
	{% include_relative _04/04S3.md %}
	
	{% include unit_postamble.md %}
	{% endraw %}
	
Note that these files will be copied exactly as is, so no header should be 
included in them, and they should not begin with a preamble or end with a postamble.

# Text Formatting

Basic text formatting is done using [Markdown](https://en.wikipedia.org/wiki/Markdown) 
syntax. There are many different *flavors* of Markdown, and the one Jekyll
uses is called [kramdown](https://kramdown.gettalong.org/quickref.html). 

All Markdown syntax used in the document gets translated into HTML, and it is 
perfectly fine to write inline HTML code directly in the document, although,
in the interest of uniformity across the different units, it should be 
discouraged, and formatting should be limited to Markdown if possible.

## Emphasis

You can place *emphasis* around _words_ by surrounding them with either
underscores or asterisks, and **stronger** __emphasis__ by doubling them.

	You can place *emphasis* around _words_ by surrounding them with either
	underscores or asterisks, and **stronger** __emphasis__ by doubling them.
	
## Block Quotes and Preformatted Code and Inline HTML

### Block Quotes

> Block quotes begin with a single > character followed by a space, and continue
until the next blank line.
> > Nested block quotes are possible too

	> Block quotes begin with a single > character followed by a space, and continue
	until the next blank line.
	> > Nested block quotes are possible too

### Preformatted Code

Preformatted code can be created by simply indenting the text by one tab, or 
at least four spaces. It can also be done by `surrounding text in backticks.`

Preformatted code will not be processed by the Markdown interpreter
and will be rendered as a stylized differently than the other text, 
as shown in the code blocks throughout this document.

### Inline HTML

<div style="float: right; display: inline-block; width: 20%;" markdown="1">
> Hint: Protect yourself from CoViD-19 by washing your hands regularly!
</div>
Markdown is intended to be simple, and easy to read in its unrendered form. 
When it's not powerful enough to do what you want, you can simply write
HTML inline. It's important to note, however, that by default, the Markdown
renderer will ignore Markdown that's contained with HTML tags---the assumption
is that that code has already been formatted the way the user wants. In order
to force the Markdown to process the code between tags, add `markdown="1"`.

For example, we might want to create a "hint" box that appears throughout,
providing tips for the reader as they navigate the text. One way to do it 
would be to use the `<div>` tag with the appropriate style elements. We might
want to decide later how to style those boxes, and if they're spread throughout
all of the unit files, we would have to change them everywhere. A better solution
is for one of us to create a custom Liquid tag in the _includes directory that all
of us can use, and then there's only one place to change that code.

## Lists

There are three types of lists: *ordered lists*, *unordered lists*, and 
*definition lists*.

### Ordered and Unordered Lists

Ordered and unordered lists both start with a list item identifier, followed
by a space, and then the list item text. The list item identifier for an
ordered list is a number followed by a period, and for an unordered list, 
either a dash (-), a plus (+), or an asterisk (*). Which numbers and symbols
you use are of no consequence---they will be stylized according to the
CSS rules for ordered and unordered HTML lists specified in _unit.scss.

<div style="float: right; width: 50%" markdown="1">
1. foo
1. bar
   more stuff related to bar
1. bloo
</div>
<pre>
1. foo
1. bar
   more stuff related to bar
1. bloo
</pre>

<div style="float: right; width: 50%" markdown="1">
* foo
  A list of foo's:
  1. foo
  1. foo
  1. foo
+ bar
- bloo
</div>
<pre>
* foo
  A list of foo's:
  1. foo
  1. foo
  1. foo
+ bar
- bloo
</pre>

Any text that is on a new line but aligned with the beginning of the
item text will be associated with that item.

### Definition Lists

Definition lists associate a term with a definition. The term is just a 
word or phrase on its own line, followed by a line that begins with a 
colon followed by a space. New terms must be separated by a blank line.

<div style="float: right; width: 50%" markdown="1">
this is a term
: and this is its definition

term
: definition

*term*
: *definition*
  continued...
</div>
<pre>
this is a term
: and this is its definition

term
: definition

*term*
: *definition*
  continued...
</pre>

## Links

### Markdown Syntax

Links use the syntax `[display text](url)`, so `[clickme](http://www.google.com)` 
produces [clickme](http://www.google.com).

### Relative Links to MUTOR files

Linking to other files on the MUTOR site should be done using relative paths.
The root of the site is `/MUTOR`, and the contents of the site are organized
in the folder _site (which you do not include in a relative link). So, to
link from here to the 6th unit, you would write 
`[click here for unit 6](/MUTOR/units/06.html)`, which produces
[click here for unit 6](/MUTOR/units/06.html).

## Typesetting Mathematical Formulas

Typesetting of Mathematical formulas can be done using LaTeX notation, thanks
to [MathJax](https://www.mathjax.org/). Formulas can be written inline
by surrounding them in dollar signs, just as with LaTeX: `$r^2$ is $\frac 1 2$`
($r^2$ is $\frac 1 2$).

You can use the equation environment to produce an equation on its own
line with an equation number, as well as a label to refer to it:

	\begin{equation}
	F(t)=\int_{-\infty}^{\infty}f(t)e^{-i2\pi xt}dt
	\label{eq:fouriertransform}
	\end{equation}
	
	Equation \eqref{eq:fouriertransform} is the Fourier Transform 
	{% raw %}{% include cite ref="weisstein_fourier_transform" %}{% endraw %}.
	
\begin{equation}
F(t)=\int_{-\infty}^{\infty}f(t)e^{-i2\pi xt}dt
\label{eq:fouriertransform}
\end{equation}

Equation \eqref{eq:fouriertransform} is the Fourier Transform 
{% include cite ref="weisstein_fourier_transform" %}.

# Figures

## Generic Figure

A figure of any sort can be added by enclosing the contents of the figure 
in a pair of Liquid tags:

	{% raw %}
	{% include begin-figure description="This isn't a very useful figure..." %}
	Figure goes here (<img>, something interactive, whatever...)
	{% include end-figure %}
	{% endraw %}
	
{% include begin-figure description="This isn't a very useful figure..." %}
Figure goes here (img tag, something interactive, whatever...)
{% include end-figure %}

## Images

Markdown has a simple syntax for including images that **we will not be using**.
Instead, images can be included using the 
`{% raw %}{% include begin-figure %}{% endraw %}` and 
`{% raw %}{% include end-figure %}{% endraw %}` tags described above,
or the slightly simpler syntax below:

	{% raw %}
	{% include img-figure url="/MUTOR/assets/images/sin-amp-period.png" description="Descriptive text" %}
	{% endraw %}
	
{% include img-figure url="/MUTOR/assets/images/sin-amp-period.png" description="Descriptive text" %}

## Tables

Tables use the regular Markdown table syntax enclosed in Liquid tags that
format it as a figure with a table number and caption:

    {% raw %}
	{% include begin-table description="Some data" %}
    | column 1 | column 2 | column 3 |
    | 33%      | 0.33     | 33 1/3   |
    {% include end-table %}
	{% endraw %}

{% include begin-table description="Some data" %}
| column 1 | column 2 | column 3 |
| 33% | 0.33 | 33 1/3 |
{% include end-table %}

See [here](https://kramdown.gettalong.org/syntax.html#tables) for all the 
table formatting options.

## Interactive Examples

Interactive examples are planned for the future, but not currently available.
For the moment, where you feel there should be an interactive example,
please post a screenshot of a Max patch that shows the basic functionality.

Here's a simple test of drawing SVG directly in the browser.

{% include begin-figure description="SVG test" %}
<div id="svg-axis-test">

<svg width="220" height="220">
 <line x1="100" y1="0" x2="100" y2="200" style="stroke:black;stroke-width:1"/>
 <line x1="0" y1="100" x2="200" y2="100" style="stroke:black;stroke-width:1"/>
</svg>

</div>
{% include end-figure %}

{% include begin-figure description="SVG test" %}
<div id="svg-axis-test-js">
<svg width="200" height="200"></svg>
</div>
<script type="text/javascript">
var xxx = document.getElementById("svg-axis-test-js").children[0];
var width = 200;
var height = 200;

var xaxis = document.createElementNS("http://www.w3.org/2000/svg", "line");

xaxis.setAttribute('x1', 0);
xaxis.setAttribute('y1', height / 2);

xaxis.setAttribute('x2', width);
xaxis.setAttribute('y2', height / 2);

xaxis.setAttribute('style', "stroke:black;stroke-width:1");

xxx.appendChild(xaxis);

var yaxis = document.createElementNS("http://www.w3.org/2000/svg", "line");

yaxis.setAttribute('x1', width / 2);
yaxis.setAttribute('y1', 0);

yaxis.setAttribute('x2', width / 2);
yaxis.setAttribute('y2', height);

yaxis.setAttribute('style', "stroke:black;stroke-width:1");

xxx.appendChild(yaxis);

for(i = 1; i <= 200; i++){
var x1 = ((i - 1) / (width / 2)) - 1;
var y1 = Math.sin(2. * Math.PI * x1);
var x2 = (i / (width / 2)) - 1;
var y2 = Math.sin(2. * Math.PI * x2);

var line = document.createElementNS("http://www.w3.org/2000/svg", "line");
line.setAttribute('x1', i - 1);
line.setAttribute('x2', i);
line.setAttribute('y1', height - (((y1 + 1) / 2) * height));
line.setAttribute('y2', height - (((y2 + 1) / 2) * height));
line.setAttribute('style', "stroke:black;stroke-width:1");
xxx.appendChild(line);
}

</script>
{% include end-figure %}

## Refering to Figures

If you would like to refer to a figure by number, you can assign
the value of the variable `fignum` (or `tabnum` in the case of a table)
immediately after the liquid code for the figure:

	{% raw %}
	{% include img-figure url="/MUTOR/assets/images/sin-amp-period.png" description="Descriptive text" %}
	{% assign myfigref = fignum %}
	{% endraw %}
	
{% include img-figure url="/MUTOR/assets/images/sin-amp-period.png" description="Descriptive text" %}
{% assign myfigref = fignum %}

<pre>
Then you can refer to the figure above as figure {% raw %}{{ myfigref }}{% endraw %}.
</pre>
Then you can refer to the figure above as figure {{ myfigref }}.

The variable `fignum` is defined by the code in `img-figure` and `begin-figure`, 
and will be changed by the next use of either of those includes, so if you 
intend to use it, you should assign it to a variable and use the variable. Note that the
figure must come before the reference for this to work.

# End Matter

## Quiz

A quiz section is automatically produced at the end of the unit by simply
listing the elements of the `test_questions` field in the header in order.
If that list is empty, no quiz section will be produced.

## Citations and References

Bibliographic entries that can be used to cite works are contained in the 
_references folder. There should be one file per reference, and the file should
contain the following fields in a YAML header (starting and ending with three
dashes):

	ref: 
	authors: 
	title: 
	year:
	
`ref`
: a short, descriptive name that will be used to cite the work inline in the text

`authors`
: a list of objects, each of which contains `lastname:` and `firstname:` entries

`title`
: the title of the work, preformatted according to the type of publication
  it is, i.e. if it is an article, it should contain all volume and issue information,
  etc.
  
`year`
: the year of publication

Example:

	---
	ref: weisstein_fourier_transform
	authors: [
	 {firstname: Eric W., 
	  lastname: Weisstein},
	]
	title: \"Fourier Transform.\" From MathWorld--A Wolfram Web Resource. <a href="http://mathworld.wolfram.com/FourierTransform.html">http://mathworld.wolfram.com/FourierTransform.html</a>
	year: 2020
	---
	
You may then use the `ref` field to cite this publication inline like this:
`{% raw %}{% include cite ref="weisstein_fourier_transform" %}{% endraw %}`, 
which will produce this: 
{% include cite ref="weisstein_fourier_transform" %}.

# Misc

## Assets

All assets go in the assets folder, organized by type (images, video, audio,
js, etc). If you need to add something and there isn't a folder for it,
go ahead and create it. 

The assets folder is different form the _includes folder. The _includes folder
contains only text file snippets that will get copied and pasted directly
into a Markdown file, while assets are more complex objects that can be referred
to while the page is running.

## Editorial Notes

You can leave a note in the text using the following syntax:
`{% raw %}{% include note author="jm" text="a note from john" %}{% endraw %}`, 
where the "author" field should be your first and last initials (I didn't know
what Xiao prefers, so XF and FX both work...).

This is useful for making editorial comments to each other, for example:

So, the cochlea is located behind the right knee
{% include note author="GH" text="John, I think you should double-check this..." %},
where it can be excited by striking the knee with great force.

# Audio Examples

## xwaveform

{% include begin-figure description="A waveform" %}
{% include p/xwaveform src="/MUTOR/assets/audios/trombone.mp3" %}
{% include end-figure %}

## xspectroscope

{% include begin-figure description="A spectrum" %}
{% include p/xspectroscope src="/MUTOR/assets/audios/trombone.mp3" gain="6000." %}
{% include end-figure %}

## xsonogram

{% include begin-figure description="A sonogram" %}
{% include p/xsonogram src="/MUTOR/assets/audios/trombone.mp3" %}
{% include end-figure %}

## xwaveform-spectroscope

{% include begin-figure description="A waveform (top) and a spectrum (bottom)" %}
{% include p/xwaveform-spectroscope src="/MUTOR/assets/audios/trombone.mp3" gain="6000." %}
{% include end-figure %}

## xwaveform-sonogram

{% include begin-figure description="A waveform (top) and a sonogram (bottom)" %}
{% include p/xwaveform-sonogram src="/MUTOR/assets/audios/trombone.mp3" %}
{% include end-figure %}

## xwaveform-spectrogram-sonogram

{% include begin-figure description="A waveform (top), a spectrum (bottom left), and a sonogram (bottom right)" %}
{% include p/xwaveform-spectroscope-sonogram src="/MUTOR/assets/audios/trombone.mp3" gain="6000." %}
{% include end-figure %}

## testing...

{% include p/begin %}
{% assign oscillatorname = mutor_patch_pfx | append: "oscillator" %}
{% assign oscillator2name = mutor_patch_pfx | append: "oscillator2" %}
{% assign transportname = mutor_patch_pfx | append: "transport" %}
{% assign freqnumberboxname = mutor_patch_pfx | append: "freqnumberbox" %}
{% assign phasenumberboxname = mutor_patch_pfx | append: "phasenumberbox" %}
{% assign phaseslidername = mutor_patch_pfx | append: "phaseslider" %}
{% assign scopename = mutor_patch_pfx | append: "scope" %}
{% assign scope2name = mutor_patch_pfx | append: "scope2" %}
{% assign scope3name = mutor_patch_pfx | append: "scope3" %}

{% include p/oscillator name=oscillatorname freq="375." type="sine" %}
{% include p/oscillator name=oscillator2name freq="375." type="sine" %}
<table><tr><td>
{% include p/slider name=phaseslidername min="0" max="360" width="200px" height="20px" %}
</td></tr><tr><td>
{% include p/number name=freqnumberboxname max="880" def="375" label="frequency in Hz: " %}
{% include p/number name=phasenumberboxname def="0" label="phase (0-360): " %}
</td></tr><tr><td>
{% include p/scope name=scopename samps_per_pixel=1 %}
</td></tr><tr><td>
{% include p/scope name=scope2name samps_per_pixel=1 %}
</td></tr><tr><td>
{% include p/scope name=scope3name samps_per_pixel=1 %}
</td></tr><tr><td>
{% include p/transport name=transportname %}
</td></tr></table>
{% include p/connect outlet=oscillatorname inlet=scopename %}
{% include p/connect outlet=oscillator2name inlet=scope2name %}
{% include p/connect outlet=oscillatorname inlet=scope3name %}
{% include p/connect outlet=oscillator2name inlet=scope3name %}
<script type="text/javascript">
{{ freqnumberboxname }}.addEventListener('change', (e)=>{
	{{ oscillatorname }}.frequency.value = parseFloat(e.target.value);
});
{{ phasenumberboxname }}.addEventListener('change', (e)=>{
	{{ oscillatorname }}.phase = parseFloat(e.target.value);
});
{{ phaseslidername }}.addEventListener('mousemove', (e)=>{
	{{ phasenumberboxname }}.value = {{ phaseslidername }}_value.toString();
	{{ oscillatorname }}.phase = {{ phaseslidername }}_value;
});
</script>

{% include p/end %}

{% include unit_postamble.md %}
