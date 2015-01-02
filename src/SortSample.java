import java.util.Random;


public class SortSample {
	private final int[] _data;
	
	public SortSample(int[] data) {
		_data = new int[data.length];
		System.arraycopy(data, 0, _data, 0, data.length);
	}
	public void sort() {
		for( int x=0; x<_data.length - 1; x++ ) {
			int m = x;
			for( int y=x+1; y<_data.length; y++ ) {
				if( _data[m] > _data[y]) {
					m = y;
				}
			}
			assert isMin( m, x, _data.length-1 ): this + ", x = " +x;
			int v = _data[m];
			_data[m] = _data[x];
			_data[x] = v;
			assert isSorted( 0, x+1 ): this +", x = " +x;
		}
	}
	private boolean isMin(int pos, int start, int end) {
		for( int i=start; i<end; i++ ) {
			if( _data[pos] > _data[i] ) {
				return false;
			}
		}
		return true;
	}
	private boolean isSorted(int start, int end) {
		for( int i=start; i<end; i++ ) {
			if( _data[i] > _data[i+1] ) {
				return false;
			}
		}
		return true;
	}
	public String toString() {
		StringBuilder buffer = new StringBuilder();
		buffer.append("[");
		for( int i=0; i<_data.length; i++) {
			buffer.append(_data[i]);
			buffer.append(", ");
		}
		buffer.append("]");
		return buffer.toString();
	}
	
	private static final Random random = new Random(1234);
	
	private static void execute(int length) {
		// 난수로 데이터 작성
		int[] data = new int[length];
		for( int i=0; i<data.length; i++ ) {
			data[i] = random.nextInt(data.length);
		}
		// 데이터 표시
		SortSample sorter = new SortSample(data);
		System.out.println("BEFORE:" +sorter);
		// 소트를 실행하고 표시
		sorter.sort();
		System.out.println(" AFTER:" +sorter);
		
		System.out.println();
	}
	
	public static void main(String[] args) {
		execute(10);
		execute(10);
		execute(10);
		execute(10);
		execute(10);
	}
}
