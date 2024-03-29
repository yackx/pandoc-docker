% Sample Presentation
% Youri Ackx
% August 2019

## A first slide

This is a slide. Only text.

## List

- Item 1
- Item 2
- Item 3

## Equation

You can use the usual LateX format.

$$ \forall x \in X, \quad \exists y \leq \epsilon $$

## Text formatting

- *This is italic*
- **This is bold**
- ~~strikethrough~~

## Image

![This is a free image of a ladybug](ladybird-1367182.jpg){width=50%}

## Multiple levels

### Level 1

- Some things
- Take place here

### Level 2

- Stranger things

## Code

Some code:

```{java}
public static void main(String [] args) {
    System.out.println("Hello, World!");
}
```

# Tables

## Table

Standard markdown syntax.

A        | B    | C
-------- | ---- | ----
1        | YES  | NO
2        | YES  | YES

## Table

--------------------------------------------------------------------
Column 1                                                Column 2
------------------------------------------------------  ------------
I want the contents of this cell                        Word1 Word2
to fit into one line
------------------------------------------------------  ------------

## Table

https://pandoc.org/MANUAL.html#tables

## Table

-------------------------------------------------------------
 Centered   Default           Right Left
  Header    Aligned         Aligned Aligned
----------- ------- --------------- -------------------------
   First    row                12.0 Example of a row that
                                    spans multiple lines.

  Second    row                 5.0 Here's another one. Note
                                    the blank line between
                                    rows.
-------------------------------------------------------------

Table: Here's the caption. It, too, may span
multiple lines.

## Table

These work like simple tables, but with the following differences:

- They must begin with a row of dashes, before the header text (unless the headers are omitted).
- They must end with a row of dashes, then a blank line.
- The rows must be separated by blank lines.

## Table with alignment

  Right     Left     Center     Default
-------     ------ ----------   -------
     12     12        12            12
    123     123       123          123
      1     1          1             1

Table: Demonstration of simple table syntax.

## Table with pipe alignment

Alignments can be specified as with pipe tables, by putting colons at the boundaries of the separator line after the header.

+---------------+---------------+--------------------+
| Right         | Left          | Centered           |
+==============:+:==============+:==================:+
| Bananas       | $1.34         | built-in wrapper   |
+---------------+---------------+--------------------+



## Table without header

-------     ------ ----------   -------
     12     12        12             12
    123     123       123           123
      1     1          1              1
-------     ------ ----------   -------


## Grid table

: Sample grid table.

+---------------+---------------+--------------------+
| Fruit         | Price         | Advantages         |
+===============+===============+====================+
| Bananas       | $1.34         | - built-in wrapper |
|               |               | - bright color     |
+---------------+---------------+--------------------+
| Oranges       | $2.10         | - cures scurvy     |
|               |               | - tasty            |
+---------------+---------------+--------------------+

## Grid table

### How to

The row of `=`s separates the header from the table body, and can be omitted for a headerless table. The cells of grid tables may contain arbitrary block elements (multiple paragraphs, code blocks, lists, etc.). Cells that span multiple columns or rows are not supported. 

## Columns
:::::::::::::: {.columns}
::: {.column width="40%"}
Apple

Orange

Banana

Cherry
:::
::: {.column width="60%"}
Brussels sprout

Eggplant

Cucumber
:::
::::::::::::::
