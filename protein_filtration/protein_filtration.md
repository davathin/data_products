<style>
.midcenter {
    position: fixed;
    top: 50%;
    left: 50%;
}


.footer {
    color: black; background: #E8E8E8;
    position: fixed; top: 90%;
    text-align:center; width:100%;
}


.small-code pre code {
  font-size: 1em;
}

.reveal h1, .reveal h2, .reveal h3 {
  word-wrap: normal;
  -moz-hyphens: none;
}

</style>

Protein filter optimization
========================================================
author: Dave Latshaw II
date: 1/29/2015

Business Case
========================================================
transition: zoom
type:section

This tool is to be used for the optimization of a filtration system
used in perfusion based mAB bioprocesses. A % retention greater than
40% indicates a failure of the system so the filter must be changed
out. Using the tool allows the user to adjust the retention profiles
and the time for change out to minimize the total amount of protein
retained by the filter.

This tool will allow for:

- More precise scheduling of a filter change
- More product capture
- Minimized failure risk

Optimization tool
========================================================
transition: zoom
type:section 



 <img src="data_products.png", height="350", width="650"></img>

Optimal configuration that minimizes the total amound of protein retention and avoids retention limit.  

Total retention
========================================================
transition: zoom
type:section

To calculate the total amount of protein retained by the filter we use the trapezoidal
method to estimate the integral of the discontinuous curve.  

The total amount of protein retained per amount of protein passing through the filter during a full run in the optimal configuration is:

```
[1] 326487.1
```

Resources
========================================================
transition: zoom
type:section

The tool itself is located at: https://davathin.shinyapps.io/data_products/

The Github repository is located at: https://github.com/davathin/data_products

Thank you!
