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
		
		private var _excutePredicates:Function;
		private var _postProcess:Function;
		
		public function BindingContext(excutePredicate:Function = null, postProcess:Function = null)
		{
			_excutePredicates = excutePredicate;
			_postProcess = postProcess;
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
		
		public function get excutePredicates():Function
		{
			return _excutePredicates;
		}
		
		public function get postProcess():Function
		{
			return _postProcess;
		}
	}
}