
public class Time {
	
	public int start;
	public int end;
	
	public Time(int start, int end) {
		this.start = start;
		this.end = end;
	}
	
	public boolean doesConflict(Time other) {
		if(other == null) return false;
		return  (start >= other.start && start <= other.end) ||
				(end >= other.start && end <= other.end);
	}
	
	@Override
	public String toString() {
		return "" + String.format("%02d", start / 60) + ":" + String.format("%02d", start % 60) + "-" + String.format("%02d", end / 60) + ":" + String.format("%02d", end % 60);
	}
}
