.class public final enum Lcom/avast/android/mobilesecurity/engine/internal/vps/g;
.super Ljava/lang/Enum;
.source "ParameterPayloadConstants.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

.field public static final enum b:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

.field public static final enum c:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

.field public static final enum d:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

.field public static final enum e:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

.field public static final enum f:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

.field public static final enum g:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

.field public static final enum h:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

.field public static final enum i:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

.field private static final j:Ljava/util/Map;

.field private static final synthetic l:[Lcom/avast/android/mobilesecurity/engine/internal/vps/g;


# instance fields
.field private final k:S


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 206
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    const-string v1, "FILE_FILE_ID"

    invoke-direct {v0, v1, v4, v4}, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->a:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    .line 208
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    const-string v1, "PACKAGE_NAME_STRING_ID"

    invoke-direct {v0, v1, v5, v5}, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->b:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    .line 210
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    const-string v1, "SDK_VERSION_INT_ID"

    invoke-direct {v0, v1, v6, v6}, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->c:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    .line 212
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    const-string v1, "BUFFER_BYTE_ARRAY_ID"

    invoke-direct {v0, v1, v7, v7}, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->d:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    .line 214
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    const-string v1, "FLAGS_LONG_ID"

    invoke-direct {v0, v1, v8, v8}, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->e:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    .line 216
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    const-string v1, "LANGUAGE_STRING_ID"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->f:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    .line 218
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    const-string v1, "PUP_ENABLED_BOOLEAN_ID"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->g:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    .line 220
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    const-string v1, "GUID_STRING_ID"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->h:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    .line 222
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    const-string v1, "COMMUNITY_IQ_ENABLED_BOOLEAN_ID"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->i:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    .line 204
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->a:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->b:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->c:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->d:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->e:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->f:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->g:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->h:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->i:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->l:[Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->j:Ljava/util/Map;

    .line 227
    const-class v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

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

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    .line 228
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->j:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 229
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 234
    iput-short p3, p0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->k:S

    .line 235
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/vps/g;
    .locals 1
    .parameter

    .prologue
    .line 204
    const-class v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/engine/internal/vps/g;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->l:[Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    return-object v0
.end method


# virtual methods
.method public final a()S
    .locals 1

    .prologue
    .line 238
    iget-short v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->k:S

    return v0
.end method
