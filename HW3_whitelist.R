allowed_files = c("HW3.Rmd",
                  "HW3.pdf",
                  "HW3.html",
                  "nes5200_processed_voters_realideo.dta",
                  "README.md",
                  "HW3_whitelist.R",
                  "wercker.yml")

files = dir()
disallowed_files = files[!(files %in% allowed_files)]

if (length(disallowed_files != 0))
{
  cat("Disallowed files found:\n")
  cat("  (Please remove the following files from your repo)\n\n")

  for(file in disallowed_files)
    cat("*",file,"\n")

  quit("no",1,FALSE)
}
