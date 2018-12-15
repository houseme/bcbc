# Script for bank/name.go

BEGIN {
  print "// This file is generated by script. Do not modify directly.\n"
  print "package bank\n"
  print "// BankNameMap is a map which uses bank abbr as KEY and bank name as VALUE"
  print "var BankNameMap = map[string]string{"

  FS=","
}

FNR > 1 {
  if (/^$/) {
    print; next
  }
  fmt = "\"%s\":\"%s\",\n"
  printf fmt, $1, $2
}

END { print "}" }
