doc_html_dir := ""
runtime_api := doc_html_dir / "runtime-api.json"
prototype_api := doc_html_dir / "prototype-api.json"

build:
    fmtk package --outdir build

setup-dev-workspace:
    test -f {{ runtime_api }}
    test -f {{ prototype_api }}
    fmtk luals-addon -d {{ runtime_api }} -p {{ prototype_api }} ./fmtk
