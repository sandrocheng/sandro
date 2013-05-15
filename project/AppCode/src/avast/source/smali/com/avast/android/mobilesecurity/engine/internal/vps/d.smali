.class public final enum Lcom/avast/android/mobilesecurity/engine/internal/vps/d;
.super Ljava/lang/Enum;
.source "ParameterPayloadConstants.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

.field public static final enum b:Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

.field public static final enum c:Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

.field private static final d:Ljava/util/Map;

.field private static final synthetic f:[Lcom/avast/android/mobilesecurity/engine/internal/vps/d;


# instance fields
.field private final e:S


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 343
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

    const-string v1, "DETECTION_PACKAGE_NAME_STRING_ID"

    invoke-direct {v0, v1, v2, v2}, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;->a:Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

    .line 345
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

    const-string v1, "DETECTION_FILE_PATH_STRING_ID"

    invoke-direct {v0, v1, v3, v3}, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;->b:Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

    .line 347
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

    const-string v1, "DETECTION_ACTION_SHORT_ID"

    invoke-direct {v0, v1, v4, v4}, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;->c:Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

    .line 342
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;->a:Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;->b:Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;->c:Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;->f:[Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

    .line 349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;->d:Ljava/util/Map;

    .line 352
    const-class v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

    .line 354
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 355
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 360
    iput-short p3, p0, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;->e:S

    .line 361
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/vps/d;
    .locals 1
    .parameter

    .prologue
    .line 342
    const-class v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/engine/internal/vps/d;
    .locals 1

    .prologue
    .line 342
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;->f:[Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/engine/internal/vps/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

    return-object v0
.end method


# virtual methods
.method public final a()S
    .locals 1

    .prologue
    .line 364
    iget-short v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;->e:S

    return v0
.end method
