package BlackCatWorkshop.ASBinding
{
	import flash.events.Event;
	import flash.events.EventDispatcher;

	/**
	 * This class is to descprit a field as a source or a object of a binding.
	 * Three properties: object as the holder of the property that the binding aimming at, and field as the field's name, value as the current value of binded field.
	 * One method: setValue, which should be called when you want to set a value to a binding source. Without using this method, binding will not usable.
	 * @see setValue
	 */
	public class BindingProperty extends EventDispatcher
	{		
		private var _object:Object;
		private var _field:String;
		
		public function BindingProperty(object:Object, fieldName:String)
		{
			_object = object;
			_field = fieldName;
		}
		
		public function get object():Object
		{
			return _object;
		}
		
		public function get field():String
		{
			return _field;
		}
		
		public function get value():*
		{
			return _object[_field];
		}
		
		/**
		 * Set a value to this property.
		 * If you want to use binding function, MUST change source field with this method.
		 */
		public function setValue(value:*):void
		{
			_object[_field] = value;
			
			dispatchEvent(new BindingEvent(this, BindingEvent.ValueHasBeenChanged));
		}
	}
}