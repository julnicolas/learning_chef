examples = data_bag('examples')

examples.each do |item_name|
    example = data_bag_item('examples', item_name)['value']

    # log the databag's content
    puts example['id']
    puts example['value']
    puts example['foo']
end