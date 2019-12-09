package ksun.sandbox.blockchain;

import sun.nio.cs.UTF_8;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Block {
    private String hash;
    private String previousHash;
    private String data;
    private long timeStamp;
    private int nonce;

    public Block (String data, String previousHash, long timeStamp) {
        this.data = data;
        this.previousHash = previousHash;
        this.timeStamp = timeStamp;
        this.hash = calculateHash();
    }

    // TODO
    protected String calculateHash () {
        StringBuilder builder = new StringBuilder();
        builder.append(getPreviousHash());
        builder.append(Long.toString(getTimeStamp()));
        builder.append(Integer.toString(getNonce()));
        builder.append(data);

        byte[] bytes;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            bytes = messageDigest.digest(builder.toString().getBytes(UTF_8.INSTANCE));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }

        return "";
    }

    public String getHash() {
        return hash;
    }

    public void setHash(String hash) {
        this.hash = hash;
    }

    public String getPreviousHash() {
        return previousHash;
    }

    public void setPreviousHash(String previousHash) {
        this.previousHash = previousHash;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public long getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(long timeStamp) {
        this.timeStamp = timeStamp;
    }

    public int getNonce() {
        return nonce;
    }

    public void setNonce(int nonce) {
        this.nonce = nonce;
    }
}
