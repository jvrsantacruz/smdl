# smdl

Simple Manuscript Description Language

This is a very simple manuscript description language.  
Implemented usin Xtext and Xtend.

```
book
  title "San Gregorio"
  signature "mss/12720"
  old_signature "Bb.56"
  library "BNE"
  datation 1400-1500
  support "parchment"
  dimensions 41.5 x 29.2
  description "Libro de San Gregorio compendio castellano sobre los morales de Job"

  binding
    type "leather"
  end

  quire
    page (12)
    end
  end

  quire
    page end
    page
      annotation
        description "Reclamo en el folio 14v"
      end
    end
    page (10) end
  end

  quire
    description "Cinta de celo pegando los folios deteriorados"
    page (12) end
  end

  quire
    page (12) end
  end

  quire
    mutilated
    description "Folio 60 deteriorado por tintas"
    page (12) end
  end

  quire
    page
        annotation
            description "Escrito a mano en margen 'de como fabla...'"
        end
    end
    page (11) end
  end
end
```
