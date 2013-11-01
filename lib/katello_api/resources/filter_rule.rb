module KatelloApi
  module Resources
    class FilterRule < KatelloApi::Base
      def self.doc
        @doc ||= KatelloApi.doc['resources']["filter_rules"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] content_view_definition_id Id of the content view definition
      # @option params [String] filter_id Name of the filter
      # @option params [Hash] rule
      #   allowed keys are:
      #   * content [String] Content type of the rule
      #   * inclusion [String, nil] True if its an includes rule, false otherwise. defauls to true
      #   * rule [String] A specification of the rule in json format (required).
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def create(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id Id of the filter rule
      # @option params [String] content_view_definition_id Id of the content view definition
      # @option params [String] filter_id Name of the filter
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def destroy(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

    end
  end
end
