def extrair_diamantes_e_areias(expressao)
  diamantes = 0

  loop do
    diamante = expressao[/<([^<>]*)>/]

    break if diamante.nil?

    diamantes += 1

    expressao.sub!(diamante, '')
  end

  diamantes
end

expressao = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'
quantidade_diamantes = extrair_diamantes_e_areias(expressao)
puts "Diamantes extraídos: #{quantidade_diamantes}"
