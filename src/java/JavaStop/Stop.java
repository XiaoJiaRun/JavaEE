package JavaStop;

public class Stop {
    private String pp;
    private String name;
    private String score;

    @Override
    public String toString() {
        return "Stop{" + "pp=" + pp + ", name=" + name + ", score=" + score + '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPp() {
        return pp;
    }

    public void setPp(String pp) {
        this.pp = pp;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }
   
}
