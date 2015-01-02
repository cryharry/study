package refactoring.typecode;

public class LunchSet {
	private final LunchType _lunchType;
	private final DrinkType _drinkType;
	
	public LunchSet(LunchType lunchType, DrinkType drinkType) {
		_lunchType = lunchType;
		_drinkType = drinkType;
	}
	
	
	public String toString() {
		return "LunchSet: "+ _lunchType + ", "+ _drinkType;
	}
	
	public static void main(String[] args) {
		LunchSet lun = new LunchSet(LunchType.A, DrinkType.COFFEE);
		System.out.println(lun.toString());
	}
}
