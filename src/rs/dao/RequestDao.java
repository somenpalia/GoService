package rs.dao;
import java.util.ArrayList;
import rs.bo.FetchedReqBo;
import rs.bo.RequestBo;

public interface RequestDao {
      public int addReq(RequestBo req);
      public ArrayList<FetchedReqBo> fetchReq(long id);
      public ArrayList<FetchedReqBo> removeRequest(ArrayList<FetchedReqBo> list,FetchedReqBo req);//Remove From Service centre latest reguest table not from DB
      public void aprooveReq(long id);
      public void updRequest(long id);
      public long getSCId(String email);
      public ArrayList<FetchedReqBo> fetchUpdReq(long id);
}
