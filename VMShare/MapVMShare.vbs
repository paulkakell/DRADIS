Option Explicit
Dim u, p, s, l, HyperVHost, fso, file
Dim Network: Set Network= CreateObject("WScript.Network")
Const Unicode = -1

Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.OpenTextFile("C:\Scripts\VMShare\Hyper-VHost.txt",1,False)
HyperVHost = file.Readline 

file.Close

l = "Z:"
s = "\\" & HyperVHost & "\VMShare"

u = "\VMShare"
p = "Pass@word1"

Network.MapNetworkDrive l, s, False, u, p

