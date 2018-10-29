require 'pathname'

def generate_input path
    fmt = "\\begin{figure}[H]
\t\\centering
\t\\includegraphics[width=\\textwidth]{#{path.to_s}}
\t\\caption{#{path.basename}}
\t\\label{fig:#{path.basename}}
\\end{figure}"
    fmt
end

ARGV.each { |arg|
    puts generate_input Pathname.new arg
}
