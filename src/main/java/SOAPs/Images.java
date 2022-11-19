package SOAPs;

public class Images{
    private String[] urls;
    private int count;
    private int num;

    public Images(int count){
        this.count = count;
        urls = new String[count];
        num = 0;
    }

    public void addImage(String url){
        if (num < count) urls[num++] = url;
    }

    public String getImage(int i){
        return urls[i];
    }

    public String getImage(){
        if (num >= 0) return urls[num--];
        else return null;
    }

    public String[] getUrls(){
        return urls;
    }

    public int getCount() {
        return count;
    }

    public int getNum() {
        return num;
    }
}
