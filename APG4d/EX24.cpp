#include <iostream>
#include <string>
#include <cstdio>
using namespace std;

// 以下に、24時間表記の時計構造体 Clock を定義する
struct Clock{
    // Clock構造体のメンバ変数を書く
    int hour; // 時間を表す (0~23の値をとる)
    int minute; // 分を表す (0~59の値をとる)
    int second; // 秒を表す (0~59の値をとる)
    // set
    void set(int h, int m, int s) {
        hour = h;
        minute = m;
        second = s;
    }
    // メンバ変数が表す時刻の文字列を返す
    string to_str() {
        char buffer[10];
        sprintf(buffer, "%02d:%02d:%02d", hour, minute, second);
        string res = buffer;
        return res;
    }

    // diff_second 秒だけメンバ変数が表す時刻を変更する(ただし、日付やうるう秒は考えない)
    // diff_second の値が負の場合、時刻を戻す
    // diff_second の値が正の場合、時刻を進める
    // diff_second の値は -86400 ~ 86400 の範囲を取りうる
    void shift(int diff_second) {
        int diff_hour = diff_second / 3600;
        diff_second %= 3600;
        int diff_minute = diff_second / 60;
        diff_second %= 60;

        // 秒<->分
        second += diff_second;
        if (second >= 60) {
            minute += 1;
            second -= 60;
        } else if (second < 0) {
            minute -= 1;
            second += 60;
        }

        // 分<->時
        minute += diff_minute;
        if (minute >= 60) {
            hour += 1;
            minute -= 60;
        } else if (minute < 0) {
            hour -= 1;
            minute += 60;
        }

        // 時<->日
        hour += diff_hour;
        if (hour >= 24) {
            hour -= 24;
        } else if (hour < 0) {
            hour += 24;
        }
    }
};

// -------------------
// ここから先は変更しない
// -------------------
 
int main() {
  // 入力を受け取る
  int hour, minute, second;
  cin >> hour >> minute >> second;
  int diff_second;
  cin >> diff_second;
 
  // Clock構造体のオブジェクトを宣言
  Clock clock;
 
  // set関数を呼び出して時刻を設定する
  clock.set(hour, minute, second);
 
  // 時刻を出力
  cout << clock.to_str() << endl;
 
  // 時計を進める(戻す)
  clock.shift(diff_second);
 
  // 変更後の時刻を出力
  cout << clock.to_str() << endl;
}