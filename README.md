# modes-Package
An R package that calculates various mode and modal measures for complex distributions and big data.

Available on CRAN:
https://cran.r-project.org/web/packages/modes/index.html

For reporting bugs or asking questions, feel free to use GitHub or http://sdeevi.com/modes_package/

Select examples are available in the manual files.
 
## Description

Designed with a dual purpose of accurately estimating the mode (or modes) as well as characterizing the modality of data. The specific
application area includes complex or mixture distributions particularly in a big data environment. The heterogeneous nature of (big) data
may require deep introspective statistical and machine learning techniques, but these statistical tools often fail when applied without 
first understanding the data. In small datasets, this often isn't a big issue, but when dealing with large scale data analysis or big 
data thoroughly inspecting each dimension typically yields an O(n^n-1) problem. As such, dealing with big data require an alternative 
toolkit. This package not only identifies the mode or modes for various data types, it also provides a programmatic way of understanding 
the modality (i.e. unimodal, bimodal, etc.) of a dataset (whether it's big data or not). See <http://www.sdeevi.com/modes_package> for 
examples and discussion.
