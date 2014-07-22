package ch14;
import java.io.File;
import java.io.IOException;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;
import javax.media.jai.JAI;
import javax.media.jai.RenderedOp;

/**
 * Created by admin on 2014-07-06.
 */
public class Thumbnail {

    public Thumbnail() {}

    public static void createImage(String loadFile, String saveFile, int zoom) throws IOException { //썸네일 이미지를 생성하는 메소드

        File save = new File(saveFile); //썸네일 이미지 파일
        RenderedOp rOp = JAI.create("fileload", loadFile); //loadFile은 원본 이미지파일, RenderedOp 객체 생성
        BufferedImage im = rOp.getAsBufferedImage(); //BufferedImage 객체를 얻어옴

        if(zoom <= 0)
            zoom = 1; //zoom이 5이면 원본 이미지의 1/5 크기가 된다.

        int width = im.getWidth() / zoom;
        int height = im.getHeight() / zoom;

        BufferedImage thumb = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB); //메모리에 이미지 공간을 생성
        Graphics2D g2 = thumb.createGraphics(); //BufferedImage로부터 Graphics2D 객체를 얻어냄
        g2.drawImage(im, 0, 0, width, height, null); //메모리의 이미지 공간에 원본 이미지를 가로 width, 세로 height의 크기로 그린다.

        ImageIO.write(thumb, "jpg", save); //메모리에 그린 이미지를 파일로 저장
    }
}