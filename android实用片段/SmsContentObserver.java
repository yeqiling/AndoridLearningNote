

import android.app.Activity;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.widget.EditText;


import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 读取短信内容 自动填充验证码
 *    <uses-permission android:name="android.permission.READ_SMS"/>
 * @author yanbin
 *
 */
public class SmsContentObserver extends ContentObserver {

	public static final String SMS_URI_INBOX = "content://sms/inbox";

	private Activity activity = null;

	private String smsContent = "";

	private EditText verifyText = null;

	public SmsContentObserver(Handler handler) {
		super(handler);
	}

	public SmsContentObserver(Activity activity, Handler handler, EditText verifyText) {
		super(handler);
		this.activity = activity;
		this.verifyText = verifyText;
	}

	@Override
	public void onChange(boolean selfChange) {
		super.onChange(selfChange);
		Cursor cursor = null;// 光标
		// 读取 收件箱中指定号码的短信
		cursor = activity.getContentResolver().query(Uri.parse(SMS_URI_INBOX), new String[] {
			"_id", "address", "body", "read", "date" }, "address=? and read=?",
			new String[] { "1069035660623", "0" }, "date desc");

		if (cursor != null) {// 如果短信为未读模式
			cursor.moveToFirst();
			if (cursor.moveToFirst()) {

				String smsbody = cursor
						.getString(cursor.getColumnIndex("body"));
				LogUtils.e("smsbody:" + smsbody);
				smsContent = getDynamicPassword(smsbody);
				verifyText.setText(smsContent);
				verifyText.setSelection(verifyText.getText().toString().trim().length());
			}

		}
	}
	/**
	 * 从字符串中截取连续6位数字组合 ([0-9]{" + 6 + "})截取六位数字 进行前后断言不能出现数字 用于从短信中获取动态密码
	 * @param str 短信内容
	 * @return 截取得到的6位动态密码
	 */
	public String getDynamicPassword(String str) {
		// 6是验证码的位数一般为六位
		Pattern continuousNumberPattern = Pattern.compile("(?<![0-9])([0-9]{"
				+ 6 + "})(?![0-9])");
		Matcher m = continuousNumberPattern.matcher(str);
		String dynamicPassword = "";
		while (m.find()) {
			System.out.print(m.group());
			dynamicPassword = m.group();
		}
		return dynamicPassword;
	}
}