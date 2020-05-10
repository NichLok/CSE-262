# Lehigh University CSE262 - Programming Languages - Homework 5

Solve the following ten questions regarding the Lambda Calculus.

## Question 1

Make all parentheses explicit in these λ- expressions:

1. (λp.pz) λq.w λw.wqzp


2. λp.pq λp.qp


## Question 2

In the following expressions say which, if any, variables are bound (and to which λ), and which are free.

1. λs.s z λq.s q

2. (λs. s z) λq. w λw. w q z s

3. (λs.s) (λq.qs)

4. λz. (((λs.sq) (λq.qz)) λz. (z z))

## Question 3

Put the following expressions into beta normal form (use β-reduction as far as possible, α-conversion as needed) assuming left-association.

1. (λz.z) (λq.q q) (λs.s a)

2. (λz.z) (λz.z z) (λz.z q)

3. (λs.λq.s q q) (λa.a) b

4. (λs.λq.s q q) (λq.q) q

5. ((λs.s s) (λq.q)) (λq.q)

## Question 4

1. Write the truth table for the or operator below.


2. The Church encoding for OR = (λp.λq.p p q)

Prove that this is a valid "or" function by showing that its output matches the truth table above. You will have 4 derivations. For the first derivation, show the long-hand solution (don't use T and F, use their definitions). For the other 3 you may use the symbols in place of the definitions. 




## Question 5

Derive a lambda expression for the NOT operator. Explain how this is similar to an IF statement.






## Instructions

1. Fork the relevant repository into your own namespace. [Instructions](https://docs.gitlab.com/ee/workflow/forking_workflow.html#creating-a-fork)
2. Set your forked repository visibility to private. [Instructions](https://docs.gitlab.com/ee/public_access/public_access.html#how-to-change-project-visibility)
3. Add user "LehighCSE262" as a member to the project with "maintainer" access-level. [Instructions](https://docs.gitlab.com/ee/user/project/members/#add-a-user). 
4. Clone your newly forked repository. [Instructions](https://docs.gitlab.com/ee/gitlab-basics/start-using-git.html#clone-a-repository) 
5. Answer the questions here in the readme or in another document. Upload your solutions here to Gitlab.