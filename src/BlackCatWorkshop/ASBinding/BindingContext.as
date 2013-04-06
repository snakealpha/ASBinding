package BlackCatWorkshop.ASBinding
{
	/**
	 * BindingContext is a container to collect options of a binding.
	 * Now two properties are included in this class: excutePredicates and postProcess.
	 * While return of excutePredicates is false, binding will not excute.
	 * After object of a binding as been changed by a binding, postProcess will be called.
	 */
	public class BindingContext
	{
		private var _enabled:Boolean = true;
		
		private var _projectFunction:Function;
		private var _excutePredicates:Function;
		private var _postProcess:Function;
		
		public function BindingContext(projectFunction:Function = null, 
									   excutePredicate:Function = null, 
									   postProcess:Function = null)
		{
			_projectFunction = projectFunction;
			_excutePredicates = excutePredicate;
			_postProcess = postProcess;
			
			if(_projectFunction == null)
			{
				_projectFunction = defaultProjectFunction;
			}
			if(_excutePredicates == null)
			{
				_excutePredicates = defaultExcutePredicate;
			}
			if(_postProcess == null)
			{
				_postProcess = defaultPostPress;
			}
		}
		
		/**
		 * When enbaled is false, binding will be ignored when a source of a binding is changed, even if result of excutePredicates may be true.
		 */
		public function set enabled(value:Boolean):void
		{
			_enabled = value;
		}		
		public function get enabled():Boolean
		{
			return _enabled;
		}
		
		/**
		 * porjectFunction is a kind of function that receive a value and return another value that may be different from the input, it is used to tramsform a value to an other, which is really used while binding.
		 * If no projectFunction is specified while constructing, a function returns its only argument will be used.
		 */
		public function get projectFunction():Function
		{
			return _projectFunction;
		}
		
		public function get excutePredicates():Function
		{
			return _excutePredicates;
		}
		
		public function get postProcess():Function
		{
			return _postProcess;
		}
		
		private function defaultProjectFunction(value:Object):Object
		{
			return value;
		}
		
		private function defaultExcutePredicate():Boolean
		{
			return true;
		}
		
		private function defaultPostPress():void
		{
			
		}
	}
}