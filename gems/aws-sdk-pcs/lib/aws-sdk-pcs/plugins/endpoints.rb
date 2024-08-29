# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PCS
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::PCS::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::PCS::EndpointParameters`'
      ) do |cfg|
        Aws::PCS::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)

            context[:endpoint_params] = params
            context[:endpoint_properties] = endpoint.properties
          end

          context[:auth_scheme] =
            Aws::Endpoints.resolve_auth_scheme(context, endpoint)

          @handler.call(context)
        end

        private

        def apply_endpoint_headers(context, headers)
          headers.each do |key, values|
            value = values
              .compact
              .map { |s| Seahorse::Util.escape_header_list_string(s.to_s) }
              .join(',')

            context.http_request.headers[key] = value
          end
        end

        def parameters_for_operation(context)
          case context.operation_name
          when :create_cluster
            Aws::PCS::Endpoints::CreateCluster.build(context)
          when :create_compute_node_group
            Aws::PCS::Endpoints::CreateComputeNodeGroup.build(context)
          when :create_queue
            Aws::PCS::Endpoints::CreateQueue.build(context)
          when :delete_cluster
            Aws::PCS::Endpoints::DeleteCluster.build(context)
          when :delete_compute_node_group
            Aws::PCS::Endpoints::DeleteComputeNodeGroup.build(context)
          when :delete_queue
            Aws::PCS::Endpoints::DeleteQueue.build(context)
          when :get_cluster
            Aws::PCS::Endpoints::GetCluster.build(context)
          when :get_compute_node_group
            Aws::PCS::Endpoints::GetComputeNodeGroup.build(context)
          when :get_queue
            Aws::PCS::Endpoints::GetQueue.build(context)
          when :list_clusters
            Aws::PCS::Endpoints::ListClusters.build(context)
          when :list_compute_node_groups
            Aws::PCS::Endpoints::ListComputeNodeGroups.build(context)
          when :list_queues
            Aws::PCS::Endpoints::ListQueues.build(context)
          when :list_tags_for_resource
            Aws::PCS::Endpoints::ListTagsForResource.build(context)
          when :register_compute_node_group_instance
            Aws::PCS::Endpoints::RegisterComputeNodeGroupInstance.build(context)
          when :tag_resource
            Aws::PCS::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::PCS::Endpoints::UntagResource.build(context)
          when :update_compute_node_group
            Aws::PCS::Endpoints::UpdateComputeNodeGroup.build(context)
          when :update_queue
            Aws::PCS::Endpoints::UpdateQueue.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end