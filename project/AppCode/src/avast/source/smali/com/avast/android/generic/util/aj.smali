.class public Lcom/avast/android/generic/util/aj;
.super Ljava/lang/Object;
.source "TimeFormatUtils.java"


# direct methods
.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 22
    div-int/lit8 v4, p1, 0x3c

    .line 23
    rem-int/lit8 v5, p1, 0x3c

    .line 25
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    .line 26
    new-instance v0, Ljava/util/Date;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
