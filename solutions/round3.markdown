---
layout: default
title:  "Round 3 explanations"
---

### Problem 1 ###

You got this far:

$$
S = $0 (1/6) + $1 (1/6) (5/6) + $2 (1/6) (5/6)^2 + ... \\
S = \sum_{i=0}^{\inf} i (1/6) (5/6)^i
$$

But I'm not sure you know how to solve that.  Let's start with an easier infinite sum:

What's the value of:

$$
\sum_{i=0}^{\inf} x^i
$$

We're going to call the sum $$S$$.  We don't know what $$S$$ is yet, but we can solve for it:

$$
S = 1 + x + x^2 + x^3 + x^4 + ...
$$

multiply both sides by x

$$
xS = x + x^2 + x^3 + x^4 + x^5 + ...
$$

$$xS$$ looks *really* similar to $$S$$.  Actually, if you add $$1$$ to $$xS$$, the right hand side looks like the right hand side of the equation for $$S$$ again.

$$
\begin{align*}
1 + xS &= 1 + x + x^2 + x^3 + x^4 + x^5 + ... = S \\
1 + xS &= S\\
1 &= S - xS \\
S &= \frac{1}{1-x}
\end{align*}
$$

This formula is very important, and useful in solving our actual problem.

Our actual problem was:

$$
S = \sum_{i=0}^{\inf} i (1/6) (5/6)^i
$$

So, if we didn't have the $$i$$ multiplying every element in the sum, this problem would be almost exactly like the one above.  Unfortunately, we do.  Here's a tricky way to solve it.  I'm going to define new sums $$S_1$$ to $$S_n$$.

$$
\begin{align*}

S = 1 (1/6) (5/6) + 2 (1/6) (5/6)^2 + 3 (1/6) (5/6)^3 + 4 (1/6) (5/6)^4 + ... \\
\\
S_1 = 1 (1/6) (5/6) + 1 (1/6) (5/6)^2 + 1 (1/6) (5/6)^3 + 1 (1/6) (5/6)^4 + ... \\
S_2 = 1 (1/6) (5/6)^2 + 1 (1/6) (5/6)^3 + 1 (1/6) (5/6)^4 + ... \\
S_3 = 1 (1/6) (5/6)^3 + 1 (1/6) (5/6)^4 + ... \\
S_4 = 1 (1/6) (5/6)^4 + ... \\
...
\end{align*}
$$

Notice how if you sum $$S1 + S2 + S3 + S4 + ...$$ (vertically), you get back $$S$$?  Ok, so, that's kind of cool - but why does this help?  Well, you know how to solve for the value of $$S1$$.

$$
S1 = 1/6 [ (5/6) + (5/6)^2 + (5/6)^3 + ... ] \\
S1 = 1/6 [ \frac{1}{1-(5/6)} - 1 ]\\
S1 = 5/6 \\
$$

With that you also know how to solve for $$S2$$.

$$
\begin{align*}
S2 &= S1 (5/6) \\
S2 &= (5/6) \\
 \\
S3 &= S2 (5/6) \\
S3 &= (5/6)^2 \\
 \\
S4 &= S3 (5/6) \\
S3 &= (5/6)^3 \\
\end{align*}
$$

and so on...

So, to sum it all up, the value of:

$$
\begin{align*}
S &= \sum_{i=1}^{\inf} S_i \\
S &= S_1 + S_2 + S_3 + S_4 + ... \\
S &= (5/6) + (5/6)^2 + (5/6)^3 + (5/6)^4 + ... \\
S &= \frac{1}{1-(5/6)} - 1\\
S &= 6 - 1 \\
S &= 5
\end{align*}
$$

So, if at this point you're thinking, "really!?...", that's understandable.  However, there's a *much* easier way to solve this problem, which is the way I actually want to teach you.  Here goes:

Let's call the value of the game $$S$$.  If I roll a 6, I lose, and if I don't I've won $1 and I'm in the *exact same place as I was one roll ago*.  Put another way, if I don't roll a 6, I win $1 and I get to play the same game again - which is worth $$S$$ (by definition).

$$
\begin{align*}
S &= (1/6) 0 + (5/6) (1 + S) \\
(1/6) S &= (5/6) \\
S &= 5 
\end{align*}
$$

QED!
