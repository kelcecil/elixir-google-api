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

defmodule GoogleApi.People.V1.Model.Person do
  @moduledoc """
  Information about a person merged from various data sources such as the authenticated user&#39;s contacts and profile data.  Most fields can have multiple items. The items in a field have no guaranteed order, but each non-empty field is guaranteed to have exactly one field with &#x60;metadata.primary&#x60; set to true.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"addresses",
    :"ageRange",
    :"ageRanges",
    :"biographies",
    :"birthdays",
    :"braggingRights",
    :"coverPhotos",
    :"emailAddresses",
    :"etag",
    :"events",
    :"genders",
    :"imClients",
    :"interests",
    :"locales",
    :"memberships",
    :"metadata",
    :"names",
    :"nicknames",
    :"occupations",
    :"organizations",
    :"phoneNumbers",
    :"photos",
    :"relations",
    :"relationshipInterests",
    :"relationshipStatuses",
    :"residences",
    :"resourceName",
    :"skills",
    :"taglines",
    :"urls"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.Person do
  import GoogleApi.People.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"addresses", :list, GoogleApi.People.V1.Model.Address, options)
    |> deserialize(:"ageRanges", :list, GoogleApi.People.V1.Model.AgeRangeType, options)
    |> deserialize(:"biographies", :list, GoogleApi.People.V1.Model.Biography, options)
    |> deserialize(:"birthdays", :list, GoogleApi.People.V1.Model.Birthday, options)
    |> deserialize(:"braggingRights", :list, GoogleApi.People.V1.Model.BraggingRights, options)
    |> deserialize(:"coverPhotos", :list, GoogleApi.People.V1.Model.CoverPhoto, options)
    |> deserialize(:"emailAddresses", :list, GoogleApi.People.V1.Model.EmailAddress, options)
    |> deserialize(:"events", :list, GoogleApi.People.V1.Model.Event, options)
    |> deserialize(:"genders", :list, GoogleApi.People.V1.Model.Gender, options)
    |> deserialize(:"imClients", :list, GoogleApi.People.V1.Model.ImClient, options)
    |> deserialize(:"interests", :list, GoogleApi.People.V1.Model.Interest, options)
    |> deserialize(:"locales", :list, GoogleApi.People.V1.Model.Locale, options)
    |> deserialize(:"memberships", :list, GoogleApi.People.V1.Model.Membership, options)
    |> deserialize(:"metadata", :struct, GoogleApi.People.V1.Model.PersonMetadata, options)
    |> deserialize(:"names", :list, GoogleApi.People.V1.Model.Name, options)
    |> deserialize(:"nicknames", :list, GoogleApi.People.V1.Model.Nickname, options)
    |> deserialize(:"occupations", :list, GoogleApi.People.V1.Model.Occupation, options)
    |> deserialize(:"organizations", :list, GoogleApi.People.V1.Model.Organization, options)
    |> deserialize(:"phoneNumbers", :list, GoogleApi.People.V1.Model.PhoneNumber, options)
    |> deserialize(:"photos", :list, GoogleApi.People.V1.Model.Photo, options)
    |> deserialize(:"relations", :list, GoogleApi.People.V1.Model.Relation, options)
    |> deserialize(:"relationshipInterests", :list, GoogleApi.People.V1.Model.RelationshipInterest, options)
    |> deserialize(:"relationshipStatuses", :list, GoogleApi.People.V1.Model.RelationshipStatus, options)
    |> deserialize(:"residences", :list, GoogleApi.People.V1.Model.Residence, options)
    |> deserialize(:"skills", :list, GoogleApi.People.V1.Model.Skill, options)
    |> deserialize(:"taglines", :list, GoogleApi.People.V1.Model.Tagline, options)
    |> deserialize(:"urls", :list, GoogleApi.People.V1.Model.Url, options)
  end
end

