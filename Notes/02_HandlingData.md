01 September 2024
# Handling Data in COBOL

An introduction into handling data in COBOL.

## COBOL Naming Standards
- ``FILE-CONTROL`` is used to define files utilised, inside the ``INPUT-OUTPUT SECTION`` of the ``ENVIRONMENT DIVISION``
- ``SELECT FILE-ID ASSIGN TO "FILE.DAT".``
- In the ``DATA DIVISION``, we can define the data in the file using ``FD FILE-ID`` inside of the ``FILE SECTION``
- For objects inside of ``WORKING STORAGE``, we can prefix file names with 'WS' to identify their origin

- RESTRICTIONS
  - Alphanumeric and hyphens only
  - Data names cannot exceed 30 characters and must contain at least 1 letter
  - Paragraph names can be all numeric

## Defining Data Objects
- Each object is defined as ``Level-Num Data-Name PIC-Clause Value-Clause (optional)``
- Level numbers specify data heirarchies and data usages
  - Level 1 represents field description or group-level items
  - Levels 2-49 are elementary items
  - Level 66 is reserved for renaming clauses
  - Level 77 is items which cannot be divided
  - Level 88 is condition name entries
- ``HIGH-VALUES`` indicates EOF
- PIC clauses of 9s are numeric in nature
- PIC clauses of Xs are alphanumeric characters
- ``FILLER`` is used as a placeholder

*Different data types in COBOL - prefixes are personal preference and not required*
  
| **Data Type** | **Purpose** | **Characters** | Prefix |
|-----------|---------|------------|------|
| Alphanumeric | strings | x | x |
| Numeric | input/calculations | 9 s (implied sign) v (implied decimal) | n |
| Numeric-Edited | output | 9 +-, .(real decimal) $ z (supress zero) | ne |

## Comp-3 (Packed Decimals)
- Each byte stores 2 digits, except low-order byte
- Low-order byte stores 1 digit in left-most position and the sign in right-most position
- Beneficial when space is a concern - can reduce numerics to half their original size
- Comp-3 uses decimal arithmetic, rather than the more common binary arithmetic
- ``01 WS-SALES   PIC 9(10).`` would change to ``01 WS-SALES PIC 9(10) COMP-3.``

## Literal and Figurative Constants
- Numeric Literal rules: up to 18 digits, can start with +/-, can use decimals
- Non-Numeric Literal rules: enclosed in apostrophes, cannot contain apostrophes
- Figurative constants are reserved words to refer to specific values
- Figurative examples: HIGH-VALUES, LOW-VALUES, ZERO, QUOTES, SPACES
