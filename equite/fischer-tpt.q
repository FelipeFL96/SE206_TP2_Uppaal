//This file was generated from (Commercial) UPPAAL 4.0.15 rev. CB6BB307F6F681CB, November 2019

/*
Check if process 2 eventually executes the critical section.
*/
Process(2).L0 --> Process(2).L4toLk

/*
Check if process 1 eventually executes the critical section.
*/
Process(1).L0 --> Process(1).L4toLk

/*
Check that no pairs of distinct process can be both in the critical section
*/
A[] forall(i:myID) forall(j:myID) Process(i).L4toLk && Process(j).L4toLk imply i==j
