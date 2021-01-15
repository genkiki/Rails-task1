class Record < ApplicationRecord
    validates :title, presence: true
    validates :start, presence: true
    validates :end, presence: true
    validate :start_end_check

    def start_end_check
        if self.start > self.end
            errors.add(:start, "開始日と終了日が矛盾しています。")
        end
    end
end
