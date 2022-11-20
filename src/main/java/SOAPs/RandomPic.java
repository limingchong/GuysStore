package SOAPs;

import com.guy.guysstore.DatabaseConnection;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import java.awt.*;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.Random;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author zlz
 */
@WebService(serviceName = "RandomPic")
public class RandomPic {
    
    public int getRandom(int min, int max){
        Random random = new Random();
        return random.nextInt( max - min + 1 ) + min;
    }

    /**
     * This is a sample web service operation
     * @param param
     * @return 
     * @throws SQLException
     */
    @WebMethod(operationName = "RandomPic", action = "action2")
    public String[] RandomPic(@WebParam(name = "param") String param) throws SQLException{
        DatabaseConnection databaseConnection = new DatabaseConnection();
        ResultSet rsn;
        rsn = databaseConnection.GetResultFromSqlQuery("SELECT COUNT(*) FROM store.goods");
        rsn.next();
        int nump = rsn.getInt(1);
        int max = 5;
        int[] ID = new int[nump];
        Images images = new Images(nump);
        List<Integer> listRandom = new ArrayList<>();
        databaseConnection.CloseConnection();
        for(int i=1; i <=nump; i++) listRandom.add(i);

        for(int i=0;i<max;i++){
            int index = getRandom(0,listRandom.size()-1);
            ID[i] =listRandom.get(index);
            listRandom.remove(index);
        }

        ResultSet[] rs = new ResultSet[nump];
        String[] result = new String[nump];

        for(int i=0;i<nump;i++){
            DatabaseConnection DatabaseConnection = new DatabaseConnection();
            rs[i] = DatabaseConnection.GetResultFromSqlQuery("SELECT image FROM store.goods WHERE ID="+ID[i]+";");
            if (rs[i].next()){
                images.addImage(rs[i].getString(1));
                result[i] = images.getImage(i);
            }
            DatabaseConnection.CloseConnection();
        }
        return result;
    }
}