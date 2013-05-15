.class public final enum Lcom/avast/android/mobilesecurity/engine/internal/i;
.super Ljava/lang/Enum;
.source "NativeRegistration.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/engine/internal/i;

.field public static final enum b:Lcom/avast/android/mobilesecurity/engine/internal/i;

.field public static final enum c:Lcom/avast/android/mobilesecurity/engine/internal/i;

.field public static final enum d:Lcom/avast/android/mobilesecurity/engine/internal/i;

.field public static final enum e:Lcom/avast/android/mobilesecurity/engine/internal/i;

.field public static final enum f:Lcom/avast/android/mobilesecurity/engine/internal/i;

.field public static final enum g:Lcom/avast/android/mobilesecurity/engine/internal/i;

.field public static final enum h:Lcom/avast/android/mobilesecurity/engine/internal/i;

.field public static final enum i:Lcom/avast/android/mobilesecurity/engine/internal/i;

.field public static final enum j:Lcom/avast/android/mobilesecurity/engine/internal/i;

.field public static final enum k:Lcom/avast/android/mobilesecurity/engine/internal/i;

.field public static final enum l:Lcom/avast/android/mobilesecurity/engine/internal/i;

.field private static final synthetic m:[Lcom/avast/android/mobilesecurity/engine/internal/i;


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
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/i;

    const-string v1, "REGISTRATION_ERROR_WRONG_INSTANCE"

    invoke-direct {v0, v1, v3}, Lcom/avast/android/mobilesecurity/engine/internal/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/i;->a:Lcom/avast/android/mobilesecurity/engine/internal/i;

    .line 35
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/i;

    const-string v1, "REGISTRATION_ERROR_LIBRARY_FILE_DOESNT_EXIST"

    invoke-direct {v0, v1, v4}, Lcom/avast/android/mobilesecurity/engine/internal/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/i;->b:Lcom/avast/android/mobilesecurity/engine/internal/i;

    .line 40
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/i;

    const-string v1, "REGISTRATION_ERROR_NOTHING_TO_REGISTER"

    invoke-direct {v0, v1, v5}, Lcom/avast/android/mobilesecurity/engine/internal/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/i;->c:Lcom/avast/android/mobilesecurity/engine/internal/i;

    .line 45
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/i;

    const-string v1, "REGISTRATION_ERROR_UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/avast/android/mobilesecurity/engine/internal/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/i;->d:Lcom/avast/android/mobilesecurity/engine/internal/i;

    .line 50
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/i;

    const-string v1, "REGISTRATION_ERROR_JNI_CLASS_NOT_ACQUIRED"

    invoke-direct {v0, v1, v7}, Lcom/avast/android/mobilesecurity/engine/internal/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/i;->e:Lcom/avast/android/mobilesecurity/engine/internal/i;

    .line 56
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/i;

    const-string v1, "REGISTRATION_ERROR_JNI_NO_FREE_HANDLES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/engine/internal/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/i;->f:Lcom/avast/android/mobilesecurity/engine/internal/i;

    .line 62
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/i;

    const-string v1, "REGISTRATION_ERROR_JNI_STRING_ARRAYS_MISMATCH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/engine/internal/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/i;->g:Lcom/avast/android/mobilesecurity/engine/internal/i;

    .line 68
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/i;

    const-string v1, "REGISTRATION_ERROR_JNI_STRING_ARRAYS_CONVERSION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/engine/internal/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/i;->h:Lcom/avast/android/mobilesecurity/engine/internal/i;

    .line 74
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/i;

    const-string v1, "REGISTRATION_ERROR_JNI_LIBRARY_FILE_PATH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/engine/internal/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/i;->i:Lcom/avast/android/mobilesecurity/engine/internal/i;

    .line 79
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/i;

    const-string v1, "REGISTRATION_ERROR_JNI_LIBRARY_LOAD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/engine/internal/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/i;->j:Lcom/avast/android/mobilesecurity/engine/internal/i;

    .line 85
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/i;

    const-string v1, "REGISTRATION_ERROR_JNI_FUNCTION_NOT_FOUND"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/engine/internal/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/i;->k:Lcom/avast/android/mobilesecurity/engine/internal/i;

    .line 90
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/i;

    const-string v1, "REGISTRATION_OK"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/engine/internal/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/i;->l:Lcom/avast/android/mobilesecurity/engine/internal/i;

    .line 25
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/engine/internal/i;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/i;->a:Lcom/avast/android/mobilesecurity/engine/internal/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/i;->b:Lcom/avast/android/mobilesecurity/engine/internal/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/i;->c:Lcom/avast/android/mobilesecurity/engine/internal/i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/i;->d:Lcom/avast/android/mobilesecurity/engine/internal/i;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/i;->e:Lcom/avast/android/mobilesecurity/engine/internal/i;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/i;->f:Lcom/avast/android/mobilesecurity/engine/internal/i;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/i;->g:Lcom/avast/android/mobilesecurity/engine/internal/i;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/i;->h:Lcom/avast/android/mobilesecurity/engine/internal/i;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/i;->i:Lcom/avast/android/mobilesecurity/engine/internal/i;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/i;->j:Lcom/avast/android/mobilesecurity/engine/internal/i;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/i;->k:Lcom/avast/android/mobilesecurity/engine/internal/i;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/i;->l:Lcom/avast/android/mobilesecurity/engine/internal/i;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/i;->m:[Lcom/avast/android/mobilesecurity/engine/internal/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/i;
    .locals 1
    .parameter

    .prologue
    .line 25
    const-class v0, Lcom/avast/android/mobilesecurity/engine/internal/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/internal/i;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/engine/internal/i;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/i;->m:[Lcom/avast/android/mobilesecurity/engine/internal/i;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/engine/internal/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/engine/internal/i;

    return-object v0
.end method
