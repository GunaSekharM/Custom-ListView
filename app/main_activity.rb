class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    main_id = resources.getIdentifier('activity_main', 'layout', packageName)
    self.contentView = main_id
    listViewId = resources.getIdentifier('listView1', 'id', packageName)
    listView = findViewById(listViewId)
    list = Array.new
    temp = Hash.new
    temp[Constants::FIRSTCOLUMN] = "Ankit kariaaaaaaaaaaaaaaaaaaaaaaaaaa"#.put(Constants::FIRSTCOLUMN, "Ankit karia")
    temp[Constants::SECONDCOLUMN] = "Male"#.put(Constants::SECONDCOLUMN, "Male")
    temp[Constants::THIRDCOLUMN] = "22"#.put(Constants::THIRDCOLUMN, "22")
    temp[Constants::FOURTHCOLUMN] = "Unmarried"#.put(Constants::FOURTHCOLUMN, "Unmarried")
    list << temp
    
    temp1 = Java::Util::HashMap.new
    temp1.put(Constants::FIRSTCOLUMN, "Guna")
    temp1.put(Constants::SECONDCOLUMN, "Male")
    temp1.put(Constants::THIRDCOLUMN, "22")
    temp1.put(Constants::FOURTHCOLUMN, "Unmarried")
    list.add(temp1)
    
    temp2 = Java::Util::HashMap.new
    temp2.put(Constants::FIRSTCOLUMN, "Harish")
    temp2.put(Constants::SECONDCOLUMN, "Male")
    temp2.put(Constants::THIRDCOLUMN, "22")
    temp2.put(Constants::FOURTHCOLUMN, "Unmarried")
    list.add(temp2)
    
    temp3 = Java::Util::HashMap.new
    temp3.put(Constants::FIRSTCOLUMN, "Raghu")
    temp3.put(Constants::SECONDCOLUMN, "Male")
    temp3.put(Constants::THIRDCOLUMN, "22")
    temp3.put(Constants::FOURTHCOLUMN, "Unmarried")
    list.add(temp3)
    
    temp4 = Java::Util::HashMap.new
    temp4.put(Constants::FIRSTCOLUMN, "Harish")
    temp4.put(Constants::SECONDCOLUMN, "Male")
    temp4.put(Constants::THIRDCOLUMN, "22")
    temp4.put(Constants::FOURTHCOLUMN, "Unmarried")
    list.add(temp4)
    
    temp5 = Java::Util::HashMap.new
    temp5.put(Constants::FIRSTCOLUMN, "Raghu")
    temp5.put(Constants::SECONDCOLUMN, "Male")
    temp5.put(Constants::THIRDCOLUMN, "22")
    temp5.put(Constants::FOURTHCOLUMN, "Unmarried")
    list.add(temp5)
    
    temp6 = Java::Util::HashMap.new
    temp6.put(Constants::FIRSTCOLUMN, "Harish")
    temp6.put(Constants::SECONDCOLUMN, "Male")
    temp6.put(Constants::THIRDCOLUMN, "22")
    temp6.put(Constants::FOURTHCOLUMN, "Unmarried")
    list.add(temp6)
    
    temp7 = Java::Util::HashMap.new
    temp7.put(Constants::FIRSTCOLUMN, "Raghu")
    temp7.put(Constants::SECONDCOLUMN, "Male")
    temp7.put(Constants::THIRDCOLUMN, "22")
    temp7.put(Constants::FOURTHCOLUMN, "Unmarried")
    list.add(temp7)
    
    name_id = resources.getIdentifier('name', 'id', packageName)
    gender_id = resources.getIdentifier('gender', 'id', packageName)
    age_id = resources.getIdentifier('age', 'id', packageName)
    status_id = resources.getIdentifier('status', 'id', packageName)
    column_row_id = resources.getIdentifier('column_row', 'layout', packageName)
    views = [name_id, gender_id, age_id, status_id, column_row_id]
    adapter = ListViewAdapter.new(self, list, views)
    listView.setAdapter(adapter)
    listView.setFocusable(false)
    listView.setOnItemClickListener(OnItemClickListener.new(self))
  end
end
