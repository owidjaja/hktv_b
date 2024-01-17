
def calculate_max_quantity(box_length, box_width, box_height, product_length, product_width, product_height):
    # in python 3, // is integer division, rounds down to nearest integer
    length_constraint = box_length // product_length
    width_constraint  = box_width  // product_width
    height_constraint = box_height // product_height

    max_quantity = length_constraint * width_constraint * height_constraint
    return max_quantity
