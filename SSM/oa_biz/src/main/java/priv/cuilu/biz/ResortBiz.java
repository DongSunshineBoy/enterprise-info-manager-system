package priv.cuilu.biz;

import priv.cuilu.oa.entity.ResortByTravel;

import java.util.List;

public interface ResortBiz {
    public void add(ResortByTravel resortByTravel);
    public void modify(ResortByTravel resortByTravel);
    public void remove(Integer id);
    public ResortByTravel search(Integer id);
    public List<ResortByTravel> searchAll();
}
