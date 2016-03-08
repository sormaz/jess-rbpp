
import edu.ohiou.implanner.features.*;
import edu.ohiou.labimp.gtk3d.*;
import jess.*;
import edu.ohiou.implanner.parts.*;
public class Test {

	public static void makeFact(Rete rete, Hole aHole)
	{
		
	try {
			Fact f = new Fact("feature", rete);
			f.setSlotValue("name", new Value(aHole.getFeatureName(), RU.STRING));
			f.setSlotValue("type", new Value(aHole.getClassName().toLowerCase(), RU.SYMBOL));
			f.setSlotValue("normal", new Value("z-pos", RU.SYMBOL));
			f.setSlotValue("dim1", new Value(aHole.getRadius()*2, RU.FLOAT));
			f.setSlotValue("dim2", new Value(aHole.getBottomDist(), RU.FLOAT));
			f.setSlotValue("status", new Value("input", RU.SYMBOL));
			f.setSlotValue("quality", new Value(20.0, RU.FLOAT));
			f.setSlotValue("tolerance", new Value(50.0, RU.FLOAT));
			rete.assertFact(f);
			} catch (Exception ex) {
			ex.printStackTrace();
			}
	}
	
	public static void makeFact(Rete rete, Slot aSlot)
	{
		
	try {
			Fact f = new Fact("feature", rete);
			f.setSlotValue("name", new Value(aSlot.getFeatureName(), RU.STRING));
			f.setSlotValue("type", new Value(aSlot.getClassName().toLowerCase(), RU.SYMBOL));
			f.setSlotValue("normal", new Value("z-pos", RU.SYMBOL));
			f.setSlotValue("dim1", new Value(aSlot.getHeight(), RU.FLOAT));
			f.setSlotValue("dim2", new Value(aSlot.getWidth(), RU.FLOAT));
			f.setSlotValue("dim3", new Value(aSlot.getPositiveSweepLength() + aSlot.getNegativeSweepLength(), RU.FLOAT));
			f.setSlotValue("status", new Value("input", RU.SYMBOL));
			f.setSlotValue("quality", new Value(20.0, RU.FLOAT));
			f.setSlotValue("tolerance", new Value(50.0, RU.FLOAT));
			rete.assertFact(f);
			} catch (Exception ex) {
			ex.printStackTrace();
			}
	}
	
	public static void makeFact(Rete rete, Pocket aPocket)
	{
		
	try {
			Fact f = new Fact("feature", rete);
			f.setSlotValue("name", new Value(aPocket.getFeatureName(), RU.STRING));
			f.setSlotValue("type", new Value(aPocket.getClassName().toLowerCase(), RU.SYMBOL));
			f.setSlotValue("normal", new Value("z-pos", RU.SYMBOL));
			f.setSlotValue("dim1", new Value(aPocket.getHeight(), RU.FLOAT));
			// NOTE: dim2, dim3 - can be an Arc or a LineSegment 
			//       doesn't make sense to store these for dimension
			//       feature template unclear (rbpp-init.clp) -- how to get topface length/width?
			f.setSlotValue("dim2", new Value(((LineSegment)aPocket.getProfile().getShapes().get(0)).getLength(), RU.FLOAT));
			f.setSlotValue("dim3", new Value(((LineSegment)aPocket.getProfile().getShapes().get(1)).getLength(), RU.FLOAT));
			f.setSlotValue("status", new Value("input", RU.SYMBOL));
			f.setSlotValue("quality", new Value(20.0, RU.FLOAT));
			f.setSlotValue("tolerance", new Value(50.0, RU.FLOAT));
			rete.assertFact(f);
			} catch (Exception ex) {
			ex.printStackTrace();
			}
	}
	
	public static void makePartFact(Rete rete, MfgPartModel aModel)
	{
		try {
			Fact f = new Fact("part", rete);
			f.setSlotValue("material", new Value(aModel.getPartMaterial(), RU.STRING));
			f.setSlotValue("batch-size", new Value(aModel.getBatchSize(), RU.INTEGER));
			f.setSlotValue("x-dim", new Value(20.0, RU.FLOAT));
			f.setSlotValue("y-dim", new Value(10.0, RU.FLOAT));
			f.setSlotValue("z-dim", new Value(10.0, RU.FLOAT));
			f.setSlotValue("quality", new Value(20.0, RU.FLOAT));
			rete.assertFact(f);
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
	}
	
}
