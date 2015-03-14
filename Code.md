---
layout: page
title: Code and Notebooks
header: Code and Notebooks
group: navigation
---
{% include JB/setup %}

This is a paragraph element before a codeblocked block of C code.

{% highlight c %}
    int main(void) {
        printf("Hello world!");
        return 0;
    }
{% endhighlight %}

And an equation


$$
\begin{align*}
  & \phi(x,y) = \phi \left(\sum_{i=1}^n x_ie_i, \sum_{j=1}^n y_je_j \right)
  = \sum_{i=1}^n \sum_{j=1}^n x_i y_j \phi(e_i, e_j) = \\
  & (x_1, \ldots, x_n) \left( \begin{array}{ccc}
      \phi(e_1, e_1) & \cdots & \phi(e_1, e_n) \\
      \vdots & \ddots & \vdots \\
      \phi(e_n, e_1) & \cdots & \phi(e_n, e_n)
    \end{array} \right)
  \left( \begin{array}{c}
      y_1 \\
      \vdots \\
      y_n
    \end{array} \right)
\end{align*}
$$


### Notebooks 

My somewhat uncommon approach to my own research ocassionally attracts attention of those outside my own field.  I have recently been interviewed by various journals asking to share my perspective and motivation.

- Tachibana, C. (2014). "The paperless lab" _Science_ 345(6195) pp. 468-470. [10.1126/science.opms.p1400087](http://www.sciencemag.org/site/products/lst_20140613.xhtml)
* Mascarelli, A. (2014) "Research tools: Jump off the page." _Nature_ 507, 523–525. {{ "10.1038/nj7493-523a" | doi_parser }}


**Related posts**:

- [Overview of my project workflow](http://www.carlboettiger.info/2012/05/06/research-workflow.html)

- [What I look for in software papers](http://carlboettiger.info/2013/06/13/what-I-look-for-in-software-papers.html) and [research scripts](http://carlboettiger.info/2013/09/25/mozilla-software-review.html).
