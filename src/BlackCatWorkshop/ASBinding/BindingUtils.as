package BlackCatWorkshop.ASBinding
{
	import flash.utils.Dictionary;

	/**
	 * Offers some static methods that can be used to create bindings.
	 * Although bindings can be created by this class, it's equare to create bindings directly. 
	 * 
	 * IMPORTANT: No Loop Check Will Do While Creating A Binding. You must ensure that no loop-bindings were created to avoid dead-looping while binding action is taken place.
	 */
	public final class BindingUtils
	{	
		private static var _instance:BindingUtils; 
		
		private var bindings:Dictionary = new Dictionary();
		
		public function BindingUtils()
		{
		}
		
		protected static function get instance():BindingUtils
		{
			if(_instance == null)
			{
				_instance = new BindingUtils();
			}
			
			return _instance;
		}
		
		/**
		 * Register a data binding.
		 * 
		 * @param sourceObj 		Object of source field.
		 * @param sourceFieldName	Name of source field.
		 * @param objectObj			Object of field that will be binded from.
		 * @param objectFieldName	Name of field that will be binded from.
		 * @param projectFunction	Project function that will called before binding. Return value of this function will be used in the fact binding processing.
		 * @param excutePredicates	Will be called before binding if binding is enabled. If returns true, will do the binding.
		 * @param postProcess		Will be called after binding is done.
		 * 
		 * @return					Created binding.
		 */
		public static function createOneWayBinding(sourceObj:Object, 
												   sourceFieldName:String, 
												   objectObj:Object, 
												   objectFieldName:String,
												   projectFunction:Function = null,
												   excutePredicates:Function = null,
												   postProcess:Function = null):OneWayBinding
		{
			var context:BindingContext = new BindingContext(projectFunction, excutePredicates, postProcess);
			var binding:OneWayBinding = new OneWayBinding(new BindingProperty(sourceObj, sourceFieldName), new BindingProperty(objectObj, objectFieldName), context);
						
			return binding;
		}
	}
}