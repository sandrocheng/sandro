.class final enum Lcom/avast/android/mobilesecurity/engine/aa;
.super Ljava/lang/Enum;
.source "ServerInformation.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/engine/aa;

.field public static final enum b:Lcom/avast/android/mobilesecurity/engine/aa;

.field public static final enum c:Lcom/avast/android/mobilesecurity/engine/aa;

.field public static final enum d:Lcom/avast/android/mobilesecurity/engine/aa;

.field private static final e:Ljava/util/Map;

.field private static final synthetic g:[Lcom/avast/android/mobilesecurity/engine/aa;


# instance fields
.field private final f:S


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/aa;

    const-string v1, "PAYLOAD_SERVER_ADDRESS"

    invoke-direct {v0, v1, v2, v2}, Lcom/avast/android/mobilesecurity/engine/aa;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/aa;->a:Lcom/avast/android/mobilesecurity/engine/aa;

    .line 49
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/aa;

    const-string v1, "PAYLOAD_SERVER_PROTOCOL"

    invoke-direct {v0, v1, v3, v3}, Lcom/avast/android/mobilesecurity/engine/aa;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/aa;->b:Lcom/avast/android/mobilesecurity/engine/aa;

    .line 51
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/aa;

    const-string v1, "PAYLOAD_SERVER_PORT"

    invoke-direct {v0, v1, v4, v4}, Lcom/avast/android/mobilesecurity/engine/aa;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/aa;->c:Lcom/avast/android/mobilesecurity/engine/aa;

    .line 53
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/aa;

    const-string v1, "PAYLOAD_SERVER_PATH"

    invoke-direct {v0, v1, v5, v5}, Lcom/avast/android/mobilesecurity/engine/aa;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/aa;->d:Lcom/avast/android/mobilesecurity/engine/aa;

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/engine/aa;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/aa;->a:Lcom/avast/android/mobilesecurity/engine/aa;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/aa;->b:Lcom/avast/android/mobilesecurity/engine/aa;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/aa;->c:Lcom/avast/android/mobilesecurity/engine/aa;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/aa;->d:Lcom/avast/android/mobilesecurity/engine/aa;

    aput-object v1, v0, v5

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/aa;->g:[Lcom/avast/android/mobilesecurity/engine/aa;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/aa;->e:Ljava/util/Map;

    .line 58
    const-class v0, Lcom/avast/android/mobilesecurity/engine/aa;

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

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/aa;

    .line 60
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/aa;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/aa;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput-short p3, p0, Lcom/avast/android/mobilesecurity/engine/aa;->f:S

    .line 67
    return-void
.end method

.method public static a(S)Lcom/avast/android/mobilesecurity/engine/aa;
    .locals 2
    .parameter

    .prologue
    .line 74
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/aa;->e:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/aa;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/aa;
    .locals 1
    .parameter

    .prologue
    .line 45
    const-class v0, Lcom/avast/android/mobilesecurity/engine/aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/aa;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/engine/aa;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/aa;->g:[Lcom/avast/android/mobilesecurity/engine/aa;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/engine/aa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/engine/aa;

    return-object v0
.end method


# virtual methods
.method public final a()S
    .locals 1

    .prologue
    .line 70
    iget-short v0, p0, Lcom/avast/android/mobilesecurity/engine/aa;->f:S

    return v0
.end method
