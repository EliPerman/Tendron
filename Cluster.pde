public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        Tendril [] arr = new Tendril[NUM_STEMS];
        for (int i = 0; i < NUM_STEMS; i++){
          arr[i] = new Tendril(len, 2*PI*i/7, x, y);
          arr[i].show();
        }
    }
}
