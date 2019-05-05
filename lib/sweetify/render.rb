module Sweetify
  class << self
    attr_writer :sweetalert_library

    def sweetalert_library
      @sweetalert_library || 'sweetalert2'
    end

    def render(json)
      (sweetalert_library == 'sweetalert2' ? "Swal.fire(#{json})" : "swal(#{json})").html_safe
    end
  end
end
