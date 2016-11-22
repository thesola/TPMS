package com.tpms.utils;

import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.util.Auth;

public class QiniuUp {

		// 设置好的密钥
		private static String accessKey = "TMyFYExwXCYTnsJRGdNGTCARQKSZLhcRYpPgw9Se";
		private static String secretKey = "a95BB59m7bn24uiItk1NVBwD-aKgwmmeo-pZQImn";
		// 要上传的空间
		private static String bucket = "tpms";
		
		// 密钥配置
		private static Auth auth = Auth.create(accessKey, secretKey);
		
		// 自动识别要上传的空间
		private static Zone zone = Zone.autoZone();
		private static Configuration configuration = new Configuration(zone);
		
		// 创建上传对象
		private static UploadManager uploadManager = new UploadManager(configuration);
		
		// 简单上传 使用默认策略 只需设置上传的空间名就可以了
		public static String getUpToken(){
			return auth.uploadToken(bucket);
		}
		
		// 自定义上传方法
		public static String upload( byte[] data, String fileName){
			try {
				// 调用put方法上传
				Response response = uploadManager.put( data , fileName, getUpToken());
				// 返回的信息
				return response.bodyString();
				
			} catch (QiniuException e) {
				Response response = e.response;
				// 请求失败时打印的异常信息
				System.err.println(response.toString());
				try {
					System.err.println(response.bodyString());
				} catch (QiniuException e1) {
					// nothing todo here
				}
			}
			return " yf: error upload ";
		}
}
