#!/bin/bash

cd ~/work/arxiv-sanity-preserver
python fetch_papers.py
python download_pdfs.py
python parse_pdf_to_text.py
python thumb_pdf.py
python analyze.py
python buildsvm.py

echo "succesful run at" $(date) >> script.log
