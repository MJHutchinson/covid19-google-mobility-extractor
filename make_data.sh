. ./config.sh
source venv/bin/activate

cat states.txt | while read state ; do
    echo ${state}
    # python parse_google_pdfs.py --pdfdir pdfs/${date} --outdir data/${date} --place-codes ${state} --aggregate-only
    # python parse_google_pdfs.py --pdfdir pdfs/${date} --outdir data/${date} --place-codes ${state} --no-aggregate
    python parse_google_pdfs.py --pdfdir pdfs/${date} --outdir data/${date} --place-codes ${state} --date ${date}
done

# rename the coutntries pdfs slightly to conform to similar naming convention as the individual states
cat countries.txt | while read country ; do
    echo ${country}
    # python parse_google_pdfs.py --pdfdir pdfs/${date} --outdir data/${date} --place-codes ${country} --aggregate-only
    # python parse_google_pdfs.py --pdfdir pdfs/${date} --outdir data/${date} --place-codes ${country} --no-aggregate
    python parse_google_pdfs.py --pdfdir pdfs/${date} --outdir data/${date} --place-codes ${country} --date ${date}
done

# python parse_google_pdfs.py --pdfdir pdfs/${date} --outdir data/${date} --aggregate-only
# python parse_google_pdfs.py --pdfdir pdfs/${date} --outdir data/${date} --no-aggregate
python parse_google_pdfs.py --pdfdir pdfs/${date} --outdir data/${date} --date ${date}