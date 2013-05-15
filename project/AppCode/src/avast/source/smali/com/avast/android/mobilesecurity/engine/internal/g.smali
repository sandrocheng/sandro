.class public final enum Lcom/avast/android/mobilesecurity/engine/internal/g;
.super Ljava/lang/Enum;
.source "HashManager.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/engine/internal/g;

.field public static final enum b:Lcom/avast/android/mobilesecurity/engine/internal/g;

.field public static final enum c:Lcom/avast/android/mobilesecurity/engine/internal/g;

.field private static final synthetic d:[Lcom/avast/android/mobilesecurity/engine/internal/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/g;

    const-string v1, "SHA1"

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/engine/internal/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/g;->a:Lcom/avast/android/mobilesecurity/engine/internal/g;

    .line 36
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/g;

    const-string v1, "SHA256"

    invoke-direct {v0, v1, v3}, Lcom/avast/android/mobilesecurity/engine/internal/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/g;->b:Lcom/avast/android/mobilesecurity/engine/internal/g;

    .line 41
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/g;

    const-string v1, "MD5"

    invoke-direct {v0, v1, v4}, Lcom/avast/android/mobilesecurity/engine/internal/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/g;->c:Lcom/avast/android/mobilesecurity/engine/internal/g;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/engine/internal/g;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/g;->a:Lcom/avast/android/mobilesecurity/engine/internal/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/g;->b:Lcom/avast/android/mobilesecurity/engine/internal/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/g;->c:Lcom/avast/android/mobilesecurity/engine/internal/g;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/g;->d:[Lcom/avast/android/mobilesecurity/engine/internal/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/g;
    .locals 1
    .parameter

    .prologue
    .line 27
    const-class v0, Lcom/avast/android/mobilesecurity/engine/internal/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/internal/g;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/engine/internal/g;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/g;->d:[Lcom/avast/android/mobilesecurity/engine/internal/g;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/engine/internal/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/engine/internal/g;

    return-object v0
.end method
