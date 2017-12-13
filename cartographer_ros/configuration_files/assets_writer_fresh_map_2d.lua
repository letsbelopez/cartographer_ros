options = {
  tracking_frame = "velodyne",
  pipeline = {
    {
      action = "min_max_range_filter",
      min_range = 0.0,
      max_range = 5.,
    },
    {
      action = "write_ros_map",
      range_data_inserter = {
        insert_free_space = true,
        hit_probability = 0.55,
        miss_probability = 0.49,
      },
      filestem = "map",
      resolution = 0.05,
    }
  }
}
