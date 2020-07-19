import consumer from "./consumer"

document.addEventListener('turbolinks:load', function() {

  const action_cable_show = document.getElementById("action_cable_show")
  if (action_cable_show == null) {
    return null
  }
  var room_id = action_cable_show.getAttribute("data-room_id")

  consumer.subscriptions.create(
    {
      channel: "RoomChannel",
      room_id: room_id,
    },
    {
      connected() {
        // Called when the subscription is ready for use on the server
        console.log('> connected at room_id ' + room_id)
      },

      disconnected() {
        // Called when the subscription has been terminated by the server
      },

      received(data) {
        // Called when there's incoming data on the websocket for this channel
        console.log('data: ', data)
      }
    }
  )
})
