package refactoring.typecode;

public enum ItemType {
	BOOK(0),
	DVD(1),
	SOFTWARE(2);
	
	private final int _typecode;
	
	private ItemType(int typecode) {
		_typecode = typecode;
	}
	
	public int getTypeCode() {
		return _typecode;
	}
}
