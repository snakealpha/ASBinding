package BlackCatWorkshop.ASBinding
{
	public class OneWayBinding extends Binding
	{
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
				if(context.excutePredicates != null && context.excutePredicates.call() == true)
				{
					_property2.setValue(event.source.value);
					context.postProcess.call();
				}
			}
		}
	}
}