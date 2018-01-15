module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna(dna_strand)
    /[^GCTA]/.match(dna_strand) ? '' : dna_strand.tr("GCTA", "CGAU")
  end
end


