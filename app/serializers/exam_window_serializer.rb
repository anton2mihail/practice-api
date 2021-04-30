class ExamWindowSerializer < ActiveModel::Serializer
  attributes :user_id, :exam_id, :start_time, :end_time
end
