.class public final enum Lcom/avast/android/mobilesecurity/engine/h;
.super Ljava/lang/Enum;
.source "DetectionPrefix.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/engine/h;

.field public static final enum b:Lcom/avast/android/mobilesecurity/engine/h;

.field private static final synthetic c:[Lcom/avast/android/mobilesecurity/engine/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/h;

    const-string v1, "ADDONS"

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/engine/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/h;->a:Lcom/avast/android/mobilesecurity/engine/h;

    .line 93
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/h;

    const-string v1, "MALWARE"

    invoke-direct {v0, v1, v3}, Lcom/avast/android/mobilesecurity/engine/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/h;->b:Lcom/avast/android/mobilesecurity/engine/h;

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/engine/h;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/h;->a:Lcom/avast/android/mobilesecurity/engine/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/h;->b:Lcom/avast/android/mobilesecurity/engine/h;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/h;->c:[Lcom/avast/android/mobilesecurity/engine/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/h;
    .locals 1
    .parameter

    .prologue
    .line 84
    const-class v0, Lcom/avast/android/mobilesecurity/engine/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/h;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/engine/h;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/h;->c:[Lcom/avast/android/mobilesecurity/engine/h;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/engine/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/engine/h;

    return-object v0
.end method
