(* double an integer *)
fun double x = x + x;

(* returns the max of three integers  *)
fun max(x:int, y:int, z:int) =
  if x > y andalso x > z then x
  else if y > z then y
  else z;

(* calcualte factorial *)
fun fact 0 = 1
  | fact x = x * fact(x - 1);

(* calculate greatest common denominator  *)
fun gcd(m, n) = 
  if m = n then n 
  else if m > n then gcd(m - n, m)
  else gcd(m, n - m)

(* concatenate two lists of generic type *)
fun concat (nil, b) = b
  | concat(a, b) = hd(a)::concat(tl a, b);


(* length of a list *)
fun len [] = 0
  | len l = 1 + len(tl l);

(* double all items in a list *)
fun double_all [] = []
  | double_all(h::t) = double(h)::double_all(t);

(* reverse a list *)
fun reverse [] = []
  | reverse (h::t) = reverse(t) @ [h]

(* sum of a list of integers  *)
fun sum [] = 0
  | sum(h::t) = h + sum(t);

(* apply a function to a list if items *)
fun apply (f, []) = []
  | apply(f, h::t) = f(h)::apply(f, t);

(* square all items in a list *)
fun square_all l = apply(fn x => x * x, l);

(* filter items in a list *)
fun filter (f, []) = []
  | filter(f, h::t) = if f(h) 
                      then h::filter(f, t) 
                      else filter(f, t);

(* remove odd numbers from a list *)
fun filter_even l = filter(fn x => x mod 2 = 0, l)
