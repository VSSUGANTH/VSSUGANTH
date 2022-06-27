install.packages("pdftools")

library("pdftools")
pdf.file <- "http://www.erodegrocery.in/wp/wp-content/uploads/2022/06/Name1.pdf"

download.file(pdf.file, destfile = "name.pdf", mode = "wb")


# Extract the text for all pages

pdf.text <- pdf_text("name.p?f")

# Display the first page text
cat(pdf.text[[1]])
