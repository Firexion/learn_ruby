class Dictionary
  def initialize
    @entries = {}
  end

  def entries
    @entries
  end

  def add(entry)
    if entry.is_a?(String)
      @entries[entry] = nil
    else
      @entries.merge! entry
    end
    
  end

  def keywords
    @entries.keys
  end

  def include?(keyword)
    @entries.has_key?(keyword)
  end

  def find(keyword)
    @entries[keyword]
  end
end

