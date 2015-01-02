
public class Point {
	Point[] _point;
	int x, y;
	
	public boolean existPoint(int x, int y) {
		for( int i=0; i<_point.length; i++ ) {
			if( _point[i].x == x && _point[i].y == y) {
				return true;
			}
		}
		return false;
	}
}
