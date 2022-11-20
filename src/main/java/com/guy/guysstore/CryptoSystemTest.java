/**
 * Lab 1 Team 5
 * This program is for testing public-private key encryption and decryption
 */
package com.guy.guysstore;

public class CryptoSystemTest {


    public static void main(String[] args) throws Exception {

        CryptoSystemClient CSClient = new CryptoSystemClient();
        CryptoSystemServer CSServer = new CryptoSystemServer();

        String clientMsg = "114514";
        String serverMsg = "Nantong Chaoren LMC!";

        //client生成密文(String格式）
        String clientCiphor = CSClient.encry(clientMsg);
        System.out.println(clientCiphor);

        //server解密
        String deClientCiphor = CSServer.decry(clientCiphor);
        System.out.println(deClientCiphor);

        System.out.println();
        //server生成密文（String格式）
        String serverCiphor = CSServer.encry(serverMsg);
        System.out.println(serverCiphor);

        //client解密
        String deServerCipher = CSClient.decry(serverCiphor);
        System.out.println(deServerCipher);

        //测试String和byte[]疯狂相互转换
        System.out.println();
        System.out.println(clientCiphor);
        System.out.println(CSClient.stringToBytes(clientCiphor));
        String c2 = CSClient.bytesToString(CSClient.stringToBytes(clientCiphor));
        System.out.println(c2);
        byte[] c3 = CSClient.stringToBytes(CSClient.bytesToString(CSClient.stringToBytes(clientCiphor)));
        System.out.println(c3);
        System.out.println(CSClient.bytesToString(CSClient.stringToBytes(CSClient.bytesToString(CSClient.stringToBytes(clientCiphor)))));
        System.out.println(CSClient.stringToBytes(CSClient.bytesToString(CSClient.stringToBytes(CSClient.bytesToString(CSClient.stringToBytes(clientCiphor))))));
        System.out.println(CSClient.bytesToString(CSClient.stringToBytes(CSClient.bytesToString(CSClient.stringToBytes(CSClient.bytesToString(CSClient.stringToBytes(clientCiphor)))))));

        //string和byte[]不停相互转换，好像byte[]显示会不一样，但是转回string又没问题

        //不管了，不报错就行
    }
}
