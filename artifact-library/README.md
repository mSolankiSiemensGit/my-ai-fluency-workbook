# Artifact Library

This is the most important folder in your repo.

Every prompt you build, improve, or reuse lives here. By Week 9 you'll have a personal, coach-grade library you can take into any client, any team, any situation.

---

## How to add a prompt

1. Create a new file. Name it something you'll find later: `retro-theme-finder.md`, `stuck-team-mirror.md`, `stakeholder-translator.md`.
2. Copy the block from [`../templates/prompt-template.md`](../templates/prompt-template.md).
3. Fill it in.
4. Commit.

That's it. No folders, no categories — yet.

---

## When to start categorizing

In **Week 2, Day 5** you'll group prompts by use case (retros, coaching questions, facilitation, stakeholder comms). When that happens, move files into subfolders like:

```
artifact-library/
├── retros/
├── coaching-questions/
├── facilitation/
├── stakeholder-comms/
└── misc/
```

Don't pre-build the folders. Let them grow from real prompts.

---

## The weekly rhythm

Every week from Week 1 onward you will:

- **Improve 1 prompt** — open a prompt from a previous week and make it sharper.
- **Reuse 1 prompt** — pull a prompt into a real coaching situation this week.
- **Reflect on 1 failed prompt** — write one line on why it didn't work.

This is how the library becomes yours instead of a pile of files.

---

## Versioning your prompts

When you improve a prompt, don't overwrite the original. Add a `## Changelog` section at the bottom of the file:

```markdown
## Changelog
- v1: 2026-04-07 — original version (generic, no role framing)
- v2: 2026-04-14 — added role, situation, output format. Output improved significantly.
```

This makes it easy to see what changed and why. It also means you can revert if the new version performs worse.

---

## Worked examples

See [`examples/scenario-examples.md`](examples/scenario-examples.md) for four fully worked anonymized scenarios you can use when you don't have a live coaching situation to draw from. They're also useful for testing new prompts against a consistent context.

---

## Safety

No real names. No client names. No sensitive business detail. Ever. See [Week 2](https://github.com/ampyard/ai-fluent-agile-coach/tree/main/week-02-coaching-with-ai) for the anonymization pattern.
