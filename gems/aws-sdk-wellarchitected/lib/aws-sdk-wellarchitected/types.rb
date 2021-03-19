# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WellArchitected
  module Types

    # User does not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An answer of the question.
    #
    # @!attribute [rw] question_id
    #   The ID of the question.
    #   @return [String]
    #
    # @!attribute [rw] pillar_id
    #   The ID used to identify a pillar, for example, `security`.
    #
    #   A pillar is identified by its PillarReviewSummary$PillarId.
    #   @return [String]
    #
    # @!attribute [rw] question_title
    #   The title of the question.
    #   @return [String]
    #
    # @!attribute [rw] question_description
    #   The description of the question.
    #   @return [String]
    #
    # @!attribute [rw] improvement_plan_url
    #   The improvement plan URL for a question.
    #   @return [String]
    #
    # @!attribute [rw] helpful_resource_url
    #   The helpful resource URL for a question.
    #   @return [String]
    #
    # @!attribute [rw] choices
    #   List of choices available for a question.
    #   @return [Array<Types::Choice>]
    #
    # @!attribute [rw] selected_choices
    #   List of selected choice IDs in a question answer.
    #
    #   The values entered replace the previously selected choices.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_applicable
    #   Defines whether this question is applicable to a lens review.
    #   @return [Boolean]
    #
    # @!attribute [rw] risk
    #   The risk for a given workload, lens review, pillar, or question.
    #   @return [String]
    #
    # @!attribute [rw] notes
    #   The notes associated with the workload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/Answer AWS API Documentation
    #
    class Answer < Struct.new(
      :question_id,
      :pillar_id,
      :question_title,
      :question_description,
      :improvement_plan_url,
      :helpful_resource_url,
      :choices,
      :selected_choices,
      :is_applicable,
      :risk,
      :notes)
      SENSITIVE = []
      include Aws::Structure
    end

    # An answer summary of a lens review in a workload.
    #
    # @!attribute [rw] question_id
    #   The ID of the question.
    #   @return [String]
    #
    # @!attribute [rw] pillar_id
    #   The ID used to identify a pillar, for example, `security`.
    #
    #   A pillar is identified by its PillarReviewSummary$PillarId.
    #   @return [String]
    #
    # @!attribute [rw] question_title
    #   The title of the question.
    #   @return [String]
    #
    # @!attribute [rw] choices
    #   List of choices available for a question.
    #   @return [Array<Types::Choice>]
    #
    # @!attribute [rw] selected_choices
    #   List of selected choice IDs in a question answer.
    #
    #   The values entered replace the previously selected choices.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_applicable
    #   Defines whether this question is applicable to a lens review.
    #   @return [Boolean]
    #
    # @!attribute [rw] risk
    #   The risk for a given workload, lens review, pillar, or question.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/AnswerSummary AWS API Documentation
    #
    class AnswerSummary < Struct.new(
      :question_id,
      :pillar_id,
      :question_title,
      :choices,
      :selected_choices,
      :is_applicable,
      :risk)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to associate lens reviews.
    #
    # @note When making an API call, you may pass AssociateLensesInput
    #   data as a hash:
    #
    #       {
    #         workload_id: "WorkloadId", # required
    #         lens_aliases: ["LensAlias"], # required
    #       }
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_aliases
    #   List of lens aliases to associate or disassociate with a workload.
    #
    #   Identify a lens using its LensSummary$LensAlias.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/AssociateLensesInput AWS API Documentation
    #
    class AssociateLensesInput < Struct.new(
      :workload_id,
      :lens_aliases)
      SENSITIVE = []
      include Aws::Structure
    end

    # A choice available to answer question.
    #
    # @!attribute [rw] choice_id
    #   The ID of a choice.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of a choice.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of a choice.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/Choice AWS API Documentation
    #
    class Choice < Struct.new(
      :choice_id,
      :title,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource already exists.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the resource affected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for milestone creation.
    #
    # @note When making an API call, you may pass CreateMilestoneInput
    #   data as a hash:
    #
    #       {
    #         workload_id: "WorkloadId", # required
    #         milestone_name: "MilestoneName", # required
    #         client_request_token: "ClientRequestToken", # required
    #       }
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone_name
    #   The name of the milestone in a workload.
    #
    #   Milestone names must be unique within a workload.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry
    #   a request with the same client request token and the same parameters
    #   after it has completed successfully, the result of the original
    #   request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the AWS SDKs automatically generate one for you. If you are not
    #   using the AWS SDK or the AWS CLI, you must provide this token or the
    #   request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateMilestoneInput AWS API Documentation
    #
    class CreateMilestoneInput < Struct.new(
      :workload_id,
      :milestone_name,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a create milestone call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateMilestoneOutput AWS API Documentation
    #
    class CreateMilestoneOutput < Struct.new(
      :workload_id,
      :milestone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for workload creation.
    #
    # @note When making an API call, you may pass CreateWorkloadInput
    #   data as a hash:
    #
    #       {
    #         workload_name: "WorkloadName", # required
    #         description: "WorkloadDescription", # required
    #         environment: "PRODUCTION", # required, accepts PRODUCTION, PREPRODUCTION
    #         account_ids: ["AwsAccountId"],
    #         aws_regions: ["AwsRegion"],
    #         non_aws_regions: ["WorkloadNonAwsRegion"],
    #         pillar_priorities: ["PillarId"],
    #         architectural_design: "WorkloadArchitecturalDesign",
    #         review_owner: "WorkloadReviewOwner", # required
    #         industry_type: "WorkloadIndustryType",
    #         industry: "WorkloadIndustry",
    #         lenses: ["LensAlias"], # required
    #         notes: "Notes",
    #         client_request_token: "ClientRequestToken", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #
    #   The name must be unique within an account within a Region. Spaces
    #   and capitalization are ignored when checking for uniqueness.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the workload.
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   The environment for the workload.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   The list of AWS account IDs associated with the workload.
    #   @return [Array<String>]
    #
    # @!attribute [rw] aws_regions
    #   The list of AWS Regions associated with the workload, for example,
    #   `us-east-2`, or `ca-central-1`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] non_aws_regions
    #   The list of non-AWS Regions associated with the workload.
    #   @return [Array<String>]
    #
    # @!attribute [rw] pillar_priorities
    #   The priorities of the pillars, which are used to order items in the
    #   improvement plan. Each pillar is represented by its
    #   PillarReviewSummary$PillarId.
    #   @return [Array<String>]
    #
    # @!attribute [rw] architectural_design
    #   The URL of the architectural design for the workload.
    #   @return [String]
    #
    # @!attribute [rw] review_owner
    #   The review owner of the workload. The name, email address, or
    #   identifier for the primary group or individual that owns the
    #   workload review process.
    #   @return [String]
    #
    # @!attribute [rw] industry_type
    #   The industry type for the workload.
    #
    #   If specified, must be one of the following:
    #
    #   * `Agriculture`
    #
    #   * `Automobile`
    #
    #   * `Defense`
    #
    #   * `Design and Engineering`
    #
    #   * `Digital Advertising`
    #
    #   * `Education`
    #
    #   * `Environmental Protection`
    #
    #   * `Financial Services`
    #
    #   * `Gaming`
    #
    #   * `General Public Services`
    #
    #   * `Healthcare`
    #
    #   * `Hospitality`
    #
    #   * `InfoTech`
    #
    #   * `Justice and Public Safety`
    #
    #   * `Life Sciences`
    #
    #   * `Manufacturing`
    #
    #   * `Media & Entertainment`
    #
    #   * `Mining & Resources`
    #
    #   * `Oil & Gas`
    #
    #   * `Power & Utilities`
    #
    #   * `Professional Services`
    #
    #   * `Real Estate & Construction`
    #
    #   * `Retail & Wholesale`
    #
    #   * `Social Protection`
    #
    #   * `Telecommunications`
    #
    #   * `Travel, Transportation & Logistics`
    #
    #   * `Other`
    #   @return [String]
    #
    # @!attribute [rw] industry
    #   The industry for the workload.
    #   @return [String]
    #
    # @!attribute [rw] lenses
    #   The list of lenses associated with the workload. Each lens is
    #   identified by its LensSummary$LensAlias.
    #   @return [Array<String>]
    #
    # @!attribute [rw] notes
    #   The notes associated with the workload.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry
    #   a request with the same client request token and the same parameters
    #   after it has completed successfully, the result of the original
    #   request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the AWS SDKs automatically generate one for you. If you are not
    #   using the AWS SDK or the AWS CLI, you must provide this token or the
    #   request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be associated with the workload.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateWorkloadInput AWS API Documentation
    #
    class CreateWorkloadInput < Struct.new(
      :workload_name,
      :description,
      :environment,
      :account_ids,
      :aws_regions,
      :non_aws_regions,
      :pillar_priorities,
      :architectural_design,
      :review_owner,
      :industry_type,
      :industry,
      :lenses,
      :notes,
      :client_request_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a create workload call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] workload_arn
    #   The ARN for the workload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateWorkloadOutput AWS API Documentation
    #
    class CreateWorkloadOutput < Struct.new(
      :workload_id,
      :workload_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for Create Workload Share
    #
    # @note When making an API call, you may pass CreateWorkloadShareInput
    #   data as a hash:
    #
    #       {
    #         workload_id: "WorkloadId", # required
    #         shared_with: "SharedWith", # required
    #         permission_type: "READONLY", # required, accepts READONLY, CONTRIBUTOR
    #         client_request_token: "ClientRequestToken", # required
    #       }
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] shared_with
    #   The AWS account ID or IAM role with which the workload is shared.
    #   @return [String]
    #
    # @!attribute [rw] permission_type
    #   Permission granted on a workload share.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry
    #   a request with the same client request token and the same parameters
    #   after it has completed successfully, the result of the original
    #   request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the AWS SDKs automatically generate one for you. If you are not
    #   using the AWS SDK or the AWS CLI, you must provide this token or the
    #   request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateWorkloadShareInput AWS API Documentation
    #
    class CreateWorkloadShareInput < Struct.new(
      :workload_id,
      :shared_with,
      :permission_type,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for Create Workload Share
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] share_id
    #   The ID associated with the workload share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateWorkloadShareOutput AWS API Documentation
    #
    class CreateWorkloadShareOutput < Struct.new(
      :workload_id,
      :share_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for workload deletion.
    #
    # @note When making an API call, you may pass DeleteWorkloadInput
    #   data as a hash:
    #
    #       {
    #         workload_id: "WorkloadId", # required
    #         client_request_token: "ClientRequestToken", # required
    #       }
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry
    #   a request with the same client request token and the same parameters
    #   after it has completed successfully, the result of the original
    #   request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the AWS SDKs automatically generate one for you. If you are not
    #   using the AWS SDK or the AWS CLI, you must provide this token or the
    #   request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DeleteWorkloadInput AWS API Documentation
    #
    class DeleteWorkloadInput < Struct.new(
      :workload_id,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for Delete Workload Share
    #
    # @note When making an API call, you may pass DeleteWorkloadShareInput
    #   data as a hash:
    #
    #       {
    #         share_id: "ShareId", # required
    #         workload_id: "WorkloadId", # required
    #         client_request_token: "ClientRequestToken", # required
    #       }
    #
    # @!attribute [rw] share_id
    #   The ID associated with the workload share.
    #   @return [String]
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry
    #   a request with the same client request token and the same parameters
    #   after it has completed successfully, the result of the original
    #   request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the AWS SDKs automatically generate one for you. If you are not
    #   using the AWS SDK or the AWS CLI, you must provide this token or the
    #   request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DeleteWorkloadShareInput AWS API Documentation
    #
    class DeleteWorkloadShareInput < Struct.new(
      :share_id,
      :workload_id,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to disassociate lens reviews.
    #
    # @note When making an API call, you may pass DisassociateLensesInput
    #   data as a hash:
    #
    #       {
    #         workload_id: "WorkloadId", # required
    #         lens_aliases: ["LensAlias"], # required
    #       }
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_aliases
    #   List of lens aliases to associate or disassociate with a workload.
    #
    #   Identify a lens using its LensSummary$LensAlias.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DisassociateLensesInput AWS API Documentation
    #
    class DisassociateLensesInput < Struct.new(
      :workload_id,
      :lens_aliases)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to get answer.
    #
    # @note When making an API call, you may pass GetAnswerInput
    #   data as a hash:
    #
    #       {
    #         workload_id: "WorkloadId", # required
    #         lens_alias: "LensAlias", # required
    #         question_id: "QuestionId", # required
    #         milestone_number: 1,
    #       }
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] question_id
    #   The ID of the question.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetAnswerInput AWS API Documentation
    #
    class GetAnswerInput < Struct.new(
      :workload_id,
      :lens_alias,
      :question_id,
      :milestone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a get answer call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] answer
    #   An answer of the question.
    #   @return [Types::Answer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetAnswerOutput AWS API Documentation
    #
    class GetAnswerOutput < Struct.new(
      :workload_id,
      :milestone_number,
      :lens_alias,
      :answer)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to get lens review.
    #
    # @note When making an API call, you may pass GetLensReviewInput
    #   data as a hash:
    #
    #       {
    #         workload_id: "WorkloadId", # required
    #         lens_alias: "LensAlias", # required
    #         milestone_number: 1,
    #       }
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetLensReviewInput AWS API Documentation
    #
    class GetLensReviewInput < Struct.new(
      :workload_id,
      :lens_alias,
      :milestone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a get lens review call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @!attribute [rw] lens_review
    #   A lens review of a question.
    #   @return [Types::LensReview]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetLensReviewOutput AWS API Documentation
    #
    class GetLensReviewOutput < Struct.new(
      :workload_id,
      :milestone_number,
      :lens_review)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to get lens review report.
    #
    # @note When making an API call, you may pass GetLensReviewReportInput
    #   data as a hash:
    #
    #       {
    #         workload_id: "WorkloadId", # required
    #         lens_alias: "LensAlias", # required
    #         milestone_number: 1,
    #       }
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetLensReviewReportInput AWS API Documentation
    #
    class GetLensReviewReportInput < Struct.new(
      :workload_id,
      :lens_alias,
      :milestone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a get lens review report call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @!attribute [rw] lens_review_report
    #   A report of a lens review.
    #   @return [Types::LensReviewReport]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetLensReviewReportOutput AWS API Documentation
    #
    class GetLensReviewReportOutput < Struct.new(
      :workload_id,
      :milestone_number,
      :lens_review_report)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLensVersionDifferenceInput
    #   data as a hash:
    #
    #       {
    #         lens_alias: "LensAlias", # required
    #         base_lens_version: "LensVersion", # required
    #       }
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] base_lens_version
    #   The base version of the lens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetLensVersionDifferenceInput AWS API Documentation
    #
    class GetLensVersionDifferenceInput < Struct.new(
      :lens_alias,
      :base_lens_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] base_lens_version
    #   The base version of the lens.
    #   @return [String]
    #
    # @!attribute [rw] latest_lens_version
    #   The latest version of the lens.
    #   @return [String]
    #
    # @!attribute [rw] version_differences
    #   The differences between the base and latest versions of the lens.
    #   @return [Types::VersionDifferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetLensVersionDifferenceOutput AWS API Documentation
    #
    class GetLensVersionDifferenceOutput < Struct.new(
      :lens_alias,
      :base_lens_version,
      :latest_lens_version,
      :version_differences)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to get a milestone.
    #
    # @note When making an API call, you may pass GetMilestoneInput
    #   data as a hash:
    #
    #       {
    #         workload_id: "WorkloadId", # required
    #         milestone_number: 1, # required
    #       }
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetMilestoneInput AWS API Documentation
    #
    class GetMilestoneInput < Struct.new(
      :workload_id,
      :milestone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a get milestone call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone
    #   A milestone return object.
    #   @return [Types::Milestone]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetMilestoneOutput AWS API Documentation
    #
    class GetMilestoneOutput < Struct.new(
      :workload_id,
      :milestone)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to get a workload.
    #
    # @note When making an API call, you may pass GetWorkloadInput
    #   data as a hash:
    #
    #       {
    #         workload_id: "WorkloadId", # required
    #       }
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetWorkloadInput AWS API Documentation
    #
    class GetWorkloadInput < Struct.new(
      :workload_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a get workload call.
    #
    # @!attribute [rw] workload
    #   A workload return object.
    #   @return [Types::Workload]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetWorkloadOutput AWS API Documentation
    #
    class GetWorkloadOutput < Struct.new(
      :workload)
      SENSITIVE = []
      include Aws::Structure
    end

    # An improvement summary of a lens review in a workload.
    #
    # @!attribute [rw] question_id
    #   The ID of the question.
    #   @return [String]
    #
    # @!attribute [rw] pillar_id
    #   The ID used to identify a pillar, for example, `security`.
    #
    #   A pillar is identified by its PillarReviewSummary$PillarId.
    #   @return [String]
    #
    # @!attribute [rw] question_title
    #   The title of the question.
    #   @return [String]
    #
    # @!attribute [rw] risk
    #   The risk for a given workload, lens review, pillar, or question.
    #   @return [String]
    #
    # @!attribute [rw] improvement_plan_url
    #   The improvement plan URL for a question.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ImprovementSummary AWS API Documentation
    #
    class ImprovementSummary < Struct.new(
      :question_id,
      :pillar_id,
      :question_title,
      :risk,
      :improvement_plan_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # There is a problem with the AWS Well-Architected Tool API service.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A lens review of a question.
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] lens_version
    #   The version of the lens.
    #   @return [String]
    #
    # @!attribute [rw] lens_name
    #   The full name of the lens.
    #   @return [String]
    #
    # @!attribute [rw] lens_status
    #   The status of the lens.
    #   @return [String]
    #
    # @!attribute [rw] pillar_review_summaries
    #   List of pillar review summaries of lens review in a workload.
    #   @return [Array<Types::PillarReviewSummary>]
    #
    # @!attribute [rw] updated_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @!attribute [rw] notes
    #   The notes associated with the workload.
    #   @return [String]
    #
    # @!attribute [rw] risk_counts
    #   A map from risk names to the count of how questions have that
    #   rating.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/LensReview AWS API Documentation
    #
    class LensReview < Struct.new(
      :lens_alias,
      :lens_version,
      :lens_name,
      :lens_status,
      :pillar_review_summaries,
      :updated_at,
      :notes,
      :risk_counts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A report of a lens review.
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] base_64_string
    #   The Base64-encoded string representation of a lens review report.
    #
    #   This data can be used to create a PDF file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/LensReviewReport AWS API Documentation
    #
    class LensReviewReport < Struct.new(
      :lens_alias,
      :base_64_string)
      SENSITIVE = []
      include Aws::Structure
    end

    # A lens review summary of a workload.
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] lens_version
    #   The version of the lens.
    #   @return [String]
    #
    # @!attribute [rw] lens_name
    #   The full name of the lens.
    #   @return [String]
    #
    # @!attribute [rw] lens_status
    #   The status of the lens.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @!attribute [rw] risk_counts
    #   A map from risk names to the count of how questions have that
    #   rating.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/LensReviewSummary AWS API Documentation
    #
    class LensReviewSummary < Struct.new(
      :lens_alias,
      :lens_version,
      :lens_name,
      :lens_status,
      :updated_at,
      :risk_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # A lens summary of a lens.
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] lens_version
    #   The version of the lens.
    #   @return [String]
    #
    # @!attribute [rw] lens_name
    #   The full name of the lens.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the lens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/LensSummary AWS API Documentation
    #
    class LensSummary < Struct.new(
      :lens_alias,
      :lens_version,
      :lens_name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lens upgrade summary return object.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #
    #   The name must be unique within an account within a Region. Spaces
    #   and capitalization are ignored when checking for uniqueness.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] current_lens_version
    #   The current version of the lens.
    #   @return [String]
    #
    # @!attribute [rw] latest_lens_version
    #   The latest version of the lens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/LensUpgradeSummary AWS API Documentation
    #
    class LensUpgradeSummary < Struct.new(
      :workload_id,
      :workload_name,
      :lens_alias,
      :current_lens_version,
      :latest_lens_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to list answers.
    #
    # @note When making an API call, you may pass ListAnswersInput
    #   data as a hash:
    #
    #       {
    #         workload_id: "WorkloadId", # required
    #         lens_alias: "LensAlias", # required
    #         pillar_id: "PillarId",
    #         milestone_number: 1,
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] pillar_id
    #   The ID used to identify a pillar, for example, `security`.
    #
    #   A pillar is identified by its PillarReviewSummary$PillarId.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListAnswersInput AWS API Documentation
    #
    class ListAnswersInput < Struct.new(
      :workload_id,
      :lens_alias,
      :pillar_id,
      :milestone_number,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a list answers call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] answer_summaries
    #   List of answer summaries of lens review in a workload.
    #   @return [Array<Types::AnswerSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListAnswersOutput AWS API Documentation
    #
    class ListAnswersOutput < Struct.new(
      :workload_id,
      :milestone_number,
      :lens_alias,
      :answer_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to list lens review improvements.
    #
    # @note When making an API call, you may pass ListLensReviewImprovementsInput
    #   data as a hash:
    #
    #       {
    #         workload_id: "WorkloadId", # required
    #         lens_alias: "LensAlias", # required
    #         pillar_id: "PillarId",
    #         milestone_number: 1,
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] pillar_id
    #   The ID used to identify a pillar, for example, `security`.
    #
    #   A pillar is identified by its PillarReviewSummary$PillarId.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListLensReviewImprovementsInput AWS API Documentation
    #
    class ListLensReviewImprovementsInput < Struct.new(
      :workload_id,
      :lens_alias,
      :pillar_id,
      :milestone_number,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a list lens review improvements call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] improvement_summaries
    #   List of improvement summaries of lens review in a workload.
    #   @return [Array<Types::ImprovementSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListLensReviewImprovementsOutput AWS API Documentation
    #
    class ListLensReviewImprovementsOutput < Struct.new(
      :workload_id,
      :milestone_number,
      :lens_alias,
      :improvement_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to list lens reviews.
    #
    # @note When making an API call, you may pass ListLensReviewsInput
    #   data as a hash:
    #
    #       {
    #         workload_id: "WorkloadId", # required
    #         milestone_number: 1,
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListLensReviewsInput AWS API Documentation
    #
    class ListLensReviewsInput < Struct.new(
      :workload_id,
      :milestone_number,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a list lens reviews call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @!attribute [rw] lens_review_summaries
    #   List of lens summaries of lens reviews of a workload.
    #   @return [Array<Types::LensReviewSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListLensReviewsOutput AWS API Documentation
    #
    class ListLensReviewsOutput < Struct.new(
      :workload_id,
      :milestone_number,
      :lens_review_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to list lenses.
    #
    # @note When making an API call, you may pass ListLensesInput
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListLensesInput AWS API Documentation
    #
    class ListLensesInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a list lenses call.
    #
    # @!attribute [rw] lens_summaries
    #   List of lens summaries of available lenses.
    #   @return [Array<Types::LensSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListLensesOutput AWS API Documentation
    #
    class ListLensesOutput < Struct.new(
      :lens_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to list all milestones for a workload.
    #
    # @note When making an API call, you may pass ListMilestonesInput
    #   data as a hash:
    #
    #       {
    #         workload_id: "WorkloadId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListMilestonesInput AWS API Documentation
    #
    class ListMilestonesInput < Struct.new(
      :workload_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a list milestones call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone_summaries
    #   A list of milestone summaries.
    #   @return [Array<Types::MilestoneSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListMilestonesOutput AWS API Documentation
    #
    class ListMilestonesOutput < Struct.new(
      :workload_id,
      :milestone_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListNotificationsInput
    #   data as a hash:
    #
    #       {
    #         workload_id: "WorkloadId",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListNotificationsInput AWS API Documentation
    #
    class ListNotificationsInput < Struct.new(
      :workload_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notification_summaries
    #   List of lens notification summaries in a workload.
    #   @return [Array<Types::NotificationSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListNotificationsOutput AWS API Documentation
    #
    class ListNotificationsOutput < Struct.new(
      :notification_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for List Share Invitations
    #
    # @note When making an API call, you may pass ListShareInvitationsInput
    #   data as a hash:
    #
    #       {
    #         workload_name_prefix: "WorkloadNamePrefix",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] workload_name_prefix
    #   An optional string added to the beginning of each workload name
    #   returned in the results.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListShareInvitationsInput AWS API Documentation
    #
    class ListShareInvitationsInput < Struct.new(
      :workload_name_prefix,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for List Share Invitations
    #
    # @!attribute [rw] share_invitation_summaries
    #   List of share invitation summaries in a workload.
    #   @return [Array<Types::ShareInvitationSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListShareInvitationsOutput AWS API Documentation
    #
    class ListShareInvitationsOutput < Struct.new(
      :share_invitation_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceInput
    #   data as a hash:
    #
    #       {
    #         workload_arn: "WorkloadArn", # required
    #       }
    #
    # @!attribute [rw] workload_arn
    #   The ARN for the workload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :workload_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for List Workload Share
    #
    # @note When making an API call, you may pass ListWorkloadSharesInput
    #   data as a hash:
    #
    #       {
    #         workload_id: "WorkloadId", # required
    #         shared_with_prefix: "SharedWithPrefix",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] shared_with_prefix
    #   The AWS account ID or IAM role with which the workload is shared.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListWorkloadSharesInput AWS API Documentation
    #
    class ListWorkloadSharesInput < Struct.new(
      :workload_id,
      :shared_with_prefix,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for List Workload Share
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] workload_share_summaries
    #   A list of workload share summaries.
    #   @return [Array<Types::WorkloadShareSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListWorkloadSharesOutput AWS API Documentation
    #
    class ListWorkloadSharesOutput < Struct.new(
      :workload_id,
      :workload_share_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to list all workloads.
    #
    # @note When making an API call, you may pass ListWorkloadsInput
    #   data as a hash:
    #
    #       {
    #         workload_name_prefix: "WorkloadNamePrefix",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] workload_name_prefix
    #   An optional string added to the beginning of each workload name
    #   returned in the results.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListWorkloadsInput AWS API Documentation
    #
    class ListWorkloadsInput < Struct.new(
      :workload_name_prefix,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a list workloads call.
    #
    # @!attribute [rw] workload_summaries
    #   A list of workload summaries.
    #   @return [Array<Types::WorkloadSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListWorkloadsOutput AWS API Documentation
    #
    class ListWorkloadsOutput < Struct.new(
      :workload_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A milestone return object.
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @!attribute [rw] milestone_name
    #   The name of the milestone in a workload.
    #
    #   Milestone names must be unique within a workload.
    #   @return [String]
    #
    # @!attribute [rw] recorded_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @!attribute [rw] workload
    #   A workload return object.
    #   @return [Types::Workload]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/Milestone AWS API Documentation
    #
    class Milestone < Struct.new(
      :milestone_number,
      :milestone_name,
      :recorded_at,
      :workload)
      SENSITIVE = []
      include Aws::Structure
    end

    # A milestone summary return object.
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @!attribute [rw] milestone_name
    #   The name of the milestone in a workload.
    #
    #   Milestone names must be unique within a workload.
    #   @return [String]
    #
    # @!attribute [rw] recorded_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @!attribute [rw] workload_summary
    #   A workload summary return object.
    #   @return [Types::WorkloadSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/MilestoneSummary AWS API Documentation
    #
    class MilestoneSummary < Struct.new(
      :milestone_number,
      :milestone_name,
      :recorded_at,
      :workload_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # A notification summary return object.
    #
    # @!attribute [rw] type
    #   The type of notification.
    #   @return [String]
    #
    # @!attribute [rw] lens_upgrade_summary
    #   Summary of lens upgrade.
    #   @return [Types::LensUpgradeSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/NotificationSummary AWS API Documentation
    #
    class NotificationSummary < Struct.new(
      :type,
      :lens_upgrade_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # A pillar difference return object.
    #
    # @!attribute [rw] pillar_id
    #   The ID used to identify a pillar, for example, `security`.
    #
    #   A pillar is identified by its PillarReviewSummary$PillarId.
    #   @return [String]
    #
    # @!attribute [rw] difference_status
    #   Indicates the type of change to the pillar.
    #   @return [String]
    #
    # @!attribute [rw] question_differences
    #   List of question differences.
    #   @return [Array<Types::QuestionDifference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/PillarDifference AWS API Documentation
    #
    class PillarDifference < Struct.new(
      :pillar_id,
      :difference_status,
      :question_differences)
      SENSITIVE = []
      include Aws::Structure
    end

    # A pillar review summary of a lens review.
    #
    # @!attribute [rw] pillar_id
    #   The ID used to identify a pillar, for example, `security`.
    #
    #   A pillar is identified by its PillarReviewSummary$PillarId.
    #   @return [String]
    #
    # @!attribute [rw] pillar_name
    #   The name of the pillar.
    #   @return [String]
    #
    # @!attribute [rw] notes
    #   The notes associated with the workload.
    #   @return [String]
    #
    # @!attribute [rw] risk_counts
    #   A map from risk names to the count of how questions have that
    #   rating.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/PillarReviewSummary AWS API Documentation
    #
    class PillarReviewSummary < Struct.new(
      :pillar_id,
      :pillar_name,
      :notes,
      :risk_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # A question difference return object.
    #
    # @!attribute [rw] question_id
    #   The ID of the question.
    #   @return [String]
    #
    # @!attribute [rw] question_title
    #   The title of the question.
    #   @return [String]
    #
    # @!attribute [rw] difference_status
    #   Indicates the type of change to the question.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/QuestionDifference AWS API Documentation
    #
    class QuestionDifference < Struct.new(
      :question_id,
      :question_title,
      :difference_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource was not found.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the resource affected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user has reached their resource quota.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Service Quotas requirement to identify originating quota.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Service Quotas requirement to identify originating service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :quota_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The share invitation.
    #
    # @!attribute [rw] share_invitation_id
    #   The ID assigned to the share invitation.
    #   @return [String]
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ShareInvitation AWS API Documentation
    #
    class ShareInvitation < Struct.new(
      :share_invitation_id,
      :workload_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A share invitation summary return object.
    #
    # @!attribute [rw] share_invitation_id
    #   The ID assigned to the share invitation.
    #   @return [String]
    #
    # @!attribute [rw] shared_by
    #   An AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] shared_with
    #   The AWS account ID or IAM role with which the workload is shared.
    #   @return [String]
    #
    # @!attribute [rw] permission_type
    #   Permission granted on a workload share.
    #   @return [String]
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #
    #   The name must be unique within an account within a Region. Spaces
    #   and capitalization are ignored when checking for uniqueness.
    #   @return [String]
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ShareInvitationSummary AWS API Documentation
    #
    class ShareInvitationSummary < Struct.new(
      :share_invitation_id,
      :shared_by,
      :shared_with,
      :permission_type,
      :workload_name,
      :workload_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceInput
    #   data as a hash:
    #
    #       {
    #         workload_arn: "WorkloadArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] workload_arn
    #   The ARN for the workload.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :workload_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # Request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Service Quotas requirement to identify originating quota.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Service Quotas requirement to identify originating service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceInput
    #   data as a hash:
    #
    #       {
    #         workload_arn: "WorkloadArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] workload_arn
    #   The ARN for the workload.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :workload_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # Input to update answer.
    #
    # @note When making an API call, you may pass UpdateAnswerInput
    #   data as a hash:
    #
    #       {
    #         workload_id: "WorkloadId", # required
    #         lens_alias: "LensAlias", # required
    #         question_id: "QuestionId", # required
    #         selected_choices: ["ChoiceId"],
    #         notes: "Notes",
    #         is_applicable: false,
    #       }
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] question_id
    #   The ID of the question.
    #   @return [String]
    #
    # @!attribute [rw] selected_choices
    #   List of selected choice IDs in a question answer.
    #
    #   The values entered replace the previously selected choices.
    #   @return [Array<String>]
    #
    # @!attribute [rw] notes
    #   The notes associated with the workload.
    #   @return [String]
    #
    # @!attribute [rw] is_applicable
    #   Defines whether this question is applicable to a lens review.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateAnswerInput AWS API Documentation
    #
    class UpdateAnswerInput < Struct.new(
      :workload_id,
      :lens_alias,
      :question_id,
      :selected_choices,
      :notes,
      :is_applicable)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a update answer call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] answer
    #   An answer of the question.
    #   @return [Types::Answer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateAnswerOutput AWS API Documentation
    #
    class UpdateAnswerOutput < Struct.new(
      :workload_id,
      :lens_alias,
      :answer)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for update lens review.
    #
    # @note When making an API call, you may pass UpdateLensReviewInput
    #   data as a hash:
    #
    #       {
    #         workload_id: "WorkloadId", # required
    #         lens_alias: "LensAlias", # required
    #         lens_notes: "Notes",
    #         pillar_notes: {
    #           "PillarId" => "Notes",
    #         },
    #       }
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] lens_notes
    #   The notes associated with the workload.
    #   @return [String]
    #
    # @!attribute [rw] pillar_notes
    #   List of pillar notes of a lens review in a workload.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateLensReviewInput AWS API Documentation
    #
    class UpdateLensReviewInput < Struct.new(
      :workload_id,
      :lens_alias,
      :lens_notes,
      :pillar_notes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a update lens review call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_review
    #   A lens review of a question.
    #   @return [Types::LensReview]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateLensReviewOutput AWS API Documentation
    #
    class UpdateLensReviewOutput < Struct.new(
      :workload_id,
      :lens_review)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for Update Share Invitation
    #
    # @note When making an API call, you may pass UpdateShareInvitationInput
    #   data as a hash:
    #
    #       {
    #         share_invitation_id: "ShareInvitationId", # required
    #         share_invitation_action: "ACCEPT", # required, accepts ACCEPT, REJECT
    #       }
    #
    # @!attribute [rw] share_invitation_id
    #   The ID assigned to the share invitation.
    #   @return [String]
    #
    # @!attribute [rw] share_invitation_action
    #   Share invitation action taken by contributor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateShareInvitationInput AWS API Documentation
    #
    class UpdateShareInvitationInput < Struct.new(
      :share_invitation_id,
      :share_invitation_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] share_invitation
    #   The updated workload share invitation.
    #   @return [Types::ShareInvitation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateShareInvitationOutput AWS API Documentation
    #
    class UpdateShareInvitationOutput < Struct.new(
      :share_invitation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to update a workload.
    #
    # @note When making an API call, you may pass UpdateWorkloadInput
    #   data as a hash:
    #
    #       {
    #         workload_id: "WorkloadId", # required
    #         workload_name: "WorkloadName",
    #         description: "WorkloadDescription",
    #         environment: "PRODUCTION", # accepts PRODUCTION, PREPRODUCTION
    #         account_ids: ["AwsAccountId"],
    #         aws_regions: ["AwsRegion"],
    #         non_aws_regions: ["WorkloadNonAwsRegion"],
    #         pillar_priorities: ["PillarId"],
    #         architectural_design: "WorkloadArchitecturalDesign",
    #         review_owner: "WorkloadReviewOwner",
    #         is_review_owner_update_acknowledged: false,
    #         industry_type: "WorkloadIndustryType",
    #         industry: "WorkloadIndustry",
    #         notes: "Notes",
    #         improvement_status: "NOT_APPLICABLE", # accepts NOT_APPLICABLE, NOT_STARTED, IN_PROGRESS, COMPLETE, RISK_ACKNOWLEDGED
    #       }
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #
    #   The name must be unique within an account within a Region. Spaces
    #   and capitalization are ignored when checking for uniqueness.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the workload.
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   The environment for the workload.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   The list of AWS account IDs associated with the workload.
    #   @return [Array<String>]
    #
    # @!attribute [rw] aws_regions
    #   The list of AWS Regions associated with the workload, for example,
    #   `us-east-2`, or `ca-central-1`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] non_aws_regions
    #   The list of non-AWS Regions associated with the workload.
    #   @return [Array<String>]
    #
    # @!attribute [rw] pillar_priorities
    #   The priorities of the pillars, which are used to order items in the
    #   improvement plan. Each pillar is represented by its
    #   PillarReviewSummary$PillarId.
    #   @return [Array<String>]
    #
    # @!attribute [rw] architectural_design
    #   The URL of the architectural design for the workload.
    #   @return [String]
    #
    # @!attribute [rw] review_owner
    #   The review owner of the workload. The name, email address, or
    #   identifier for the primary group or individual that owns the
    #   workload review process.
    #   @return [String]
    #
    # @!attribute [rw] is_review_owner_update_acknowledged
    #   Flag indicating whether the workload owner has acknowledged that the
    #   *Review owner* field is required.
    #
    #   If a **Review owner** is not added to the workload within 60 days of
    #   acknowledgement, access to the workload is restricted until an owner
    #   is added.
    #   @return [Boolean]
    #
    # @!attribute [rw] industry_type
    #   The industry type for the workload.
    #
    #   If specified, must be one of the following:
    #
    #   * `Agriculture`
    #
    #   * `Automobile`
    #
    #   * `Defense`
    #
    #   * `Design and Engineering`
    #
    #   * `Digital Advertising`
    #
    #   * `Education`
    #
    #   * `Environmental Protection`
    #
    #   * `Financial Services`
    #
    #   * `Gaming`
    #
    #   * `General Public Services`
    #
    #   * `Healthcare`
    #
    #   * `Hospitality`
    #
    #   * `InfoTech`
    #
    #   * `Justice and Public Safety`
    #
    #   * `Life Sciences`
    #
    #   * `Manufacturing`
    #
    #   * `Media & Entertainment`
    #
    #   * `Mining & Resources`
    #
    #   * `Oil & Gas`
    #
    #   * `Power & Utilities`
    #
    #   * `Professional Services`
    #
    #   * `Real Estate & Construction`
    #
    #   * `Retail & Wholesale`
    #
    #   * `Social Protection`
    #
    #   * `Telecommunications`
    #
    #   * `Travel, Transportation & Logistics`
    #
    #   * `Other`
    #   @return [String]
    #
    # @!attribute [rw] industry
    #   The industry for the workload.
    #   @return [String]
    #
    # @!attribute [rw] notes
    #   The notes associated with the workload.
    #   @return [String]
    #
    # @!attribute [rw] improvement_status
    #   The improvement status for a workload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateWorkloadInput AWS API Documentation
    #
    class UpdateWorkloadInput < Struct.new(
      :workload_id,
      :workload_name,
      :description,
      :environment,
      :account_ids,
      :aws_regions,
      :non_aws_regions,
      :pillar_priorities,
      :architectural_design,
      :review_owner,
      :is_review_owner_update_acknowledged,
      :industry_type,
      :industry,
      :notes,
      :improvement_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of an update workload call.
    #
    # @!attribute [rw] workload
    #   A workload return object.
    #   @return [Types::Workload]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateWorkloadOutput AWS API Documentation
    #
    class UpdateWorkloadOutput < Struct.new(
      :workload)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for Update Workload Share
    #
    # @note When making an API call, you may pass UpdateWorkloadShareInput
    #   data as a hash:
    #
    #       {
    #         share_id: "ShareId", # required
    #         workload_id: "WorkloadId", # required
    #         permission_type: "READONLY", # required, accepts READONLY, CONTRIBUTOR
    #       }
    #
    # @!attribute [rw] share_id
    #   The ID associated with the workload share.
    #   @return [String]
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] permission_type
    #   Permission granted on a workload share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateWorkloadShareInput AWS API Documentation
    #
    class UpdateWorkloadShareInput < Struct.new(
      :share_id,
      :workload_id,
      :permission_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for Update Workload Share
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] workload_share
    #   A workload share return object.
    #   @return [Types::WorkloadShare]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateWorkloadShareOutput AWS API Documentation
    #
    class UpdateWorkloadShareOutput < Struct.new(
      :workload_id,
      :workload_share)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpgradeLensReviewInput
    #   data as a hash:
    #
    #       {
    #         workload_id: "WorkloadId", # required
    #         lens_alias: "LensAlias", # required
    #         milestone_name: "MilestoneName", # required
    #         client_request_token: "ClientRequestToken",
    #       }
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] milestone_name
    #   The name of the milestone in a workload.
    #
    #   Milestone names must be unique within a workload.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry
    #   a request with the same client request token and the same parameters
    #   after it has completed successfully, the result of the original
    #   request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the AWS SDKs automatically generate one for you. If you are not
    #   using the AWS SDK or the AWS CLI, you must provide this token or the
    #   request will fail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpgradeLensReviewInput AWS API Documentation
    #
    class UpgradeLensReviewInput < Struct.new(
      :workload_id,
      :lens_alias,
      :milestone_name,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user input is not valid.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason why the request failed validation.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   The fields that caused the error, if applicable.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stores information about a field passed inside a request that resulted
    # in an exception.
    #
    # @!attribute [rw] name
    #   The field name for which validation failed.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The differences between the base and latest versions of the lens.
    #
    # @!attribute [rw] pillar_differences
    #   The differences between the base and latest versions of the lens.
    #   @return [Array<Types::PillarDifference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/VersionDifferences AWS API Documentation
    #
    class VersionDifferences < Struct.new(
      :pillar_differences)
      SENSITIVE = []
      include Aws::Structure
    end

    # A workload return object.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] workload_arn
    #   The ARN for the workload.
    #   @return [String]
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #
    #   The name must be unique within an account within a Region. Spaces
    #   and capitalization are ignored when checking for uniqueness.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the workload.
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   The environment for the workload.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @!attribute [rw] account_ids
    #   The list of AWS account IDs associated with the workload.
    #   @return [Array<String>]
    #
    # @!attribute [rw] aws_regions
    #   The list of AWS Regions associated with the workload, for example,
    #   `us-east-2`, or `ca-central-1`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] non_aws_regions
    #   The list of non-AWS Regions associated with the workload.
    #   @return [Array<String>]
    #
    # @!attribute [rw] architectural_design
    #   The URL of the architectural design for the workload.
    #   @return [String]
    #
    # @!attribute [rw] review_owner
    #   The review owner of the workload. The name, email address, or
    #   identifier for the primary group or individual that owns the
    #   workload review process.
    #   @return [String]
    #
    # @!attribute [rw] review_restriction_date
    #   The date and time recorded.
    #   @return [Time]
    #
    # @!attribute [rw] is_review_owner_update_acknowledged
    #   Flag indicating whether the workload owner has acknowledged that the
    #   *Review owner* field is required.
    #
    #   If a **Review owner** is not added to the workload within 60 days of
    #   acknowledgement, access to the workload is restricted until an owner
    #   is added.
    #   @return [Boolean]
    #
    # @!attribute [rw] industry_type
    #   The industry type for the workload.
    #
    #   If specified, must be one of the following:
    #
    #   * `Agriculture`
    #
    #   * `Automobile`
    #
    #   * `Defense`
    #
    #   * `Design and Engineering`
    #
    #   * `Digital Advertising`
    #
    #   * `Education`
    #
    #   * `Environmental Protection`
    #
    #   * `Financial Services`
    #
    #   * `Gaming`
    #
    #   * `General Public Services`
    #
    #   * `Healthcare`
    #
    #   * `Hospitality`
    #
    #   * `InfoTech`
    #
    #   * `Justice and Public Safety`
    #
    #   * `Life Sciences`
    #
    #   * `Manufacturing`
    #
    #   * `Media & Entertainment`
    #
    #   * `Mining & Resources`
    #
    #   * `Oil & Gas`
    #
    #   * `Power & Utilities`
    #
    #   * `Professional Services`
    #
    #   * `Real Estate & Construction`
    #
    #   * `Retail & Wholesale`
    #
    #   * `Social Protection`
    #
    #   * `Telecommunications`
    #
    #   * `Travel, Transportation & Logistics`
    #
    #   * `Other`
    #   @return [String]
    #
    # @!attribute [rw] industry
    #   The industry for the workload.
    #   @return [String]
    #
    # @!attribute [rw] notes
    #   The notes associated with the workload.
    #   @return [String]
    #
    # @!attribute [rw] improvement_status
    #   The improvement status for a workload.
    #   @return [String]
    #
    # @!attribute [rw] risk_counts
    #   A map from risk names to the count of how questions have that
    #   rating.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] pillar_priorities
    #   The priorities of the pillars, which are used to order items in the
    #   improvement plan. Each pillar is represented by its
    #   PillarReviewSummary$PillarId.
    #   @return [Array<String>]
    #
    # @!attribute [rw] lenses
    #   The list of lenses associated with the workload. Each lens is
    #   identified by its LensSummary$LensAlias.
    #   @return [Array<String>]
    #
    # @!attribute [rw] owner
    #   An AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] share_invitation_id
    #   The ID assigned to the share invitation.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the workload.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/Workload AWS API Documentation
    #
    class Workload < Struct.new(
      :workload_id,
      :workload_arn,
      :workload_name,
      :description,
      :environment,
      :updated_at,
      :account_ids,
      :aws_regions,
      :non_aws_regions,
      :architectural_design,
      :review_owner,
      :review_restriction_date,
      :is_review_owner_update_acknowledged,
      :industry_type,
      :industry,
      :notes,
      :improvement_status,
      :risk_counts,
      :pillar_priorities,
      :lenses,
      :owner,
      :share_invitation_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A workload share return object.
    #
    # @!attribute [rw] share_id
    #   The ID associated with the workload share.
    #   @return [String]
    #
    # @!attribute [rw] shared_by
    #   An AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] shared_with
    #   The AWS account ID or IAM role with which the workload is shared.
    #   @return [String]
    #
    # @!attribute [rw] permission_type
    #   Permission granted on a workload share.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a workload share.
    #   @return [String]
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #
    #   The name must be unique within an account within a Region. Spaces
    #   and capitalization are ignored when checking for uniqueness.
    #   @return [String]
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/WorkloadShare AWS API Documentation
    #
    class WorkloadShare < Struct.new(
      :share_id,
      :shared_by,
      :shared_with,
      :permission_type,
      :status,
      :workload_name,
      :workload_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A workload share summary return object.
    #
    # @!attribute [rw] share_id
    #   The ID associated with the workload share.
    #   @return [String]
    #
    # @!attribute [rw] shared_with
    #   The AWS account ID or IAM role with which the workload is shared.
    #   @return [String]
    #
    # @!attribute [rw] permission_type
    #   Permission granted on a workload share.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a workload share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/WorkloadShareSummary AWS API Documentation
    #
    class WorkloadShareSummary < Struct.new(
      :share_id,
      :shared_with,
      :permission_type,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A workload summary return object.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] workload_arn
    #   The ARN for the workload.
    #   @return [String]
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #
    #   The name must be unique within an account within a Region. Spaces
    #   and capitalization are ignored when checking for uniqueness.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   An AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @!attribute [rw] lenses
    #   The list of lenses associated with the workload. Each lens is
    #   identified by its LensSummary$LensAlias.
    #   @return [Array<String>]
    #
    # @!attribute [rw] risk_counts
    #   A map from risk names to the count of how questions have that
    #   rating.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] improvement_status
    #   The improvement status for a workload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/WorkloadSummary AWS API Documentation
    #
    class WorkloadSummary < Struct.new(
      :workload_id,
      :workload_arn,
      :workload_name,
      :owner,
      :updated_at,
      :lenses,
      :risk_counts,
      :improvement_status)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end