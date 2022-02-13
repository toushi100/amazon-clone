class User < ApplicationRecord
    after_save do |job|
        p"===================================================================="
        p"this is the after save"
        SendingMailsJob.perform_later(self)
    end 
end
