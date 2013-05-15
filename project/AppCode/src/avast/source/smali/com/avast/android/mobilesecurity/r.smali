.class public Lcom/avast/android/mobilesecurity/r;
.super Ljava/lang/Object;
.source "Contract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 931
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "realtimeElapsed"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "totalTx3G"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "totalRx3G"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "totalTxWifi"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "totalRxWifi"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "totalTxRoaming"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "totalRxRoaming"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "totalTx"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "totalRx"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cumulationLevel"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "uid"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "totalTxOffset"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "totalRxOffset"

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/android/mobilesecurity/r;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 960
    sget-object v0, Lcom/avast/android/mobilesecurity/a;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 961
    const-string v1, "trafficInfo"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 962
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
