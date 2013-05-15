.class public final enum Lcom/avast/android/mobilesecurity/engine/ag;
.super Ljava/lang/Enum;
.source "UpdateResultStructure.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/engine/ag;

.field public static final enum b:Lcom/avast/android/mobilesecurity/engine/ag;

.field public static final enum c:Lcom/avast/android/mobilesecurity/engine/ag;

.field public static final enum d:Lcom/avast/android/mobilesecurity/engine/ag;

.field public static final enum e:Lcom/avast/android/mobilesecurity/engine/ag;

.field public static final enum f:Lcom/avast/android/mobilesecurity/engine/ag;

.field public static final enum g:Lcom/avast/android/mobilesecurity/engine/ag;

.field private static final synthetic h:[Lcom/avast/android/mobilesecurity/engine/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/ag;

    const-string v1, "RESULT_UP_TO_DATE"

    invoke-direct {v0, v1, v3}, Lcom/avast/android/mobilesecurity/engine/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/ag;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    .line 25
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/ag;

    const-string v1, "RESULT_UPDATED"

    invoke-direct {v0, v1, v4}, Lcom/avast/android/mobilesecurity/engine/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/ag;->b:Lcom/avast/android/mobilesecurity/engine/ag;

    .line 33
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/ag;

    const-string v1, "RESULT_OLD_APPLICATION_VERSION"

    invoke-direct {v0, v1, v5}, Lcom/avast/android/mobilesecurity/engine/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/ag;->c:Lcom/avast/android/mobilesecurity/engine/ag;

    .line 39
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/ag;

    const-string v1, "RESULT_CONNECTION_PROBLEMS"

    invoke-direct {v0, v1, v6}, Lcom/avast/android/mobilesecurity/engine/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/ag;->d:Lcom/avast/android/mobilesecurity/engine/ag;

    .line 44
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/ag;

    const-string v1, "RESULT_NOT_ENOUGH_INTERNAL_SPACE_TO_UPDATE"

    invoke-direct {v0, v1, v7}, Lcom/avast/android/mobilesecurity/engine/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/ag;->e:Lcom/avast/android/mobilesecurity/engine/ag;

    .line 50
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/ag;

    const-string v1, "RESULT_INVALID_VPS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/engine/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/ag;->f:Lcom/avast/android/mobilesecurity/engine/ag;

    .line 55
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/ag;

    const-string v1, "RESULT_UNKNOWN_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/engine/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/ag;->g:Lcom/avast/android/mobilesecurity/engine/ag;

    .line 15
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/engine/ag;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->b:Lcom/avast/android/mobilesecurity/engine/ag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->c:Lcom/avast/android/mobilesecurity/engine/ag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->d:Lcom/avast/android/mobilesecurity/engine/ag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->e:Lcom/avast/android/mobilesecurity/engine/ag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/ag;->f:Lcom/avast/android/mobilesecurity/engine/ag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/ag;->g:Lcom/avast/android/mobilesecurity/engine/ag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/ag;->h:[Lcom/avast/android/mobilesecurity/engine/ag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/ag;
    .locals 1
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/avast/android/mobilesecurity/engine/ag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/ag;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/engine/ag;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ag;->h:[Lcom/avast/android/mobilesecurity/engine/ag;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/engine/ag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/engine/ag;

    return-object v0
.end method
