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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.PublisherProfileApiProto do
  @moduledoc """
  

  ## Attributes

  - accountId (String): Deprecated: use the seller.account_id. The account id of the seller. Defaults to: `null`.
  - audience (String): Publisher provided info on its audience. Defaults to: `null`.
  - buyerPitchStatement (String): A pitch statement for the buyer Defaults to: `null`.
  - directContact (String): Direct contact for the publisher profile. Defaults to: `null`.
  - exchange (String): Exchange where this publisher profile is from. E.g. AdX, Rubicon etc... Defaults to: `null`.
  - googlePlusLink (String): Link to publisher&#39;s Google+ page. Defaults to: `null`.
  - isParent (Boolean): True, if this is the parent profile, which represents all domains owned by the publisher. Defaults to: `null`.
  - isPublished (Boolean): True, if this profile is published. Deprecated for state. Defaults to: `null`.
  - kind (String): Identifies what kind of resource this is. Value: the fixed string \&quot;adexchangebuyer#publisherProfileApiProto\&quot;. Defaults to: `null`.
  - logoUrl (String): The url to the logo for the publisher. Defaults to: `null`.
  - mediaKitLink (String): The url for additional marketing and sales materials. Defaults to: `null`.
  - name (String):  Defaults to: `null`.
  - overview (String): Publisher provided overview. Defaults to: `null`.
  - profileId (Integer): The pair of (seller.account_id, profile_id) uniquely identifies a publisher profile for a given publisher. Defaults to: `null`.
  - programmaticContact (String): Programmatic contact for the publisher profile. Defaults to: `null`.
  - publisherDomains (List[String]): The list of domains represented in this publisher profile. Empty if this is a parent profile. Defaults to: `null`.
  - publisherProfileId (String): Unique Id for publisher profile. Defaults to: `null`.
  - publisherProvidedForecast (PublisherProvidedForecast): Publisher provided forecasting information. Defaults to: `null`.
  - rateCardInfoLink (String): Link to publisher rate card Defaults to: `null`.
  - samplePageLink (String): Link for a sample content page. Defaults to: `null`.
  - seller (Seller): Seller of the publisher profile. Defaults to: `null`.
  - state (String): State of the publisher profile. Defaults to: `null`.
  - topHeadlines (List[String]): Publisher provided key metrics and rankings. Defaults to: `null`.
  """

  defstruct [
    :"accountId",
    :"audience",
    :"buyerPitchStatement",
    :"directContact",
    :"exchange",
    :"googlePlusLink",
    :"isParent",
    :"isPublished",
    :"kind",
    :"logoUrl",
    :"mediaKitLink",
    :"name",
    :"overview",
    :"profileId",
    :"programmaticContact",
    :"publisherDomains",
    :"publisherProfileId",
    :"publisherProvidedForecast",
    :"rateCardInfoLink",
    :"samplePageLink",
    :"seller",
    :"state",
    :"topHeadlines"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.PublisherProfileApiProto do
  import GoogleApi.AdExchangeBuyer.V14.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"publisherProvidedForecast", :struct, GoogleApi.AdExchangeBuyer.V14.Model.PublisherProvidedForecast, options)
    |> deserialize(:"seller", :struct, GoogleApi.AdExchangeBuyer.V14.Model.Seller, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.PublisherProfileApiProto do
  def encode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Deserializer.serialize_non_nil(value, options)
  end
end

