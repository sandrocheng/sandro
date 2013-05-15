.class final enum Lcom/google/analytics/tracking/android/ad;
.super Ljava/lang/Enum;
.source "GAServiceProxy.java"


# static fields
.field public static final enum a:Lcom/google/analytics/tracking/android/ad;

.field public static final enum b:Lcom/google/analytics/tracking/android/ad;

.field public static final enum c:Lcom/google/analytics/tracking/android/ad;

.field public static final enum d:Lcom/google/analytics/tracking/android/ad;

.field public static final enum e:Lcom/google/analytics/tracking/android/ad;

.field public static final enum f:Lcom/google/analytics/tracking/android/ad;

.field public static final enum g:Lcom/google/analytics/tracking/android/ad;

.field private static final synthetic h:[Lcom/google/analytics/tracking/android/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/google/analytics/tracking/android/ad;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/google/analytics/tracking/android/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/ad;->a:Lcom/google/analytics/tracking/android/ad;

    .line 31
    new-instance v0, Lcom/google/analytics/tracking/android/ad;

    const-string v1, "CONNECTED_SERVICE"

    invoke-direct {v0, v1, v4}, Lcom/google/analytics/tracking/android/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/ad;->b:Lcom/google/analytics/tracking/android/ad;

    .line 32
    new-instance v0, Lcom/google/analytics/tracking/android/ad;

    const-string v1, "CONNECTED_LOCAL"

    invoke-direct {v0, v1, v5}, Lcom/google/analytics/tracking/android/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/ad;->c:Lcom/google/analytics/tracking/android/ad;

    .line 33
    new-instance v0, Lcom/google/analytics/tracking/android/ad;

    const-string v1, "BLOCKED"

    invoke-direct {v0, v1, v6}, Lcom/google/analytics/tracking/android/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/ad;->d:Lcom/google/analytics/tracking/android/ad;

    .line 34
    new-instance v0, Lcom/google/analytics/tracking/android/ad;

    const-string v1, "PENDING_CONNECTION"

    invoke-direct {v0, v1, v7}, Lcom/google/analytics/tracking/android/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/ad;->e:Lcom/google/analytics/tracking/android/ad;

    .line 35
    new-instance v0, Lcom/google/analytics/tracking/android/ad;

    const-string v1, "PENDING_DISCONNECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/ad;->f:Lcom/google/analytics/tracking/android/ad;

    .line 36
    new-instance v0, Lcom/google/analytics/tracking/android/ad;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/ad;->g:Lcom/google/analytics/tracking/android/ad;

    .line 29
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/analytics/tracking/android/ad;

    sget-object v1, Lcom/google/analytics/tracking/android/ad;->a:Lcom/google/analytics/tracking/android/ad;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/analytics/tracking/android/ad;->b:Lcom/google/analytics/tracking/android/ad;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/analytics/tracking/android/ad;->c:Lcom/google/analytics/tracking/android/ad;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/analytics/tracking/android/ad;->d:Lcom/google/analytics/tracking/android/ad;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/analytics/tracking/android/ad;->e:Lcom/google/analytics/tracking/android/ad;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/analytics/tracking/android/ad;->f:Lcom/google/analytics/tracking/android/ad;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/analytics/tracking/android/ad;->g:Lcom/google/analytics/tracking/android/ad;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/analytics/tracking/android/ad;->h:[Lcom/google/analytics/tracking/android/ad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/analytics/tracking/android/ad;
    .locals 1
    .parameter

    .prologue
    .line 29
    const-class v0, Lcom/google/analytics/tracking/android/ad;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/ad;

    return-object v0
.end method

.method public static values()[Lcom/google/analytics/tracking/android/ad;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/analytics/tracking/android/ad;->h:[Lcom/google/analytics/tracking/android/ad;

    invoke-virtual {v0}, [Lcom/google/analytics/tracking/android/ad;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/analytics/tracking/android/ad;

    return-object v0
.end method
