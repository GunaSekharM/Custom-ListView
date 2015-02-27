class OnItemClickListener
  def initialize(activity)
    @activity = activity
  end
  
  def onItemClick(parent, view, position, id)
    Android::Widget::Toast::makeText(@activity, "clicked on row #{position}", Android::Widget::Toast::LENGTH_SHORT).show
  end
end