#include <stdio.h>
#include <time.h>
#include <string.h>

struct result{
    int input_len;
    int incorrect;
    float time;
};

struct result practice(char * sen){
    time_t start_time, end_time;
    char input[1024];
    struct result res;
     int check = 0;

    puts(sen);

    start_time = time(NULL);
    scanf("%[^\n]s", input);
    res.input_len = strlen(input);
    end_time = time(NULL);

    for(int i=0;i<strlen(sen);i++){
        if(sen[i] != input[i]){
            check++;
        }
    }
    res.incorrect = check;
    printf("오타수 : %d\n", check);
    res.time = (float)(end_time - start_time);
    return res;
}

int main() {
    struct result first, secend, third;
    float t_time;
    int total;

    char first_sen[] = "Hello world";
    char secend_sen[] = "I am groot";
    char third_sen[] = "Nice to meet you";

    //run
    first = practice(first_sen);
    getchar();
    secend = practice(secend_sen);
    getchar();
    third = practice(third_sen);

    //가독성을 위해 따로 나누었음
    int text_len = strlen(first_sen) + strlen(secend_sen) + strlen(third_sen);
    int first_total = first.input_len - first.incorrect;
    int secent_total = secend.input_len - secend.incorrect;
    int third_total = third.input_len - third.incorrect;

    total = first_total + secent_total + third_total;
    t_time = first.time + secend.time + third.time;

    printf("분당 타자수: %.2f\n", (float)total / t_time * 60.0);
    return 0;
}