.class public final enum Lcom/avast/android/mobilesecurity/engine/ae;
.super Ljava/lang/Enum;
.source "UpdateCheckResultStructure.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/engine/ae;

.field public static final enum b:Lcom/avast/android/mobilesecurity/engine/ae;

.field public static final enum c:Lcom/avast/android/mobilesecurity/engine/ae;

.field public static final enum d:Lcom/avast/android/mobilesecurity/engine/ae;

.field public static final enum e:Lcom/avast/android/mobilesecurity/engine/ae;

.field public static final enum f:Lcom/avast/android/mobilesecurity/engine/ae;

.field public static final enum g:Lcom/avast/android/mobilesecurity/engine/ae;

.field public static final enum h:Lcom/avast/android/mobilesecurity/engine/ae;

.field private static final synthetic i:[Lcom/avast/android/mobilesecurity/engine/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/ae;

    const-string v1, "RESULT_UPDATE_AVAILABLE"

    invoke-direct {v0, v1, v3}, Lcom/avast/android/mobilesecurity/engine/ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/ae;->a:Lcom/avast/android/mobilesecurity/engine/ae;

    .line 27
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/ae;

    const-string v1, "RESULT_UP_TO_DATE"

    invoke-direct {v0, v1, v4}, Lcom/avast/android/mobilesecurity/engine/ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/ae;->b:Lcom/avast/android/mobilesecurity/engine/ae;

    .line 34
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/ae;

    const-string v1, "ERROR_OLD_APPLICATION_VERSION"

    invoke-direct {v0, v1, v5}, Lcom/avast/android/mobilesecurity/engine/ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/ae;->c:Lcom/avast/android/mobilesecurity/engine/ae;

    .line 40
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/ae;

    const-string v1, "ERROR_CONNECTION_PROBLEMS"

    invoke-direct {v0, v1, v6}, Lcom/avast/android/mobilesecurity/engine/ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/ae;->d:Lcom/avast/android/mobilesecurity/engine/ae;

    .line 45
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/ae;

    const-string v1, "ERROR_SIGNATURE_NOT_VALID"

    invoke-direct {v0, v1, v7}, Lcom/avast/android/mobilesecurity/engine/ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/ae;->e:Lcom/avast/android/mobilesecurity/engine/ae;

    .line 50
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/ae;

    const-string v1, "ERROR_WRONG_PROTO_FILE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/engine/ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/ae;->f:Lcom/avast/android/mobilesecurity/engine/ae;

    .line 56
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/ae;

    const-string v1, "ERROR_BROKEN_VERSION_STRINGS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/engine/ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/ae;->g:Lcom/avast/android/mobilesecurity/engine/ae;

    .line 62
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/ae;

    const-string v1, "ERROR_CURRENT_VPS_INVALID"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/engine/ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/ae;->h:Lcom/avast/android/mobilesecurity/engine/ae;

    .line 17
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/engine/ae;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ae;->a:Lcom/avast/android/mobilesecurity/engine/ae;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ae;->b:Lcom/avast/android/mobilesecurity/engine/ae;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ae;->c:Lcom/avast/android/mobilesecurity/engine/ae;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ae;->d:Lcom/avast/android/mobilesecurity/engine/ae;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ae;->e:Lcom/avast/android/mobilesecurity/engine/ae;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/ae;->f:Lcom/avast/android/mobilesecurity/engine/ae;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/ae;->g:Lcom/avast/android/mobilesecurity/engine/ae;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/ae;->h:Lcom/avast/android/mobilesecurity/engine/ae;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/ae;->i:[Lcom/avast/android/mobilesecurity/engine/ae;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/ae;
    .locals 1
    .parameter

    .prologue
    .line 17
    const-class v0, Lcom/avast/android/mobilesecurity/engine/ae;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/ae;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/engine/ae;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ae;->i:[Lcom/avast/android/mobilesecurity/engine/ae;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/engine/ae;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/engine/ae;

    return-object v0
.end method
