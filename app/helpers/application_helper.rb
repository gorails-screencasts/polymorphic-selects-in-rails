module ApplicationHelper
  def sgid_options_for_collection(collection, text_method: :name)
    collection.map do |item|
      [
        text_method.respond_to?(:call) ? text_method.call(item) : item.public_send(text_method),
        item.to_sgid(for: :polymorphic_select)
      ]
    end
  end
end
