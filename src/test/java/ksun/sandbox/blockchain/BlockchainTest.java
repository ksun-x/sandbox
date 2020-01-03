package ksun.sandbox.blockchain;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;

import static org.junit.Assert.assertTrue;

public class BlockchainTest {
    public static List<Block> blockchain = new ArrayList<>();
    public static Pattern pattern;

    @BeforeClass
    public static void setUp() {
        pattern = Pattern.compile("^0{4}.*");

        Block genesisBlock = new Block ("The genesis block", "0", new Date().getTime());
        genesisBlock.mineBlock(pattern);
        blockchain.add(genesisBlock);
    }

    @Test
    public void givenBlockchain_whenNewBlockAdded_thenSuccess() {
        Block block = new Block ("A new block", blockchain.get(blockchain.size() - 1).getHash(), new Date().getTime());
        assertTrue(block.mineBlock(pattern));
        assertTrue(pattern.matcher(block.getHash()).matches());
        blockchain.add(block);
    }

    @Test
    public void givenBlockchain_whenValidate_thenSuccess() {
        boolean flag = true;
        for (int i = 0; i < blockchain.size(); i++) {
            final String previousHash = i == 0 ? "0" : blockchain.get(i - 1).getHash();
            assertTrue(
                    blockchain.get(i).getHash().equals(blockchain.get(i).calculateHash())
                            && previousHash.equals(blockchain.get(i).getPreviousHash())
                            && pattern.matcher(blockchain.get(i).getHash()).matches()
            );
        }
    }

    @AfterClass
    public static void tearDown () {
        blockchain.clear();
    }
}
