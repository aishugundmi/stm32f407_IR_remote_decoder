
file = "key4.txt"

f = open(file,"r")
a = f.read()
f.close()


val = a.split("\n")

c = "#include <stdint.h>\n"

c = c + "const int " + file.split(".")[0] +"[]  = {"
for i in val:
    if i != "":
        c = c + str(i) + ","

c = c[:-1]

c = c + "};\n"

print(c)

f = open(file.split(".")[0] + ".h", "w")
f.write(c)
f.close()