package BlackCatWorkshop.ASBinding
{
	import flash.events.Event;
	
	public class BindingEvent extends Event
	{
		public static const ValueHasBeenChanged:String = "Binding source's value has been changed.";
		
		private var _source:BindingProperty;
		
		public function BindingEvent(source:BindingProperty, type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			_source = source;
		}
		
		public function get source():BindingProperty
		{
			return _source;
		}
	}
}