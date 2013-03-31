package BlackCatWorkshop.ASBinding
{
	public class OneWayBinding extends Binding
	{
		/**
		 * OneWayBinding is the most simply binding. 
		 * Only one source and a target are in this binding.
		 * When source has been set value, target will change; NO vice versa.
		 */
		public function OneWayBinding(source:BindingProperty, object:BindingProperty, context:BindingContext)
		{
			super(property1, property2, context);
			
			addEventListener(BindingEvent.ValueHasBeenChanged, onSourceValueChanged);
		}
		
		public function get source():BindingProperty
		{
			return _property1;
		}
		
		public function get object():BindingProperty
		{
			return _property2;
		}
		
		protected function onSourceValueChanged(event:BindingEvent):void
		{
			if(enabled)
			{
				if(context.excutePredicates != null && context.excutePredicates() == true)
				{
					_property2.setValue(context.projectFunction(event.source.value));
					context.postProcess.call();
				}
			}
		}
	}
}