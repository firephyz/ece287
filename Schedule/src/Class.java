import java.util.ArrayList;

public class Class {
	
	private String name;
	private ArrayList<WeekTimes> times;

	public Class(String name) {
		this.name = name;
		times = new ArrayList<>();
	}
	
	public void addTimes(String mon, String tue, String wed, String thu, String fri) {
		this.times.add(new WeekTimes(mon, tue, wed, thu, fri));
	}
	
	public static boolean doesConflict(Class c1, int i1, Class c2, int i2) {
		return c1.times.get(i1).doesConflict(c2.times.get(i2));
	}
	
	public ArrayList<WeekTimes> getWeekTimes() {return this.times;}
	public String getName() {return this.name;}
	
	@Override
	public String toString() {
		String result = "";
		boolean didStart = false;
		
		for(WeekTimes t : times) {
			if(!didStart) {
				didStart = true;
			}
			else {
				result += "\n";
			}
			
			result += t.toString();
		}
		
		return result;
	}
}
