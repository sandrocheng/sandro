.class final enum Lcom/avast/android/mobilesecurity/scan/j;
.super Ljava/lang/Enum;
.source "ScanService.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/scan/j;

.field public static final enum b:Lcom/avast/android/mobilesecurity/scan/j;

.field private static final synthetic c:[Lcom/avast/android/mobilesecurity/scan/j;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/avast/android/mobilesecurity/scan/j;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/scan/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/scan/j;->a:Lcom/avast/android/mobilesecurity/scan/j;

    .line 48
    new-instance v0, Lcom/avast/android/mobilesecurity/scan/j;

    const-string v1, "WORKING"

    invoke-direct {v0, v1, v3}, Lcom/avast/android/mobilesecurity/scan/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/scan/j;->b:Lcom/avast/android/mobilesecurity/scan/j;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/scan/j;

    sget-object v1, Lcom/avast/android/mobilesecurity/scan/j;->a:Lcom/avast/android/mobilesecurity/scan/j;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/mobilesecurity/scan/j;->b:Lcom/avast/android/mobilesecurity/scan/j;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avast/android/mobilesecurity/scan/j;->c:[Lcom/avast/android/mobilesecurity/scan/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/scan/j;
    .locals 1
    .parameter

    .prologue
    .line 43
    const-class v0, Lcom/avast/android/mobilesecurity/scan/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/scan/j;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/scan/j;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/avast/android/mobilesecurity/scan/j;->c:[Lcom/avast/android/mobilesecurity/scan/j;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/scan/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/scan/j;

    return-object v0
.end method
