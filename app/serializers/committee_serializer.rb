class CommitteeSerializer < ActiveModel::Serializer
    attributes :id, :name, :chair, :vice_chair, :ranking_member, :members, :chamber
end