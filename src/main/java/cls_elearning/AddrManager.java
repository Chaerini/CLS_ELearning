package cls_elearning;

import java.util.ArrayList;
import java.util.List;

public class AddrManager {
	List<LoginBean> addrlist=new ArrayList<LoginBean>();
	
	public void add(LoginBean lb) {
		addrlist.add(lb);
	}
	public List<LoginBean> getAddrList() {
		return addrlist;
	}
	
	public LoginBean getAddr(String username) {
		for(LoginBean lb : addrlist) {
			if(lb.getUsername().equals(username))
				return lb;
		}
		return null;
	}
}
