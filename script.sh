#!/bin/bash

cd ~/work/arxiv-sanity-preserver
python2 fetch_papers.py
python2 download_pdfs.py
python2 parse_pdf_to_text.py
python2 thumb_pdf.py
python2 analyze.py
python2 buildsvm.py

echo "succesful run at" $(date) >> script.log
