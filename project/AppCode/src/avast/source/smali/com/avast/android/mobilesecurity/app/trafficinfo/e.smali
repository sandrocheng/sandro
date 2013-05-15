.class public final enum Lcom/avast/android/mobilesecurity/app/trafficinfo/e;
.super Ljava/lang/Enum;
.source "NetworkStatsService.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

.field public static final enum b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

.field public static final enum c:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

.field private static final synthetic d:[Lcom/avast/android/mobilesecurity/app/trafficinfo/e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    .line 108
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    const-string v1, "ON"

    invoke-direct {v0, v1, v3}, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    .line 109
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v4}, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    .line 105
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    sget-object v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->d:[Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/trafficinfo/e;
    .locals 1
    .parameter

    .prologue
    .line 105
    const-class v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/app/trafficinfo/e;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->d:[Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    return-object v0
.end method
