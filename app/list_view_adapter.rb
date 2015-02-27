class ListViewAdapter < Android::Widget::BaseAdapter
  
  def initialize(activity, list, array)
    @activity = activity
    @list = list
    @txtFirst = array[0]
    @txtSecond = array[1]
    @txtThird = array[2]
    @txtFourth = array[3]
    @column_row = array[4]
  end
  
  def getCount
    @list.count
  end
  
  def getItem(position)
    @list.get(position)
  end
  
  def getItemId(position)
    0
  end
  
  def getView(position, convertView, parent)
    inflater = @activity.getLayoutInflater
    if convertView == nil
      convertView = inflater.inflate(@column_row, nil)
      @txt_First = convertView.findViewById(@txtFirst)
      @txt_Second = convertView.findViewById(@txtSecond)
      @txt_Third = convertView.findViewById(@txtThird)
      @txt_Fourth = convertView.findViewById(@txtFourth)
    end
    map = @list[position]
    if position.even?
      convertView.setBackgroundColor(0x30FF0000)
    else
      convertView.setBackgroundColor(0x300000FF)
    end
      @txt_First.setText(map["First"])
      @txt_Second.setText(map["Second"])
      @txt_Third.setText(map["Third"])
      @txt_Fourth.setText(map["Fourth"])
      convertView
  end
end