# tex - Tutorial
MathJax is a javascript based platform to draw mathematical expressions and symbols in web applications.

This tutorial will cover TEX Commands available in MathJax project.

# Audience
This tutorial is designed for all those individuals who are looking for a starting point of learning TEX commands using MathJax and we cover topics suited for a beginner and an advanced user.

# Prerequisites
Before proceeding with this tutorial it is advisable for you to understand the basics concepts of MathJax and Tex commands. But the tutorial is self contained and you will be able to learn on various concepts of TEX even if you are a beginner. You just need to have a basic understanding of working with a simple text editor and command line.

# Environment
We've used MathJax 2.6 using the MathJax Content Distribution Network (CDN) by putting following code snippet in head section of our demo html pages:

```
<script type="text/javascript"
   src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
</script>
<script type="text/x-mathjax-config">
MathJax.Hub.Config({
   tex2jax: { inlineMath: [["$","$"],["\\(","\\)"]] },
   "HTML-CSS": {
      linebreaks: { automatic: true }
   },
   SVG: { 
      linebreaks: { automatic: true } 
   }
});
</script>
```
# See TEX Online
For most of the examples given in this tutorial you will see,the output. Just right click over the expression. Select following options from context menu: **Show Math As > TeX Commands** to see the source code.

### Syntax
```
$ a+1 \above 1pt b $
```
### Output

[Previous Page](../tex_commands/index.md) [Next Page](../tex_commands/hash.md) 
