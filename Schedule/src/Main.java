import java.util.ArrayList;

public class Main {
	
	public Main() {
		ArrayList<Schedule> schedules = new ArrayList<>();
		ArrayList<Class> classes = new ArrayList<>();
		
		Class ece303 = new Class("ECE 303");
		ece303.addTimes("13:00-13:55", null, "13:00-13:55", "10:00-11:50", null);
		ece303.addTimes("13:00-13:55", null, "13:00-13:55", "14:00-15:50", null);
		ece303.addTimes("13:00-13:55", null, "13:00-13:55", "16:00-17:50", null);
		ece303.addTimes("14:30-15:25", "12:00-13:50", "14:30-15:25", null, null);
		ece303.addTimes("14:30-15:25", "10:00-11:50", "14:30-15:25", null, null);
		ece303.addTimes("14:30-15:25", "14:00-15:50", "14:30-15:25", null, null);
		
		Class ece289 = new Class("ECE 289");
		ece289.addTimes(null, null, "16:00-17:20", null, "16:00-17:20");
		
		Class chi102 = new Class("CHI 102");
		//chi102.addTimes("08:30-09:25", "08:30-09:25", "08:30-09:25", null, "08:30-09:25");
		chi102.addTimes("10:00-10:55", "10:00-10:55", "10:00-10:55", null, "10:00-10:55");
		chi102.addTimes("13:00-13:55", "13:00-13:55", "13:00-13:55", null, "13:00-13:55");
		
		Class mth331 = new Class("MTH 331");
		mth331.addTimes(null, "10:00-11:20", null, "10:00-11:20", null);
		mth331.addTimes(null, "13:00-14:20", null, "13:00-14:20", null);
		//mth331.addTimes("14:30-15:50", null, "14:30-15:50", null, null);
		
		Class mbi121 = new Class("MBI 121");
		mbi121.addTimes("10:00-10:55", null, "10:00-10:55", null, "10:00-10:55");
		
		Class cse443 = new Class("CSE 443");
		cse443.addTimes(null, "13:00-14:20", null, "13:00-14:20", null);
		//cse443.addTimes(null, "14:30-15:50", null, "14:30-15:50", null);
		
		Class phy192 = new Class("PHY 192");
		phy192.addTimes("08:00-09:50", "08:00-10:00", "08:00-09:50", null, "08:00-09:50");
		phy192.addTimes("10:00-11:50", "08:00-10:00", "10:00-11:50", null, "10:00-11:50");
		phy192.addTimes("12:00-13:50", "08:00-10:00", "12:00-13:50", null, "12:00-13:50");
		phy192.addTimes("14:00-15:50", "08:00-10:00", "14:00-15:50", null, "14:00-15:50");
		
		Class bio121 = new Class("BIO 121");
		bio121.addTimes(null, "13:00-14:20", null, "13:00-14:20", null);
		bio121.addTimes(null, "16:00-17:20", null, "16:00-17:20", null);
		bio121.addTimes(null, "10:00-11:20", null, "10:00-11:20", null);
		bio121.addTimes("08:30-09:25", null, "08:30-09:25", null, "08:30-09:25");
		
		Class mbi131 = new Class("MBI 131");
		mbi131.addTimes(null, "11:30-12:50", null, "11:30-12:50", null);
		mbi131.addTimes(null, "10:00-11:20", null, "10:00-11:20", null);
		mbi131.addTimes("16:00-17:20", null, "16:00-17:20", null, null);
		mbi131.addTimes(null, null, "13:00-14:00", null, "13:00-14:00");
		
		classes.add(ece303);
		classes.add(ece289);
		classes.add(chi102);
		classes.add(mth331);
		//classes.add(mbi121);
		//classes.add(bio121);
		//classes.add(mbi131);
		classes.add(cse443);
		//classes.add(phy192);

		findGoodTimes(classes, schedules);
		
		int count = 0;
		for(Schedule s : schedules) {
			++count;
			s.printByClass(count);
		}
//		count = 0;
//		for(Schedule s : schedules) {
//			++count;
//			s.printByTime(count);
//		}
	}
	
	public void findGoodTimes(ArrayList<Class> classes, ArrayList<Schedule> schedules) {
		findGoodTimesHelper(classes, new ArrayList<WeekTimes>(), schedules, 0);
	}
	
	public void findGoodTimesHelper(ArrayList<Class> classes, 
									ArrayList<WeekTimes> times, 
									ArrayList<Schedule> schedules,
									int i) {
		
		if(i == classes.size()) {
			boolean noConflict = doTimesWork(times);
			
			if(noConflict) {
				schedules.add(new Schedule(classes, times));
			}
			times.remove(times.size() - 1);
			return;
		}
		else {
			for(WeekTimes t : classes.get(i).getWeekTimes()) {
				times.add(t);
				findGoodTimesHelper(classes, times, schedules, i + 1);
			}
			
			if(times.size() != 0) times.remove(times.size() - 1);
			return;
		}
	}
	
	public boolean doTimesWork(ArrayList<WeekTimes> times) {
		
		for(int i = 0; i < times.size(); ++i) {
			WeekTimes a = times.get(i);
			for(int j = 0; j < times.size(); ++j) {
				WeekTimes b = times.get(j);
				if(a != b) {
					if(a.doesConflict(b)) {
						return false;
					}
				}
			}
		}
		
		return true;
	}
	
	public static void main(String[] args) {
		new Main();
	}
}
