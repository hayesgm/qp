
module T
  def self.p(map={})
    threshold = map.delete(:threshold)
    scope = caller[0..(map.delete(:scope) || 0)]

    @tp = ( @tp || 0 ) + 1

    now = Time.now.to_f
    @first_tp ||= now
    @last_tp ||= 0

    total_diff = sprintf("%.2fms", ( now - @first_tp ) * 1000)

    if @last_tp.zero?
      delta_ms = nil
      delta_formatted = nil
    else
      delta_ms = ( now - @last_tp ) * 1000
      delta_formatted = sprintf("%.2fms", delta_ms)
    end

    puts [ Time.now.strftime("%T,%L"), 'Track Place', @tp, scope, map, "+#{total_diff} (d+#{delta_formatted})" ].join(" ")

    if threshold && delta_ms && delta_ms > threshold
      raise "Delta took longer than threshold (#{delta_formatted} > #{threshold}ms) in #{scope}", map: map
    end
    
    @last_tp = now
  end
end
