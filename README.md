# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

Trace Hughey & Christopher Smith
	
## Summary

We learned about and implemented a ripple counter and modulo counter.  A ripple counter is T-FlipFlops chained together and a modulo counter has full adders hooked to D-FlipFlop memory and then a comparator to check what the current count is and resets the memory when it matches the desired count.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?

Because we toggle the final counter each time count happens, and you have to toggle twice to make one Hz (going from high to low and then back from low to high).

### 2 - Why does the ripple counter's output go to all 1s on the first clock cycle?

Because they're all setup to toggle because of their predecessor's output going from 0 to 1 and because they all start at 0, then when the first one toggles on the first clock cycle, the trigger cascades and they all toggle on.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?

17 wide.  From ceil[log2(Cval)] where Cval is 100000 (100,000,000/1,000).
