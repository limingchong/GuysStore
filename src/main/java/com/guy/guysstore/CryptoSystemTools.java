package com.guy.guysstore;

import java.io.*;
import java.security.*;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Base64;
import javax.crypto.Cipher;

public class CryptoSystemTools {
    private KeyPairGenerator keyGenerator;
    private KeyPair keyPair;
    private PrivateKey privateKey;
    private PublicKey publicKey;
    private static final String ALGORITHM = "RSA";

    public PrivateKey getPrivateKey() {
        return privateKey;
    }

    public PublicKey getPublicKey() {
        return publicKey;
    }


    public byte[] encrypt(PublicKey key, byte[] inputData)
            throws Exception {

        //PublicKey key = KeyFactory.getInstance(ALGORITHM).generatePublic(new X509EncodedKeySpec(publicKey));
        Cipher cipher = Cipher.getInstance(ALGORITHM);
        cipher.init(Cipher.ENCRYPT_MODE, key);

        byte[] encryptedBytes = cipher.doFinal(inputData);

        return encryptedBytes;
    }

    /**
     * Decrypt input ciphor text using private key.
     * @param key
     * @param inputData
     * @return
     * @throws java.lang.Exception
     */
    public byte[] decrypt(PrivateKey key, byte[] inputData)
            throws Exception {

        //PKCS8EncodedKeySpec privateKeySpecs = new PKCS8EncodedKeySpec(privateKey);
        //PrivateKey key = KeyFactory.getInstance(ALGORITHM).generatePrivate(privateKeySpecs);
        Cipher cipher = Cipher.getInstance(ALGORITHM);
        cipher.init(Cipher.DECRYPT_MODE, key);

        byte[] decryptedBytes = cipher.doFinal(inputData);

        return decryptedBytes;
    }

    public void writeToFile(String path,String fileName, byte[] content) throws IOException {
        File file = new File(path,fileName);
        file.getParentFile().mkdirs();

        try (FileOutputStream os = new FileOutputStream(file)) {
            os.write(content);
            os.flush();
        }
    }




    /*public byte[] decryptFile(String path, PrivateKey key) throws Exception {
        File file = new File(path);
        try (FileInputStream is = new FileInputStream(file)) {
            byte[] out = is.readAllBytes();
            return decrypt(key,out);
        }
     */
}
