package priv.rulan.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import priv.rulan.biz.ScoreBiz;
import priv.rulan.oa.dao.ScoreDao;
import priv.rulan.oa.entity.Score;

@Service("scoreService")
public class ScoreBizImpl implements ScoreBiz {


    @Autowired
    private ScoreDao scoreDao;

    public ScoreDao getScoreDao() {
        return scoreDao;
    }

    public void setScoreDao(ScoreDao scoreDao) {
        this.scoreDao = scoreDao;
    }


    @Override
    public Score search(int rep_id) {
        return this.scoreDao.select(rep_id);
    }

    @Override
    public void remove(int rep_id) {
        this.scoreDao.delete(rep_id);
    }

    @Override
    public void modify(Score score) {
        this.scoreDao.update(score);
    }


    @Override
    public void add(Score score) {
        this.scoreDao.insert(score);
    }
}
