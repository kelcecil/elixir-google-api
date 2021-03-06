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

defmodule GoogleApi.Datastore.V1.Model.GqlQuery do
  @moduledoc """
  A [GQL query](https://cloud.google.com/datastore/docs/apis/gql/gql_reference).

  ## Attributes

  - allowLiterals (Boolean): When false, the query string must not contain any literals and instead must bind all values. For example, &#x60;SELECT * FROM Kind WHERE a &#x3D; &#39;string literal&#39;&#x60; is not allowed, while &#x60;SELECT * FROM Kind WHERE a &#x3D; @value&#x60; is. Defaults to: `null`.
  - namedBindings (Map[String, GqlQueryParameter]): For each non-reserved named binding site in the query string, there must be a named parameter with that name, but not necessarily the inverse.  Key must match regex &#x60;A-Za-z_$*&#x60;, must not match regex &#x60;__.*__&#x60;, and must not be &#x60;\&quot;\&quot;&#x60;. Defaults to: `null`.
  - positionalBindings (List[GqlQueryParameter]): Numbered binding site @1 references the first numbered parameter, effectively using 1-based indexing, rather than the usual 0.  For each binding site numbered i in &#x60;query_string&#x60;, there must be an i-th numbered parameter. The inverse must also be true. Defaults to: `null`.
  - queryString (String): A string of the format described [here](https://cloud.google.com/datastore/docs/apis/gql/gql_reference). Defaults to: `null`.
  """

  defstruct [
    :"allowLiterals",
    :"namedBindings",
    :"positionalBindings",
    :"queryString"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.GqlQuery do
  import GoogleApi.Datastore.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"namedBindings", :map, GoogleApi.Datastore.V1.Model.GqlQueryParameter, options)
    |> deserialize(:"positionalBindings", :list, GoogleApi.Datastore.V1.Model.GqlQueryParameter, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastore.V1.Model.GqlQuery do
  def encode(value, options) do
    GoogleApi.Datastore.V1.Deserializer.serialize_non_nil(value, options)
  end
end

