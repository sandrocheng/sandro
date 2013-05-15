.class public final enum Lcom/avast/android/generic/notification/s;
.super Ljava/lang/Enum;
.source "AvastPendingIntent.java"


# static fields
.field public static final enum a:Lcom/avast/android/generic/notification/s;

.field public static final enum b:Lcom/avast/android/generic/notification/s;

.field private static final synthetic c:[Lcom/avast/android/generic/notification/s;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/avast/android/generic/notification/s;

    const-string v1, "ACTIVITY"

    invoke-direct {v0, v1, v2}, Lcom/avast/android/generic/notification/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/generic/notification/s;->a:Lcom/avast/android/generic/notification/s;

    .line 50
    new-instance v0, Lcom/avast/android/generic/notification/s;

    const-string v1, "SERVICE"

    invoke-direct {v0, v1, v3}, Lcom/avast/android/generic/notification/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/generic/notification/s;->b:Lcom/avast/android/generic/notification/s;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avast/android/generic/notification/s;

    sget-object v1, Lcom/avast/android/generic/notification/s;->a:Lcom/avast/android/generic/notification/s;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/generic/notification/s;->b:Lcom/avast/android/generic/notification/s;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avast/android/generic/notification/s;->c:[Lcom/avast/android/generic/notification/s;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/generic/notification/s;
    .locals 1
    .parameter

    .prologue
    .line 48
    const-class v0, Lcom/avast/android/generic/notification/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/s;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/generic/notification/s;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/avast/android/generic/notification/s;->c:[Lcom/avast/android/generic/notification/s;

    invoke-virtual {v0}, [Lcom/avast/android/generic/notification/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/generic/notification/s;

    return-object v0
.end method
