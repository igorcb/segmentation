module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Segmentation - Challenge Dev"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def select_state
    ([["Acre","Acre"],["Alagoas","Alagoas"],["Amazonas","Amazonas"],["Amapa","Amapa"],["Bahia","Bahia"],
    	["Ceará","Ceará"],["Dist. Federal","Dist. Federal"],["Espirito Santos","Espirito Santos"],  
      ["Goias","Goias"],["Maranhao","Maranhao"],["Minas Gerais","Minas Gerais"],["Mato Grosso do Sul","MS"],
      ["Mato Grosso","Mato Grosso"],["Pará","Pará"],["Paraiba","Paraiba"],["Pernanbuco","Pernanbuco"],["Piaí","Piuaí"],
      ["Parana","Parana"], ["Rio de Janeiro","Rio de Janeiro"],["Rio Grande do Norte","Rio Grande do Norte"],
      ["Rondonia","Rondonia"],["Roraima","Roraima"],["Rio Grande do Sul","Rio Grande do Sul"],
      ["Santa Catarina","Santa Catarina"],["Sergipe","Sergipe"],["São Paulo","São Paulo"],["Tocantins","Tocantis"]])
  end

end
