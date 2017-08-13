json.array! @sends, partial: 'sends/send', as: :send
json.array! @hotels, partial: 'hotels/hotel', as: :hotel
json.array! @promotions, partial: 'promotions/promotion', as: :promotion
json.partial! "sends/send", send: @send

