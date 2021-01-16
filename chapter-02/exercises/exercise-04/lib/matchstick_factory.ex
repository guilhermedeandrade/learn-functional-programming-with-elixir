defmodule MatchstickFactory do
  def boxes(matchstick_qty) do
    big_boxes_qty = div(matchstick_qty, 50)
    matchsticks_inside_big_boxes = big_boxes_qty * 50
    reminder_from_big_boxes = get_reminder(matchstick_qty, matchsticks_inside_big_boxes)

    medium_boxes_qty = div(reminder_from_big_boxes, 20)
    matchsticks_inside_medium_boxes = medium_boxes_qty * 20

    reminder_from_medium_boxes =
      get_reminder(reminder_from_big_boxes, matchsticks_inside_medium_boxes)

    small_boxes_qty = div(reminder_from_medium_boxes, 5)
    matchsticks_inside_small_boxes = small_boxes_qty * 5

    reminder_from_small_boxes =
      get_reminder(reminder_from_medium_boxes, matchsticks_inside_small_boxes)

    %{
      big: big_boxes_qty,
      medium: medium_boxes_qty,
      small: small_boxes_qty,
      remaining_matchsticks: reminder_from_small_boxes
    }
  end

  defp get_reminder(current_matchstick_qty, 0), do: current_matchstick_qty

  defp get_reminder(current_matchstick_qty, matchsticks_qty_inside_the_box) do
    rem(current_matchstick_qty, matchsticks_qty_inside_the_box)
  end
end
