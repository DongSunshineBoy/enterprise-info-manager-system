package priv.rulan.oa.dao;

import priv.rulan.oa.entity.Score;

public interface ScoreDao {

    public void insert(Score score);
    public void delete(int rep_id);
    public void update(Score score);
    public Score select(int rep_id);
}
