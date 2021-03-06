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

defmodule GoogleApi.QPXExpress.V1.Model.SegmentInfo do
  @moduledoc """
  Details of a segment of a flight; a segment is one or more consecutive legs on the same flight. For example a hypothetical flight ZZ001, from DFW to OGG, would have one segment with two legs: DFW to HNL (leg 1), HNL to OGG (leg 2), and DFW to OGG (legs 1 and 2).

  ## Attributes

  - bookingCode (String): The booking code or class for this segment. Defaults to: `null`.
  - bookingCodeCount (Integer): The number of seats available in this booking code on this segment. Defaults to: `null`.
  - cabin (String): The cabin booked for this segment. Defaults to: `null`.
  - connectionDuration (Integer): In minutes, the duration of the connection following this segment. Defaults to: `null`.
  - duration (Integer): The duration of the flight segment in minutes. Defaults to: `null`.
  - flight (FlightInfo): The flight this is a segment of. Defaults to: `null`.
  - id (String): An id uniquely identifying the segment in the solution. Defaults to: `null`.
  - kind (String): Identifies this as a segment object. A segment is one or more consecutive legs on the same flight. For example a hypothetical flight ZZ001, from DFW to OGG, could have one segment with two legs: DFW to HNL (leg 1), HNL to OGG (leg 2). Value: the fixed string qpxexpress#segmentInfo. Defaults to: `null`.
  - leg (List[LegInfo]): The legs composing this segment. Defaults to: `null`.
  - marriedSegmentGroup (String): The solution-based index of a segment in a married segment group. Married segments can only be booked together. For example, an airline might report a certain booking code as sold out from Boston to Pittsburgh, but as available as part of two married segments Boston to Chicago connecting through Pittsburgh. For example content of this field, consider the round-trip flight ZZ1 PHX-PHL ZZ2 PHL-CLT ZZ3 CLT-PHX. This has three segments, with the two outbound ones (ZZ1 ZZ2) married. In this case, the two outbound segments belong to married segment group 0, and the return segment belongs to married segment group 1. Defaults to: `null`.
  - subjectToGovernmentApproval (Boolean): Whether the operation of this segment remains subject to government approval. Defaults to: `null`.
  """

  defstruct [
    :"bookingCode",
    :"bookingCodeCount",
    :"cabin",
    :"connectionDuration",
    :"duration",
    :"flight",
    :"id",
    :"kind",
    :"leg",
    :"marriedSegmentGroup",
    :"subjectToGovernmentApproval"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.QPXExpress.V1.Model.SegmentInfo do
  import GoogleApi.QPXExpress.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"flight", :struct, GoogleApi.QPXExpress.V1.Model.FlightInfo, options)
    |> deserialize(:"leg", :list, GoogleApi.QPXExpress.V1.Model.LegInfo, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.QPXExpress.V1.Model.SegmentInfo do
  def encode(value, options) do
    GoogleApi.QPXExpress.V1.Deserializer.serialize_non_nil(value, options)
  end
end

