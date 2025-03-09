
//function definition
fun max3a (a,b,c) = if a>b then if a>c then a else c else if b>c then b else c;

max3a (10,2,4);

val t = (10,2,3);
max3a (t);
//works the same way

fun min3 (a,b,c) = if a<b then if a<c then a else c else if b<c then b else c;
min3 (t);

//function with list
val l = [2 ,3 ,4];
fun third (l) = hd(tl(tl(l)));
third (l);

//ex
(a,b,c)->(c,b,a);
fun reverse (a,b,c) = (c , b, a);

fun third_char (s) = third(explode s);
third_char("ciao");

fun cycle (l) = tl (l)@[hd(l)];

fun query (a,b,c) = (max3a(a,b,c),min3(a,b,c));

fun sort (a,b,c) = [max3a(a,b,c),,min3(a,b,c)];

fun rn (r) = real(round (r*10.0))/10.0;

val a = 2;
fun f b = a * b;
//if later on you change a it stays 2 in the function

//RECURSIVE FUNCTIONS
fun reverse L =
if L = nil then nil
else reverse (tl L)@[hd L];

//non linear recursion
fun comb (n,m) = 
if m=0 orelse m=n then 1
else comb (n-1,m)+comb(n-1,m-1);

//mutual recursion
fun take L = if L = nil then nil else hd(L)::skip(tl(L))
and
fun skip L = if L = nil then nil else take (tl(L));

*comment