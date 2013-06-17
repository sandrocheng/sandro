.class public Lcom/antivirus/core/scanners/FileScannerJniWrapper;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FileScanner"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public native cancel(I)V
.end method

.method public native destroy(I)V
.end method

.method public native getFileCount(I)I
.end method

.method public native scan(ILjava/lang/String;)[Ljava/lang/String;
.end method
