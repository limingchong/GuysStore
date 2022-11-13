
import java.security.*;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.Base64;
import javax.crypto.Cipher;

public class CryptoSystemServer {

    private static final String ALGORITHM = "RSA"; //Rivest-Shamir-Adleman

    String priKeyStr = "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAI5cG5FVAVrfq6szb4myZJZqpBVEP3Ei5Evkuq5c00DMJChYUr1+ZR8PLLkfOo7DTJKGpBHZ1PzMIEMVR0Llqako9Og9tg+W29utFqDljeTrEgfnfMqCpAEbqnvhNBXCLXGdZv0IebDcKSE1UIl4oSA1TZd41RqG/KCUaEkWOEC5AgMBAAECgYAdu2f4jPfo+lD4wxfW+t6eOayGUogrgV2L6jwBAZsPa/NbR8MUF4tYFsvA6CBLQ8fAzIUEw2mD2MAeMpn9A0lRHJiHFG+nzInRIzlQ28sxHfqQAg2J/BeN9I9YzeeS7vZSKPTHtjd4w1bOl/LnPlr66y8y3k7OttV6dgEx11hHOQJBAJZS45RL+NRqd+nXkrweRMzZJeFwxBfzhBVW+76djlVlq21vRWwDh2GsBEEvcCFNcBEHlDpOUKCsKU8ioKgBnEUCQQDyb/l6Wk7wuMkuFHBEdhIEb71YMMaxSKznGtngsIeLurn1q8BFVEzeUzgdgDXi/4mJBBxoxhRyrZ76UO3zFovlAkBTPdU+Mo+4+Lgsaq6bs1s/4GNkonBEHxoeQwums1K1IVa7g+l6db3LLVkxy5YZKuuK0pqXavSk9JDvfGpgfnvNAkEAiBZ7AEd5UH8pzwgCDSwJ6RugOcUHg7S7+e6Epy/wpmrmwBTtFP3BOHuWYFj75rRyy8rW96lZCRaUywZqy624UQJAHmwNxFcg7vTHxyCbX1zQFL6ALibx6sH27eGL86ePmS/FtfUvD2qluFdxymftmLH5ZbuoKbVb62wfOnKySQOFRQ==";

    public String encry(String inputData) throws Exception {
        KeyFactory kf = KeyFactory.getInstance("RSA");
        byte[] priKeyByte  = Base64.getDecoder().decode(priKeyStr);
        PrivateKey privateKey = kf.generatePrivate(new PKCS8EncodedKeySpec(priKeyByte));
        Cipher cipher = Cipher.getInstance(ALGORITHM);
        cipher.init(Cipher.ENCRYPT_MODE, privateKey);
        byte[] encryptedBytes = cipher.doFinal(inputData.getBytes());
        return bytesToString(encryptedBytes);
        //return encryptedBytes;
    }

    public String decry(String inputData)throws Exception {

        byte[] priKeyByte  = Base64.getDecoder().decode(priKeyStr);
        KeyFactory kf = KeyFactory.getInstance("RSA");
        PrivateKey privateKey = kf.generatePrivate(new PKCS8EncodedKeySpec(priKeyByte));
        Cipher cipher = Cipher.getInstance(ALGORITHM);
        cipher.init(Cipher.DECRYPT_MODE, privateKey);

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
