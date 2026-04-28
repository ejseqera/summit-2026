process EMIT_REPORT {
    publishDir params.outdir, mode: 'copy'

    input:
    path report

    output:
    path report

    script:
    """
    echo "Publishing report: ${report}"
    """
}

workflow {
    report_ch = Channel.fromPath(params.report)
    EMIT_REPORT(report_ch)
}
