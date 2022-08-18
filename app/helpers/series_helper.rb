module SeriesHelper
    def edit_classif(serie)
        if (serie.not_recommended?)
            content_tag(:strong, "#{serie.classification} - Não recomendado")
        else
            serie.classification
        end
    end

    def image(serie)
        if serie.poster.blank?
            image_tag('sem-imagem.png')
        else
            image_tag(serie.poster)
        end
    end
end
