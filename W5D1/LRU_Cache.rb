class LRUCache
    def initialize
        @cache = cache
    end

    def count
      @cache.count
    end

    def add(el)
      @cache.push(el)
    end

    def show
      # shows the items in the cache, with the LRU item first
    end

    private
    attr_reader :cache

  end