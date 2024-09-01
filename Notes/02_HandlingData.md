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
