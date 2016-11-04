import java.util.ArrayList;

public class Schedule {
	
	ArrayList<String> names;
	ArrayList<WeekTimes> times;
	
	public Schedule(ArrayList<Class> classes, ArrayList<WeekTimes> times) {
		this.names = new ArrayList<>();
		this.times = new ArrayList<>();
		
		for(int i = 0; i < times.size(); ++i) {
			this.names.add(classes.get(i).getName());
			this.times.add(times.get(i));
		}
	}
	
	public void printByClass(int count) {
		System.out.println(count + " **********************************************************************************************************");
		for(int i = 0; i < times.size(); ++i) {
			System.out.println("\t" + names.get(i) + " :> " + times.get(i).toString());
		}
		System.out.println("\n");
	}
	
	public void printByTime(int count) {
		
		System.out.println(count + " **********************************************************************************************************");
		
		int start = findMinTime();
		start = start - start % 60;
		int end = findMaxTime();
		end = end + 60 - end % 60;
		
		for(int i = 0; i < (end - start + 15) / 15; ++i) {
			int time = start + i * 15;
			String result = timeToString(time) + " :> ";
			
			int classCount = 0;
			for(WeekTimes t : times) {
				if(t.mon != null && t.mon.start >= time && t.mon.start < time + 15) {
					result += String.format("%10s", names.get(classCount));
				}
				else {
					result += String.format("%10s", " ");
				}
				if(t.tue != null && t.tue.start >= time && t.tue.start < time + 15) {
					result += String.format("%10s", names.get(classCount));
				}
				else {
					result += String.format("%10s", " ");
				}
				if(t.wed != null && t.wed.start >= time && t.wed.start < time + 15) {
					result += String.format("%10s", names.get(classCount));
				}
				else {
					result += String.format("%10s", " ");
				}
				if(t.thu != null && t.thu.start >= time && t.thu.start < time + 15) {
					result += String.format("%10s", names.get(classCount));
				}
				else {
					result += String.format("%10s", " ");
				}
				if(t.fri != null && t.fri.start >= time && t.fri.start < time + 15) {
					result += String.format("%10s", names.get(classCount));
				}else {
					result += String.format("%10s", " ");
				}
				
				++classCount;
			}
			
			System.out.println(result);
		}
		System.out.println("\n");
	}
	
	private String timeToString(int time) {
		int hour = time / 60;
		int min = time % 60;
		return String.format("%02d:%02d", hour, min);
	}
	
	private int findMinTime() {
		int min = 25 * 60;
		
		for(WeekTimes t : times) {
			if(t.mon != null && t.mon.start < min) min = t.mon.start;
			if(t.tue != null && t.tue.start < min) min = t.tue.start;
			if(t.wed != null && t.wed.start < min) min = t.wed.start;
			if(t.thu != null && t.thu.start < min) min = t.thu.start;
			if(t.fri != null && t.fri.start < min) min = t.fri.start;
		}
		
		return min;
	}
	
	private int findMaxTime() {
		int min = 0;
		
		for(WeekTimes t : times) {
			if(t.mon != null && t.mon.end > min) min = t.mon.end;
			if(t.tue != null && t.tue.end > min) min = t.tue.end;
			if(t.wed != null && t.wed.end > min) min = t.wed.end;
			if(t.thu != null && t.thu.end > min) min = t.thu.end;
			if(t.fri != null && t.fri.end > min) min = t.fri.start;
		}
		
		return min;
	}
}
