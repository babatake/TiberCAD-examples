// パラメータ
L_well = 5;    // 井戸の幅
L_barrier = 2; // 障壁の幅
H = 10;        // 高さ（y方向）

lc = 0.5;      // メッシュの細かさ

// 座標定義
x0 = 0;
x1 = x0 + L_barrier;
x2 = x1 + L_well;
x3 = x2 + L_barrier;

// 頂点（下辺）
Point(1) = {x0, 0, 0, lc};
Point(2) = {x1, 0, 0, lc};
Point(3) = {x2, 0, 0, lc};
Point(4) = {x3, 0, 0, lc};

// 頂点（上辺）
Point(5) = {x0, H, 0, lc};
Point(6) = {x1, H, 0, lc};
Point(7) = {x2, H, 0, lc};
Point(8) = {x3, H, 0, lc};

// 井戸の左右ライン
Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};

Line(4) = {5,6};
Line(5) = {6,7};
Line(6) = {7,8};

Line(7) = {1,5};
Line(8) = {2,6};
Line(9) = {3,7};
Line(10) = {4,8};

// 面定義
Line Loop(11) = {1,8,-4,-7}; // 左障壁
Plane Surface(12) = {11};

Line Loop(13) = {2,9,-5,-8}; // 中央井戸
Plane Surface(14) = {13};

Line Loop(15) = {3,10,-6,-9}; // 右障壁
Plane Surface(16) = {15};

// Physical regions
Physical Surface("barrier") = {12, 16};
Physical Surface("well") = {14};

Physical Line("anode") = {7};
Physical Line("cathode") = {10};

