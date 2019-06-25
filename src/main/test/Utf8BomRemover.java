import java.io.File;
import java.io.IOException;
import java.util.Collection;
import org.apache.commons.io.DirectoryWalker;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;

@SuppressWarnings("rawtypes")
public class Utf8BomRemover extends DirectoryWalker
{
	public static void main(String[] args) throws IOException
	{
		// 刪除指定文件夾下（含子文件夾）所有java文件的BOM，若構造器中參數為null則刪除所有文件頭部BOM
//		new Utf8BomRemover("java").start(new File("C:/Dev/projects/jee/ipos/zt-service/manage/e3.middleware.manage.api/src/main/java/com/baison/e3/middleware/schedulejob/handle"));
//		new Utf8BomRemover("java").start(new File("C:/Dev/projects/jee/ipos/zt-service/business_clothes/e3.middleware.business.clothes.impl/src/main/java/com/baison/e3/middleware/goods/impl/service"));
		new Utf8BomRemover("java").start(new File("C:\\Dev\\projects\\jee\\ipos\\zt-service\\business_clothes\\e3.middleware.business.clothes.impl\\src\\main\\java\\com\\baison\\e3\\middleware\\goods\\impl\\service"));
//		new Utf8BomRemover("java").start(new File("C:/Dev/projects/jee/epo-Erp/src"));
	}

	private String extension = null;

	public Utf8BomRemover(String extension)
	{
		super();
		this.extension = extension;
	}

	/** 啟動對某個文件夾的篩選 */
	@SuppressWarnings("unchecked")
	public void start(File rootDir) throws IOException
	{
		walk(rootDir, null);
	}

	protected void handleFile(File file, int depth, Collection results) throws IOException
	{
		if (extension == null || extension.equalsIgnoreCase(FilenameUtils.getExtension(file.toString())))
		{
			// 調用具體業務邏輯，其實這裡不僅可以實現刪除BOM，還可以做很多想幹的事情。
			remove(file);
		}
	}

	/** 移除UTF-8的BOM */
	private void remove(File file) throws IOException
	{
		byte[] bs = FileUtils.readFileToByteArray(file);
		if (bs[0] == -17 && bs[1] == -69 && bs[2] == -65)
		{
//			byte[] nbs = new byte[bs.length - 3];
//			System.arraycopy(bs, 3, nbs, 0, nbs.length);
//			FileUtils.writeByteArrayToFile(file, nbs);
			System.out.println("Remove BOM: " + file);
		}
	}
}