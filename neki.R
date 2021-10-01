Gene_Prot_ID_spojeno2 <-merge(ID_Desc,ID_spojeno,all = TRUE)


exelica <- createWorkbook()
addWorksheet(wb = exelica, sheetName = "VItis_phylo_map", gridLines = FALSE)
writeDataTable(wb = exelica, sheet = 1, x = vitis_phylo_map)
addWorksheet(wb = exelica, sheetName = "Distribucija", gridLines = FALSE)
writeDataTable(wb = exelica, sheet = 2, x = distribucija)
addWorksheet(wb = exelica, sheetName = "ID_spojeni", gridLines = FALSE)
writeDataTable(wb = exelica, sheet = 3, x = Gene_Prot_ID_spojeno2)
worksheetOrder(exelica)
names(exelica)
saveWorkbook(exelica, "C:\\Users\\Kian\\Desktop\\Kian_Praksa\\Vinova_loza_filostratigrafija\\Filostratigrafska_mapa\\Filostratigrafija_Vitis.xlsx", overwrite = TRUE)
#Za ovo ti treba openxlsx package, Mapa vitis_phylo_map njena distripucija kao i Gene_Prot_ID_spojeno, to dobis mergeanjem id decs i id spojeno po protIDu
