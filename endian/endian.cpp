#include <cstdint>
#include <cstdio>
#include <iostream>

void
printbits(const char* string, uint64_t n)
{
    char s[65];
    s[64] = 0;
    uint64_t mask = 0x1;
    for (int i=0; i<64; i++)
    {
        s[63-i] = (n & mask) ? '1' : '0';
        mask <<= 1;
    }
    std::cout << string << s << std::endl;
}


int
main(int argc, char* argv[])
{
    uint64_t n;

    n = 1;
    n <<= 3;

    printbits ("n: ", n);
    
    FILE* outfile = fopen ("little.data", "w");
    fwrite ((const void*) &n, sizeof(uint64_t), 1, outfile);
    fclose(outfile);

    if (FILE* lfile = fopen ("little.data", "r"))
    {
        uint64_t l;
        fread ((void*) &l, sizeof(uint64_t), 1, lfile);
        fclose(lfile);
        printbits("l: ", l);
    }
    
    if (FILE* bfile = fopen ("big.data", "r"))
    {
        uint64_t b;
        fread ((void*) &b, sizeof(uint64_t), 1, bfile);
        fclose(bfile);
        printbits("b: ", b);
    }
    
    return 0;
}


        
        
        
