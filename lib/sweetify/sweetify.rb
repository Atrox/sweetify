module Sweetify

  # Display an alert with a text and an optional title
  # Default without an specific type
  #
  # @param [String] text Body of the alert (gets automatically the title if no title is specified)
  # @param [String] title TItle of the alert
  # @param [Hash] opts Optional Parameters
  def sweetalert(text, title = '', opts = {})
    opts = {
        showConfirmButton: false,
        timer:             2000,
        allowOutsideClick: true,
        confirmButtonText: 'OK'
    }.merge(opts)

    opts[:text]  = text
    opts[:title] = title

    if opts[:button]
      opts[:showConfirmButton] = true
      opts[:confirmButtonText] = opts[:button] if opts[:button].is_a?(String)
    end

    if opts[:persistent]
      opts[:showConfirmButton] = true
      opts[:allowOutsideClick] = false
      opts[:timer]             = nil
      opts[:confirmButtonText] = opts[:persistent] if opts[:persistent].is_a?(String)
    end

    flash_config(opts)
  end

  # Information Alert
  #
  # @param [String] text Body of the alert (gets automatically the title if no title is specified)
  # @param [String] title TItle of the alert
  # @param [Hash] opts Optional Parameters
  def alert_info(text, title = '', opts = {})
    opts[:type] = :info
    sweetalert(text, title, opts)
  end

  # Success Alert
  #
  # @param [String] text Body of the alert (gets automatically the title if no title is specified)
  # @param [String] title TItle of the alert
  # @param [Hash] opts Optional Parameters
  def alert_success(text, title = '', opts = {})
    opts[:type] = :success
    sweetalert(text, title, opts)
  end

  # Error Alert
  #
  # @param [String] text Body of the alert (gets automatically the title if no title is specified)
  # @param [String] title TItle of the alert
  # @param [Hash] opts Optional Parameters
  def alert_error(text, title = '', opts = {})
    opts[:type] = :error
    sweetalert(text, title, opts)
  end

  # Warning Alert
  #
  # @param [String] text Body of the alert (gets automatically the title if no title is specified)
  # @param [String] title TItle of the alert
  # @param [Hash] opts Optional Parameters
  def alert_warning(text, title = '', opts = {})
    opts[:type] = :warning
    sweetalert(text, title, opts)
  end

  private

  # Flash the configuration as json
  # If no title is specified, use the text as the title
  #
  # @param [Hash] opts
  # @return [Void]
  def flash_config(opts)
    if opts[:title].blank?
      opts[:title] = opts[:text]
      opts.delete(:text)
    end

    flash[:sweetify] = opts.to_json
  end

end

ActionController::Base.send :include, Sweetify