package app;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.geometry.Positions;

public class ThumTest {
	public static void main(String[] args) throws IOException {
		File file = new File("C:\\Users\\Admin\\Desktop\\thumb", "s_30aae3c5-c897-4fc7-9611-4341041a4f08 - 복사본.jpg");
		Thumbnails
			.of(file)
			.sourceRegion(Positions.CENTER, 200, 200)
			.size(200, 200)
			.toFile(new File("C:\\Users\\Admin\\Desktop\\thumb", "result5.jpg"));
		
//		String contentType = Files.probeContentType(file.toPath());
//		System.out.println(contentType);
//		System.out.println(contentType.startsWith("image"));
	}
}
