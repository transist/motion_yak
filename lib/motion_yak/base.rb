module MotionYak
  module Base
    def self.config(api_key)
      MotionYak::Config.api_key = api_key
    end

    def self.key
      MotionYak::Config.api_key
    end

    def self.base_url
     'https://api.emailyak.com/v1'
    end

    def self.api_url(url)
      [self.base_url, MotionYak::Config.api_key, 'json', url].join('/')
    end

    def self.new_domain(domain, &b)
      params = {'Domain' => domain, 'CallbackURL' => MotionYak::Config.callback, 'PushEmail' => MotionYak::Config.push_params}
      MotionYak::Request.post self.api_url('register/domain/'), params do |json|
        b.call(json)
      end
    end

    def self.new_address(address, &b)
      params = {'Address' => address, 'CallbackURL' => MotionYak::Config.callback, 'PushEmail' => MotionYak::Config.push_params}
      MotionYak::Request.post self.api_url('register/address/'), params do |json|
        b.call(json)
      end
    end

    def self.send_email(options, &b)
      params = {}
      params['FromAddress']    = options[:from]           if options[:from]
      params['FromName']       = options[:from_name]      if options[:from_name]
      params['SenderAddress']  = options[:sender_address] if options[:sender_address]
      params['ToAddress']      = options[:to]             if options[:to]
      params['ReplyToAddress'] = options[:reply_address]  if options[:reply_address]
      params['CcAddress']      = options[:cc]             if options[:cc]
      params['BccAddress']     = options[:bcc]            if options[:bcc]
      params['Subject']        = options[:subject]        if options[:subject]
      params['HtmlBody']       = options[:html]           if options[:html]
      params['TextBody']       = options[:text]           if options[:text]
      params['Headers']        = options[:headers]        if options[:headers]
      params['Attachments']    = options[:attachments]    if options[:attachments]
      MotionYak::Request.post self.api_url('send/email/'), params do |json|
        b.call(json)
      end
    end
  end
end