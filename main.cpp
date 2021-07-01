#include <iostream>
bool correct (std::string number) {
    bool error=true;
    bool point=false;
    bool minus=false;
    int count=0;
    for (int i=0;i < number.length() && error;i++) {
        if (i==0) {
            if (number[i]=='-') {
                error=true;
                minus=true;
            } else if (number[i] >= 48 && number[i]<=57) {
                error=true;
            } else if (number[i] == '.') {
                error=true;
                point=true;
            } else {
                error=false;
            }
        }
        if (i>0) {
            if (number[i]=='.' && !point) {
                point=true;
                i++;
            } else if (point) {
                if (!(number[i] >= 48 && number[i]<=57)) {
                    error=false;
                }
            } else if (minus) {
                if ((number[i] <= 48 && number[i]>=57 && number[i]!='.') || (number[i]='.' && point)) {
                    error=false;
                }
            } else if (!(number[i] >= 48 && number[i]<=57)) {
                error=false;
            }
        }

        if (number[i] >= 48 && number[i]<=57) {
            count++;
        }
    }
    if (count == 0) {
        error=false;
    }
    return error;
}

std::string partition (std::string number, int positionNumber) {
    int dotCount = 0;
    int lastCount = 0;
    std::string part1;
    std::string part2;

    for (int i = 0; i < number.length(); i++) {
        if (number[i] == '.') {
            dotCount++;
            if (dotCount == 1) {
                part1 = number.substr(0, i);
                lastCount = i;
                part2 = number.substr(lastCount + 1);
            }
        }
    }
    if (dotCount == 0) {
        part1 = number;
        part2 = "0";
    }
    char dotCounter = 48 + dotCount;
    std::string newDotCounter;
    newDotCounter += dotCounter;
    if (positionNumber == 0) return part1;
    if (positionNumber == 1) return part2;
    if (positionNumber == 2) return newDotCounter;
}

std::string comparing(std::string number1,std::string number2) {
    std::string number;
    bool more = false;
    bool less = false;
    std::string number_1, number_2;
    bool zero = true;
    if (correct(number1) == 0 || correct(number2) == 0) {
        return "Incorrect\n";
    } else {
        if (number1[0] == '-' && number2[0] != '-') {
            for (int i = 1; i < number1.length(); i++) {
                if (number1[i] != '0' && number1[i] != '.') {
                    zero = false;
                    return "Less\n";
                }
            }
            for (int i = 0; i < number2.length(); i++) {
                if (number2[i] != '0' && number2[i] != '.') {
                    zero = false;
                    return "Less\n";
                }
            }
            if (zero = true) return "Equal";
        } else if (number1[0] != '-' && number2[0] == '-') {
            for (int i = 0; i < number1.length(); i++) {
                if (number1[i] != '0' && number1[i] != '.') {
                    zero = false;
                    return "More\n";
                }
            }
            for (int i = 1; i < number2.length(); i++) {
                if (number2[i] != '0' && number2[i] != '.') {
                    zero = false;
                    return "More\n";
                }
            }
            if (zero = true) return "Equal";
        } else {
            for (int i = 0; i < 2; i++) {
                number_1 = partition(number1, i);
                number_2 = partition(number2, i);
                if (i == 0) {
                    int j = 0;
                    while (number_1[j] < 49) {
                        if (j != number_1.length() - 1) {
                            j++;
                        } else break;
                    }
                    number_1 = number_1.substr(j);
                    j = 0;
                    while (number_2[j] < 49) {
                        if (j != number_2.length() - 1) {
                            j++;
                        } else break;
                    }
                    number_2 = number_2.substr(j);
                }
                if (number_1.length() > number_2.length()) {
                    if (i == 0) {
                        for (int a = 0; a < number_1.length() - number_2.length(); a++) {
                            number_2.insert(0, "0");
                        }
                    } else if (i == 1) {
                        int dif = number_1.length() - number_2.length();
                        for (int a = 0; a < dif; a++) {
                            number_2 += "0";
                        }
                    }
                } else if (number_1.length() < number_2.length()) {
                    if (i == 0) {
                        for (int a = 0; a < number_2.length() - number_1.length(); a++) {
                            number_1.insert(0, "0");
                        }
                    } else if (i == 1) {
                        int dif = number_1.length() - number_2.length();
                        for (int a = 0; a < dif; a++) {
                            number_2 += "0";
                        }
                    }
                }
                if (number1[0] != '-' && number2[0] != '-') {
                    for (int k = 0; k < number_1.length(); k++) {
                        if (number_1[k] > number_2[k]) {
                            more = true;
                            return "More";
                        } else if (number_1[k] < number_2[k]) {
                            less = true;
                            return "Less";
                        }
                    }
                } else if (number1[0] == '-' && number2[0] == '-') {
                    for (int k = 0; k < number_1.length(); k++) {
                        if (number_1[k] > number_2[k]) {
                            less = true;
                            return "Less";
                        } else if (number_1[k] < number_2[k]) {
                            more = true;
                            return "More";
                        }
                    }
                }
            }
        }
    }
    if (!more && !less) return "Equal";
}
int main() {
    std::string number1, number2;
    std::cout << "Input number 1: ";
    std::cin >> number1;
    std::cout << "Input number 2: ";
    std::cin >> number2;

    std::cout << comparing(number1, number2);
}