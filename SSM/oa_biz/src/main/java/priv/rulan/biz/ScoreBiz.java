package priv.rulan.biz;

import priv.rulan.oa.entity.Score;

public interface ScoreBiz {

    public Score search(int rep_id);
    public void remove(int rep_id);
    public void modify(Score score);
    public void add (Score score);
}
