# == Schema Information
#
# Table name: records
#
#  id                      :integer          not null, primary key
#  version                 :integer
#  current_holdings        :integer
#  previous_holdings       :integer
#  market_value            :decimal(, )
#  previous_market_value   :decimal(, )
#  pct_held                :decimal(, )
#  pct_portfolio           :string
#  market_capitalization   :string
#  q0_holding              :integer
#  q0_quarter              :datetime
#  q0_source               :string
#  q1_holding              :integer
#  q1_quarter              :datetime
#  q1_source               :string
#  q2_holding              :integer
#  q2_quarter              :datetime
#  q2_source               :string
#  q3_holding              :integer
#  q3_quarter              :datetime
#  q3_source               :string
#  q4_holding              :integer
#  q4_quarter              :datetime
#  q4_source               :string
#  q5_holding              :integer
#  q5_quarter              :datetime
#  q5_source               :string
#  q6_holding              :integer
#  q6_quarter              :datetime
#  q6_source               :string
#  q7_holding              :integer
#  q7_quarter              :datetime
#  q7_source               :string
#  q8_holding              :integer
#  q8_quarter              :datetime
#  q8_source               :string
#  p0_price                :decimal(, )
#  p1_price                :decimal(, )
#  p4_price                :decimal(, )
#  metro_area              :string
#  firm_name               :string
#  company_name            :string
#  ticker                  :string
#  q0_market_value         :decimal(, )
#  qoq_net_change_flow     :integer
#  yoy_net_change_flow     :integer
#  qoq_inflow              :integer
#  qoq_outflow             :integer
#  yoy_inflow              :integer
#  yoy_outflow             :integer
#  qoq_new_positions       :integer
#  qoq_soldout_positions   :integer
#  qoq_increased_positions :integer
#  qoq_decreased_positions :integer
#  qoq_net_position_change :integer
#  yoy_new_positions       :integer
#  yoy_soldout_positions   :integer
#  yoy_increased_positions :integer
#  yoy_decreased_positions :integer
#  yoy_net_position_change :integer
#  new_positions           :integer
#  soldout_positions       :integer
#  increased_positions     :integer
#  decreased_positions     :integer
#  net_position_change     :integer
#  factset_security_id     :integer
#  factset_entity_id       :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class Record < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  def self.record_column_names
    # @columns = Record.columns_hash.except!(:created_at, :updated_at, :id)
    column_names.reject { |x| %w(created_at updated_at id).include? x }
  end

  def self.latest_version_number
    search(filter: { match_all: {} }, sort: [{ version: { order: 'desc' } }], size: 1).to_a.first.version
  end

  def self.versions_count
    uniq.pluck(:version).count
  end

  # def self.search(query)
  # __elasticsearch__.search(
  #   {
  #     query: {
  #       multi_match: {
  #         query: query,
  #         fields: ['version']
  #       }
  #     },
  #     highlight: {
  #       pre_tags: ['<em class="label label-highlight">'],
  #       post_tags: ['</em>']
  #     }
  #   }
  # )
  # end
end
