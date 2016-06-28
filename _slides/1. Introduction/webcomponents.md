# Web Components

---
## Web Components

> Encapsulation is one of the pillars on which the Object Oriented Programming paradigm was founded and is normally used to restrict the internal representation of an object from the outside world.
---
## Web Components
Web Components consist of 4 main features:

* Custom Elements 
    * APIs to define new HTML elements
* Shadow DOM 
    * Encapsulated DOM and styling, with composition
* HTML Imports 
    * Importing HTML documents into other documents
* HTML Templates 
    * The template tag, inert chunks of DOM

These features can be used separately or all together

---
## Web Components
You probably already use and know web components

The HTML5 the &lt;video&gt; tag is also a web component

<img src="images/videoelement.png" />
---
## Web Components
But the video tag is actually
<img src="images/videoshadowdom.png" />
---

## Web Components
Examples of web components
* [Voice Recognition](http://zenorocha.github.io/voice-elements/)
* [Presentation Builder](http://viniciusalmeida.github.io/ninja-presentation/#1)
* [QR Code Generation](http://educastellano.github.io/qr-code/demo/)
* [Gangnam style element](http://html5-demos.appspot.com/gangnam)

---
## Web Components
You can create your own
```js
<slide-show transition="fade">
<slide src="slideone.jpg" thumb="slideone_thumb.jpg" caption="Look at this image">
<slide src="slidetwo.jpg" thumb="slidetwo_thumb.jpg" caption="Look at this other image">
</slide-show>
```
---

## Create your own elements
What makes a web component again?
* Custom Elements
* Shadow DOM
* Templates
* HTML Imports

---
## Custom Elements
Define the public part of your component

For example

```js
<hello-world></hello-world>
```
---
## Shadow DOM

> Take all code that doesn't need to be seen during markup 
> placement and obscures it in Shadow DOM

* Each instance is self contained 
* Styling and scripts inside won't effect anything on the page. 
* CSS and JavaScript elsewhere won't effect your web component
    * Except for style hooks to allow external CSS targeting
    
---
## Shadow Host & Shadow Root

* Shadow Host
    * DOM element hosting the Shadow DOM subtree
* Shadow Root
    * root of the DOM subtree containing the shadow DOM nodes
    * creates the boundary between normal DOM nodes and Shadow DOM nodes
* Shadow DOM
    * allows for multiple DOM subtrees to be composed into one larger tree
    * next slide shows concept 
* Shadow Boundary
    * The separation between normal DOM world and Shadow DOM world
    * Scripts from either side cannot cross boundary

---
## Shadow Host & Shadow Root

<img src="images/sd_composition1.png" />
---
## Shadow Host & Shadow Root

<img src="images/sd_composition2.png" />

---
## Templates

---
## HTML Imports

---
## Create your own element
define your element in a html file

```html
// hello-world.html
<template>
    <p>Hello <strong>world</strong> :)</p>
</template>
<script>
(function(window, document, undefined) {
    /// code
})(window, document);
</script>
```

---
## Create your own element
use your defined element
```js
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>&lt;hello-world&gt;</title>
    <!-- Imports polyfill -->
    <script src="../webcomponentsjs/webcomponents.min.js"></script>
    <!-- Imports custom element -->
    <link rel="import" href="hello-world.html">
</head>
<body>
    <!-- Runs custom element -->
    <hello-world></hello-world>
</body>
</html>
```
---

### Browser compatibility
The Polymer library and the Polymer App Toolbox work in all major browsers
<div style="display:flex;justify-content:center;">
          <img src="images/chrome_128x128.png" style="padding:12px" height="70" alt="chrome logo">
          <img src="images/firefox_128x128.png" style="padding:12px" height="70" alt="firefox logo">
          <img src="images/internet-explorer_128x128.png" style="padding:12px" height="70"  alt="internet explorer logo">
          <img src="images/edge_128x128.png" style="padding:12px" height="70" alt="edge logo">
          <img src="images/safari_128x128.png" style="padding:12px" height="70" alt="safari logo">
          <img src="images/opera_128x128.png" style="padding:12px" height="70" alt="opera logo">
        </div>

---
<!-- .slide: data-background="url('images/lab2.jpg')" --> 
<!-- .slide: class="lab" -->
## Lab time!
create a web component