# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Games.V1.Api.Applications do
  @moduledoc """
  API calls for all endpoints tagged `Applications`.
  """

  alias GoogleApi.Games.V1.Connection
  import GoogleApi.Games.V1.RequestBuilder


  @doc """
  Retrieves the metadata of the application with the given ID. If the requested application is not available for the specified platformType, the returned response will not include any instance data.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - application_id (String): The application ID from the Google Play developer console.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :consistency_token (String): The last-seen mutation timestamp.
    - :language (String): The preferred language to use for strings returned by this method.
    - :platform_type (String): Restrict application details returned to the specific platform.

  ## Returns

  {:ok, %GoogleApi.Games.V1.Model.Application{}} on success
  {:error, info} on failure
  """
  @spec games_applications_get(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Games.V1.Model.Application.t} | {:error, Tesla.Env.t}
  def games_applications_get(connection, application_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"consistencyToken" => :query,
      :"language" => :query,
      :"platformType" => :query
    }
    %{}
    |> method(:get)
    |> url("/applications/{applicationId}", %{
         "applicationId" => URI.encode_www_form(application_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Games.V1.Model.Application{})
  end

  @doc """
  Indicate that the the currently authenticated user is playing your application.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :consistency_token (String): The last-seen mutation timestamp.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec games_applications_played(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def games_applications_played(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"consistencyToken" => :query
    }
    %{}
    |> method(:post)
    |> url("/applications/played")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Verifies the auth token provided with this request is for the application with the specified ID, and returns the ID of the player it was granted for.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - application_id (String): The application ID from the Google Play developer console.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :consistency_token (String): The last-seen mutation timestamp.

  ## Returns

  {:ok, %GoogleApi.Games.V1.Model.ApplicationVerifyResponse{}} on success
  {:error, info} on failure
  """
  @spec games_applications_verify(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Games.V1.Model.ApplicationVerifyResponse.t} | {:error, Tesla.Env.t}
  def games_applications_verify(connection, application_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"consistencyToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/applications/{applicationId}/verify", %{
         "applicationId" => URI.encode_www_form(application_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Games.V1.Model.ApplicationVerifyResponse{})
  end
end
