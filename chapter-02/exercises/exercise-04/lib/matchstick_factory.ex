defmodule MatchstickFactory do
  @size_big 50
  @size_medium 20
  @size_small 5

  def boxes(matchsticks) do
    big_boxes = div(matchsticks, @size_big)
    remaining_from_big_boxes = rem(matchsticks, @size_big)

    medium_boxes = div(remaining_from_big_boxes, @size_medium)
    remaining_from_medium_boxes = rem(remaining_from_big_boxes, @size_medium)

    small_boxes = div(remaining_from_medium_boxes, @size_small)
    remaining_from_small_boxes = rem(remaining_from_medium_boxes, @size_small)

    %{
      big: big_boxes,
      medium: medium_boxes,
      small: small_boxes,
      remaining_matchsticks: remaining_from_small_boxes
    }
  end
end
