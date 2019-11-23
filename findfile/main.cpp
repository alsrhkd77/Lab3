#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <dirent.h>
#include <cstdlib>
#include <string.h>

void printDir(char * dirName){
    DIR *pdir;
    struct dirent *pde;
    int i = 0;
    char buff[1024];

    if ((pdir = opendir(dirName)) < 0) {
        perror("opendir");
        exit(1);
    }

    printf("%s:\n", dirName);
    while ((pde = readdir(pdir)) != NULL) {
        printf("%20s ", pde->d_name);
        if (++i % 3 == 0)
            printf("\n");
    }
    printf("\n\n\n");
    closedir(pdir);
}

void readDir(char * dirName){
    DIR *pdir;
    struct dirent *pde;
    int i = 0;
    char buff[1024];

    if ((pdir = opendir(dirName)) < 0) {
        perror("opendir");
        exit(1);
    }
    printDir(dirName);
    while ((pde = readdir(pdir)) != NULL) {
        if(pde->d_type == DT_DIR && strcmp(pde->d_name, ".") && strcmp(pde->d_name, "..")){
            strcpy(buff, pde->d_name);
            //printf("%20s ", buff);
            //printf("\n");
            readDir(buff);
        }
        /*
        printf("%20s ", pde->d_name);
        if (++i % 3 == 0)
            printf("\n");
            */
    }
    //printf("\n");
    closedir(pdir);
}

int main(int argc, char *argv[]) {
    DIR *pdir;

    if (argc < 2) {
        fprintf(stderr, "Usage: file_dir dirname\n");
        exit(1);
    }

    readDir(argv[1]);
}
