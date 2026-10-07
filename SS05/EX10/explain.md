1. Two Approaches
- GUI: Right-click → New Folder, repeat 50 times, rename each manually.
- CLI: One command to create 50 folders at once. <br>
`mkdir Branch_{01..50}` <br>

2. GUI vs CLI Comparison
<!--markdown-->
| Criteria	| GUI	 | CLI |
| --- | --- | --- |
| Speed |	Slow, 50 manual steps |	Fast, one command |
| Repeatability / Automation |	Hard, not scriptable | Excellent, scriptable |
| Learning curve	 | Easy for newbies	| Steeper but quick |
| Accuracy	| High typo risk	| High if command is correct |
| Scalability	| Bad for 100 branches	| Great |

3. Decision <br>
- Choose CLI. <br>
   - Reason: 1-hour deadline, 50 folders, 100 branches, accuracy is critical. CLI automates the work, reduces manual typos, and can be reused for all branches. This saves the project.
<br>
4. Example Commands <br>
- Create 3 sample folders
`mkdir Ban Kho Menu` 

- Create 50 folders at once
`mkdir Branch_{01..50}`
