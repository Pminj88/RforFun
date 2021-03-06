args = commandArgs()
basename = sub(".R$", "", sub("^--file=(.*/)?", "", args[grep("^--file=", args)]))
if (length(basename) != 0)
    quartz(type="pdf", file=paste0(basename, ".pdf"), width=5, height=2)
par(family="HiraMinProN-W3")
par(mgp=c(2,0.5,0)) # title and axis margins. default: c(3,1,0)
par(mar=c(3,4,2,1)+0.1) # bottom, left, top, right margins. default: c(5,4,4,2)+0.1
data = matrix(c(4,5,6,3,2, 1,4,3,6,6), byrow=TRUE, nrow=2)
rownames(data) = c("従来型", "ICT利用")
colnames(data) = c("最悪", "悪い", "普通", "良い", "最高")
ratio = data / rowSums(data) * 100
barplot(t(ratio[2:1,]), horiz=TRUE, las=1, xlab="%", axes=FALSE)
axis(1, line=0.5, family="Palatino")
t = ratio[1,]
mtext(colnames(data), at=cumsum(t)-t/2)
dev.off()
