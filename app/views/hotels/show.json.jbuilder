json.partial! "hotels/hotel", hotel: @hotel
json.array! @send, partial: 'sends/send', as: :send