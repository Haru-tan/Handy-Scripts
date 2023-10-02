@echo off
PowerShell -NoProfile -Command "Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Bypass -Force"
PowerShell -NoProfile -File VirtualMonitorInstaller.ps1
