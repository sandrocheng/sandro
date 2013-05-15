.class public final enum Lcom/avast/android/mobilesecurity/engine/internal/v;
.super Ljava/lang/Enum;
.source "VpsInterface.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/engine/internal/v;

.field public static final enum b:Lcom/avast/android/mobilesecurity/engine/internal/v;

.field public static final enum c:Lcom/avast/android/mobilesecurity/engine/internal/v;

.field public static final enum d:Lcom/avast/android/mobilesecurity/engine/internal/v;

.field public static final enum e:Lcom/avast/android/mobilesecurity/engine/internal/v;

.field public static final enum f:Lcom/avast/android/mobilesecurity/engine/internal/v;

.field public static final enum g:Lcom/avast/android/mobilesecurity/engine/internal/v;

.field private static final synthetic h:[Lcom/avast/android/mobilesecurity/engine/internal/v;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/v;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v3}, Lcom/avast/android/mobilesecurity/engine/internal/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->a:Lcom/avast/android/mobilesecurity/engine/internal/v;

    .line 61
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/v;

    const-string v1, "RESULT_UNKNOWN_FAILURE"

    invoke-direct {v0, v1, v4}, Lcom/avast/android/mobilesecurity/engine/internal/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->b:Lcom/avast/android/mobilesecurity/engine/internal/v;

    .line 66
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/v;

    const-string v1, "RESULT_ALREADY_REGISTERED"

    invoke-direct {v0, v1, v5}, Lcom/avast/android/mobilesecurity/engine/internal/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->c:Lcom/avast/android/mobilesecurity/engine/internal/v;

    .line 72
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/v;

    const-string v1, "RESULT_ERROR_APK"

    invoke-direct {v0, v1, v6}, Lcom/avast/android/mobilesecurity/engine/internal/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->d:Lcom/avast/android/mobilesecurity/engine/internal/v;

    .line 77
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/v;

    const-string v1, "RESULT_SO_NOT_FOUND"

    invoke-direct {v0, v1, v7}, Lcom/avast/android/mobilesecurity/engine/internal/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->e:Lcom/avast/android/mobilesecurity/engine/internal/v;

    .line 83
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/v;

    const-string v1, "RESULT_OLD_INTERFACE_VERSION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/engine/internal/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->f:Lcom/avast/android/mobilesecurity/engine/internal/v;

    .line 90
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/v;

    const-string v1, "RESULT_DIFFERENT_NAMES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/engine/internal/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->g:Lcom/avast/android/mobilesecurity/engine/internal/v;

    .line 51
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/engine/internal/v;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/v;->a:Lcom/avast/android/mobilesecurity/engine/internal/v;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/v;->b:Lcom/avast/android/mobilesecurity/engine/internal/v;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/v;->c:Lcom/avast/android/mobilesecurity/engine/internal/v;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/v;->d:Lcom/avast/android/mobilesecurity/engine/internal/v;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/v;->e:Lcom/avast/android/mobilesecurity/engine/internal/v;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/v;->f:Lcom/avast/android/mobilesecurity/engine/internal/v;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/v;->g:Lcom/avast/android/mobilesecurity/engine/internal/v;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->h:[Lcom/avast/android/mobilesecurity/engine/internal/v;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/v;
    .locals 1
    .parameter

    .prologue
    .line 51
    const-class v0, Lcom/avast/android/mobilesecurity/engine/internal/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/internal/v;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/engine/internal/v;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->h:[Lcom/avast/android/mobilesecurity/engine/internal/v;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/engine/internal/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/engine/internal/v;

    return-object v0
.end method
