package BlackCatWorkshop.ASBinding
{
	public class BindingError extends Error
	{
		public static const LoopBinding:String = "While a new binding registering, a loop binding has been founded. After value bindings transfered for any time, binding object cannot be the source.";
		
		public function BindingError(message:*="", id:*=0)
		{
			//TODO: implement function
			super(message, id);
		}
	}
}