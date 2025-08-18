# Getting Good Results from Claude Code • Chris Dzombak
从 Claude 代码中获得良好的结果  
作者在较短的时间内编写了 ~12 个程序/项目。

原文地址 [www.dzombak.com](https://www.dzombak.com/blog/2025/08/getting-good-results-from-claude-code/)

---
I’ve been experimenting with LLM programming agents over the past few months. Claude Code has become my favorite.

It is not without issues, but it’s allowed me to write ~12 programs/projects in relatively little time, and I feel I would not have been able to do all this in the same amount of time without it. Most of them, I wouldn’t even have bothered to write without Claude Code, simply because they’d take too much of my time. (A list is included at the end of this post.)
S
I’m still far from a Claude Code expert, and I have a backlog of blog posts and documentation to review that might be useful. But — and this is critical — you don’t have to read everything that’s out there to start seeing results. You don’t even need to read _this_ post; just type some prompts in and see what comes out.

That said, because I just wrote this up for a job application, **here’s how I’m getting good results from Claude Code**. I’ve added links to some examples where appropriate.

*   A key is writing a clear spec ahead of time, which provides context to the agent as it works in the codebase. _(examples:_ [_1_](https://github.com/cdzombak/mac-install/blob/main/SPEC.md?ref=dzombak.com)_,_ [_2_](https://github.com/cdzombak/lychee-ai-organizer/blob/main/SPEC.md?ref=dzombak.com)_,_ [_3_](https://github.com/cdzombak/lychee-meta-tool/blob/main/SPEC.md?ref=dzombak.com)_,_ [_4_](https://github.com/cdzombak/xrp/blob/main/doc/SPEC.md?ref=dzombak.com)_)_
*   Having a document for the agent that outlines the project’s structure and how to run e.g. builds and linters is helpful. _(examples:_ [_1_](https://github.com/cdzombak/xrp/blob/main/CLAUDE.md?ref=dzombak.com)_,_ [_2_](https://github.com/cdzombak/lychee-meta-tool/blob/main/CLAUDE.md?ref=dzombak.com)_,_ [_3_](https://github.com/cdzombak/lychee-ai-organizer/blob/main/CLAUDE.md?ref=dzombak.com)_)_
*   Asking the agent to perform a code review on its own work is surprisingly fruitful.
*   Finally, I have a personal “global” agent guide describing best practices for agents to follow, specifying things like problem-solving approach, use of TDD, etc. _(This file is listed near the end of this post.)_

Then there’s the question of **validating LLM-written code.**

AI-generated code _is_ often incorrect or inefficient.

It’s important for me to call out that **I believe I’m ultimately responsible for the code that goes into a PR with my name on it, regardless of how it was produced**.

Therefore, especially in any professional context, I manually review all AI-written code and test cases. I’ll add test cases for anything I think is missing or needs improvement, either manually or by asking the LLM to write those cases (which I then review).

At the end of the day, manual review is necessary to verify that behavior is implemented correctly and tested properly.

Personal “global” agent guide
-----------------------------

This lives at `~/.claude/CLAUDE.md`:


Projects written using Claude Code
----------------------------------
