import java.util.ArrayList;

public class WeekTimes {
	
	public Time mon;
	public Time tue;
	public Time wed;
	public Time thu;
	public Time fri;

	public WeekTimes(String mon, String tue, String wed, String thu, String fri) {
		this.mon = stringToTime(mon);
		this.tue = stringToTime(tue);
		this.wed = stringToTime(wed);
		this.thu = stringToTime(thu);
		this.fri = stringToTime(fri);
	}
	
	private Time stringToTime(String str) {
		
		if(str == null) return null;
		
		String start = str.substring(0, str.indexOf('-'));
		String startHour = start.substring(0, start.indexOf(':'));
		String startMin = start.substring(start.indexOf(':') + 1);
		int startTime = Integer.parseInt(startHour) * 60 + Integer.parseInt(startMin);
		String end = str.substring(str.indexOf('-') + 1);
		String endHour = end.substring(0, end.indexOf(':'));
		String endMin = end.substring(end.indexOf(':') + 1);
		int endTime = Integer.parseInt(endHour) * 60 + Integer.parseInt(endMin);
		
		return new Time(startTime, endTime);
	}
	
	public boolean doesConflict(WeekTimes other) {
		
		boolean result = false;
		
		if(mon != null) result |= mon.doesConflict(other.mon);
		if(tue != null) result |= tue.doesConflict(other.tue);
		if(wed != null) result |= wed.doesConflict(other.wed);
		if(thu != null) result |= thu.doesConflict(other.thu);
		if(fri != null) result |= fri.doesConflict(other.fri);
		
		return result;
	}
	
	@Override
	public String toString() {
		
		String result = "";
		
		if(mon != null) {
			result += "Mon: " + mon.toString();
		}
		else {
			result += "                ";
		}
		if(result.length() != 0) result += ", ";
		if(tue != null) {
			result += "Tue: " + tue.toString();
		}
		else {
			result += "                ";
		}
		if(result.length() != 0) result += ", ";
		if(wed != null) {
			result += "Wed: " + wed.toString();
		}
		else {
			result += "                ";
		}
		if(result.length() != 0) result += ", ";
		if(thu != null) {
			result += "Thu: " + thu.toString();
		}
		else {
			result += "                ";
		}
		if(result.length() != 0) result += ", ";
		if(fri != null) {
			result += "Fri: " + fri.toString();
		}
		else {
			result += "                ";
		}
		
		return result;
	}
}
