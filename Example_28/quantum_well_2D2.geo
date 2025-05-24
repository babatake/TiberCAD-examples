// パラメータ
L_p = 2;       // p層の幅
L_well = 5;    // 井戸の幅
L_barrier = 2; // 障壁の幅
L_n = 2;       // n層の幅
H = 10;        // 高さ（y方向）

lc = 0.5;      // メッシュの細かさ

// 座標定義
x0 = 0;
x1 = x0 + L_p;
x2 = x1 + L_barrier;
x3 = x2 + L_well;
x4 = x3 + L_barrier;
x5 = x4 + L_n;

// 頂点（下辺）
Point(1) = {x0, 0, 0, lc};
Point(2) = {x1, 0, 0, lc};
Point(3) = {x2, 0, 0, lc};
Point(4) = {x3, 0, 0, lc};
Point(5) = {x4, 0, 0, lc};
Point(6) = {x5, 0, 0, lc};

// 頂点（上辺）
Point(7) = {x0, H, 0, lc};
Point(8) = {x1, H, 0, lc};
Point(9) = {x2, H, 0, lc};
Point(10) = {x3, H, 0, lc};
Point(11) = {x4, H, 0, lc};
Point(12) = {x5, H, 0, lc};

// ライン定義（下辺）
Line(1) = {1,2};   // p層
Line(2) = {2,3};   // 左バリア
Line(3) = {3,4};   // 井戸
Line(4) = {4,5};   // 右バリア
Line(5) = {5,6};   // n層

// ライン定義（上辺）
Line(6) = {7,8};
Line(7) = {8,9};
Line(8) = {9,10};
Line(9) = {10,11};
Line(10) = {11,12};

// 垂直ライン
Line(11) = {1,7};
Line(12) = {2,8};
Line(13) = {3,9};
Line(14) = {4,10};
Line(15) = {5,11};
Line(16) = {6,12};

// 面定義
Line Loop(17) = {1,12,-6,-11};    // p層
Plane Surface(18) = {17};

Line Loop(19) = {2,13,-7,-12};    // 左バリア
Plane Surface(20) = {19};

Line Loop(21) = {3,14,-8,-13};    // 井戸
Plane Surface(22) = {21};

Line Loop(23) = {4,15,-9,-14};    // 右バリア
Plane Surface(24) = {23};

Line Loop(25) = {5,16,-10,-15};   // n層
Plane Surface(26) = {25};

// Physical Surface 定義
Physical Surface("p_layer") = {18};
Physical Surface("barrier_p") = {20};
Physical Surface("well") = {22};
Physical Surface("barrier_n") = {24};
Physical Surface("n_layer") = {26};


// 電極定義（y=0 or y=H のライン）
Physical Line("anode") = {11};
Physical Line("cathode") = {16};

