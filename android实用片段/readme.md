  		
		 //调用该方法的地方的代码
        smsContent = new SmsContentObserver(WangjimimaActivity.this, new Handler(), yanzhengma);
        getContentResolver().registerContentObserver(Uri.parse("content://sms/"), true, smsContent);