require "zeitwerk"

# zeitwerk が各ファイルを require する
# require したいファイルがあるディレクトリを push_dir で指定する
loader = Zeitwerk::Loader.new
loader.push_dir(File.expand_path __dir__)
loader.setup