---
layout: page
title: Site Info
group: navigation
---

------------------

List of All Pages
=======================
<div>
<ul>
{% assign pages_list = site.pages %}
{% include JB/pages_list %}
</ul>
</div>

------------------



Categories
=======================
<div>
<ul class="tag_box inline">
  {% assign categories_list = site.categories %}
  {% include JB/categories_list %}
</ul>
{% for category in site.categories %} 
  <h2 id="{{ category[0] }}-ref">{{ category[0] | join: "/" }}</h2>
  <ul>
    {% assign pages_list = category[1] %}  
    {% include JB/pages_list %}
  </ul>
{% endfor %}
</div>

------------------


Site Features & Credits
=======================

* Colors and syntax highlighting with [Solarized](http://ethanschoonover.com/solarized)
* equations rendered in [Mathjax](http://www.mathjax.org/)
* Reproducible code execution with [knitr](http://yihui.name/knitr/)
* CSS based on [twitter bootstrap](http://getboostrap.com)
* Scalable CSS icons from [FontAwesome](http://fortawesome.github.com/Font-Awesome)
* Static site generation with [Jekyll](https://github.com/mojombo/jekyll)
* Markdown parsing with [pandoc](http://johnmacfarlane.net/pandoc/)
* Site and source code hosting on [Github](https://github.com/)
* Uptime monitoring from my.pingdom.com; see [status report](http://stats.pingdom.com/fy1sae94ydyi/616612)

------------------

Notebook Archiving & Data Management
====================================

The lab notebook is written and maintained in plain text (UTF-8) using
markdown. All files are kept in a version managed repository system using
[git](http://git-scm.com/), which provides unique SHA hashes to protect
against corruption. Synchronized backups of the git repository are
maintained on both local and remote servers (RAID 6) to protect against
hardware failures, as well as on the public international software
repository, GitHub [github.com/cboettig](https://github.com/cboettig).
Version history preserves a time-line of changes and protects against
user error file loss.  Archival copies of notebook entries shall be published
annually to [figshare](http://figshare.com) where they will be assigned
DOIs and preserved by the [CLOCKSS](http://www.clockss.org/clockss/Home)
geopolitically distributed 12 node global archive.

-----------------------------------------------------

Building from source
====================

_NOTE:_ This site is developed for my own needs and may be
difficult to adapt directly to another purpose.  If you are new
to Jekyll, consider starting with a basic Jekyll template such as
[jekyll-bootstrap](http://jekyllbootstrap.com/) which will be considerably
easier to adapt than working from this repository directly.


Site configuration
------------------

Fill in all elements of `_config.yml` appropriately.


API key configuration
---------------------

Several of my custom plugins require authentication credentials to the
relevant API, which are not included when forking this public repository,
for obvious reasons.  These credentials should be stored as secure YAML
files in the project source directory, and added to both `.gitignore`
and the `exclude` list of `_config.yml`.  Currently credentials are only
used for the Twitter and Google Analytics plugins. See the headers of
these plugins for more documentation.



-----------------------------------------------------------------------------------------------------------

Copyrights & License
--------------------

All original content is placed in the public domain by Carl Boettiger to
the extent possible under law by the Creative Commons Zero declaration,
[CC0](http://creativecommons.org/publicdomain/zero/1.0/).  Plugins are
also provided under the [MIT](http://opensource.org/licenses/MIT)
license.  Please remember that attribution and citation are appreciated
where appropriate as proper scholarly practice.  (Newton, Darwin,
and Shakespeare are similarly in the public domain, but you wouldn't
plagiarize from them).  Please cite or attribute this work as:
<br/>

<div vocab="http://purl.org/dc/terms/" typeof="bibliographicCitation">
<span property="creator">Carl Boettiger</span> (<span property="date">"Page publication date"</span>), <span property="title">"Page Title"</span>, <span property="source">Lab Notebook</span>, <a property="http://creativecommons.org/ns#attributionURL" href="http://carlboettiger.info">http://carlboettiger.info</a>
</div>

<br/>
with appropriate page title and publication date as indicated.
[Greycite](http://greycite.knowledgeblog.org/) is an excellent online
tool that can generate the citation information for any particular page
given it's URL.

    <footer>
      <div class="container">
        <p>&copy; {{ site.time | date: '%Y' }} {{ site.author.name }}
          with help from <a href="http://jekyllbootstrap.com" target="_blank" title="The Definitive Jekyll Blogging Framework">Jekyll Bootstrap</a>
          and <a href="http://github.com/dhulihan/hooligan" target="_blank">The Hooligan Theme</a>
        </p>
      </div>
    </footer>

