package com.guy.guysstore;

import java.security.*;
import java.security.spec.X509EncodedKeySpec;
import java.util.Base64;
import javax.crypto.Cipher;

public class CryptoSystemClient {

    private static final String ALGORITHM = "RSA"; //Rivest-Shamir-Adleman

    String pubKeyStr = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCOXBuRVQFa36urM2+JsmSWaqQVRD9xIuRL5LquXNNAzCQoWFK9fmUfDyy5HzqOw0yShqQR2dT8zCBDFUdC5ampKPToPbYPltvbrRag5Y3k6xIH53zKgqQBG6p74TQVwi1xnWb9CHmw3CkhNVCJeKEgNU2XeNUahvyglGhJFjhAuQIDAQAB";

    public String encry(String inputData) throws Exception {
        KeyFactory kf = KeyFactory.getInstance("RSA");
        byte[] pubKeyByte  = Base64.getDecoder().decode(pubKeyStr);
        PublicKey publicKey = kf.generatePublic(new X509EncodedKeySpec(pubKeyByte));
        Cipher cipher = Cipher.getInstance(ALGORITHM);
        cipher.init(Cipher.ENCRYPT_MODE, publicKey);
        byte[] encryptedBytes = cipher.doFinal(inputData.getBytes());
        return bytesToString(encryptedBytes);
        //return encryptedBytes;
    }

    public String decry(String inputData)throws Exception {
        byte[] pubKeyByte  = Base64.getDecoder().decode(pubKeyStr);
        KeyFactory kf = KeyFactory.getInstance("RSA");
        PublicKey publicKey = kf.generatePublic(new X509EncodedKeySpec(pubKeyByte));
        Cipher cipher = Cipher.getInstance(ALGORITHM);
        cipher.init(Cipher.DECRYPT_MODE, publicKey);
        byte[] decryptedBytes = cipher.doFinal(stringToBytes(inputData));
        return new String(decryptedBytes);
        //return decryptedBytes;
    }

    //String 和 bytes[]转换专用方法
    public static String bytesToString(byte[] encrytpByte) {
        String result = "";
        for (Byte bytes : encrytpByte) {
            result += bytes.toString() + " ";
        }
        return result;
    }

    public static byte[] stringToBytes(String data) {
        String[] strArr = data.split(" ");
        int len = strArr.length;
        byte[] clone = new byte[len];
        for (int i = 0; i < len; i++) {
            clone[i] = Byte.parseByte(strArr[i]);
        }
        return clone;
    }
}
