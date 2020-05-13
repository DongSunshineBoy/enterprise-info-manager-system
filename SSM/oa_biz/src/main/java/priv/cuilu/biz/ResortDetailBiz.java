package priv.cuilu.biz;

import priv.cuilu.oa.entity.ResortDetailByTravel;

public interface ResortDetailBiz {
    public void add(ResortDetailByTravel resortByTravel);
    public void modify(ResortDetailByTravel resortByTravel);
    public void remove(Integer id);
    public ResortDetailByTravel search(Integer id);
}
