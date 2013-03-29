package BlackCatWorkshop.ASBinding
{
	import flash.utils.Dictionary;

	public final class BindingManager
	{
		private static var _instance:BindingManager;
		
		private var _bindings:Dictionary = new Dictionary();
		private var _properties:Dictionary = new Dictionary();
		
		public function BindingManager()
		{
		}
		
		public static function get instance():BindingManager
		{
			if(_instance == null)
				_instance = new BindingManager();
			
			return _instance;
		}
		
		public function registerBinding(sourceObj:Object, 
										sourceFieldName:String, 
										objectObj:Object, 
										objectFieldName:String,
										excutePredicates:Function = null,
										postProcess:Function = null):void
		{
			
		}
		
		public function unregisterBinding(sourceObj:Object,
										  sourceFieldName:String,
										  objectObj:Object,
										  objectFieldName:String):void
		{
			
		}
		
		public function isBindingExisted(sourceObj:Object,
										 sourceFieldName:String,
										 objectObj:Object,
										 objectFieldName:String):Boolean
		{
			return false;
		}
		
		public function getBinding(sourceObj:Object,
								   sourceFieldName:String,
								   objectObj:Object,
								   objectFieldName:String):Binding
		{			
			return null
		}
		
		public function get bindings():Dictionary
		{
			return _bindings;
		}
		
		public function get properties():Dictionary
		{
			return _properties;
		}
	}
}