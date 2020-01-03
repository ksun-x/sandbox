package ksun.sandbox.blockchain;

import sun.nio.cs.UTF_8;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Block {
    private static final int MINE_LIMIT = 1000;

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

    public boolean mineBlock (Pattern patten) {
        String tempHash = getHash();
        for (int i = 0; !patten.matcher(tempHash).matches(); i++) {
            if (i + 1 >= MINE_LIMIT) {
                return false;
            }
            nonce++;
            tempHash = calculateHash();
        }
        setHash(tempHash);
        return true;
    }

    protected String calculateHash () {
        StringBuilder builder = new StringBuilder();
        builder.append(getPreviousHash());
        builder.append(getTimeStamp());
        builder.append(getNonce());
        builder.append(data);

        byte[] bytes = null;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            bytes = messageDigest.digest(builder.toString().getBytes(StandardCharsets.UTF_8));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }

        if (bytes == null) {
            return null;
        }

        StringBuffer buffer = new StringBuffer();
        for (byte b: bytes) {
            buffer.append(String.format("%02x", b));
        }

        return buffer.toString();
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
