package BlackCatWorkshop.ASBinding
{
	import flash.events.EventDispatcher;

	/**
	 * Base class of all kinds of bindings.
	 * Should not be used dircetly.
	 */
	public class Binding extends EventDispatcher
	{
		protected var _property1:BindingProperty;
		protected var _property2:BindingProperty;
		protected var _bindingContext:BindingContext;
		
		public function Binding(property1:BindingProperty, property2:BindingProperty, context:BindingContext)
		{
			_property1 = property1;
			_property2 = property2;
			
			_bindingContext = context;
		}
		
		public function get property1():BindingProperty
		{
			return _property1;
		}
		
		public function get property2():BindingProperty
		{
			return _property2;
		}
		
		public function get context():BindingContext
		{
			return _bindingContext;
		}
	}
}