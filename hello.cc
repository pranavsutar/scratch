

#include "ns3/core-module.h"
#include "ns3/random-variable-stream.h"

using namespace ns3;

NS_LOG_COMPONENT_DEFINE("ScratchSimulator");

// write a function to generate random bernoulli output- 0 or 1, with parameter p and seed s
int bernoulli(double p, int seed)
{
    // without using header file

    int x;
    seed = seed%17;
    x = (rand()+seed)%100;
    if(x<p*100)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}
int main(int argc, char* argv[])
{
    
    // NS_LOG_UNCOND("Scratch Simulator");
    // NS_LOG_UNCOND("CS20B029");
    // NS_LOG_UNCOND("Parameter p= 0.6");

    int count1=0;
    for(int i=0; i<100; i++)
    {
        int sample = bernoulli(0.6, i);
        // std::cout << "Time: " << i << " Sample: " << sample << std::endl;
        if(sample==1)
        {
            count1++;
        }
        // format of output:  <time1, sample1>, ..., <time100, sample100>
        if(i==99)
        {
            // std::cout << "<" << i+1 << ", " << sample << ">" << std::endl;
            // std::cout << i << "1" << std::endl;
            NS_LOG_UNCOND(i +1 << " " << sample);
        }
        else
        {
            // std::cout << "<" << i+1 << ", " << sample << ">, "<< std::endl;
            // std::cout << i << " 0" << std::endl;
            NS_LOG_UNCOND(i+1 << " " << sample);
        }
    }
    std::cout << "Number of Times 1 appeared: " << count1 << std::endl;
    // fraction of 1s
    std::cout << "fraction of 1s: " << (double)count1/100 << std::endl;
    
    Simulator::Run();
    Simulator::Destroy();

    return 0;
}

// Command used to run: ../ns3 run hello > cs20b029_lab3_output.txt  2>&1 > /dev/null

// Output: cs20b029_lab3_output.txt
// To Generate the GNU plot file: gnuplot -e "filename='cs20b029_lab3_output.txt'" cs20b029_lab3_plot.gp