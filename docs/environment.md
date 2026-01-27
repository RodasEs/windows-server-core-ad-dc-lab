## Environment Overview

At the begninning of this lab, I did not understand what I was supposed to be looking at when downloading Windows Server Core onto my VM. I was confused because I could not access any graphical interface. There was no Start Menu, no Server Manager, and nothing to click. Everything I interacted with was command-line based.
After investigating, I realized that the system I installed was **Windows Server Core**. Server Core does not include a GUI and is designed to be managed through the command line and PowerShell.

This ended up being a positive learning experience for a few reasons:
* It allowed for an explicit learning experience with minimal abstration
* It reflects how Domain Controllers are often deployed in real environments, where Server Core is preferred
* From a security perspective, Server Core has a smaller attack surface. Fewer installed components means fewer services, libraries, and GUI-related dependencies that could introduce vulnerabilities. Like DLL vulnerabilites within a GUI.


Understanding that I was on Server Core explained all earlier confusion and shaped how the rest of the lab had to be approached.
