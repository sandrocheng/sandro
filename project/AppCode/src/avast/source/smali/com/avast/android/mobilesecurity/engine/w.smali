.class final enum Lcom/avast/android/mobilesecurity/engine/w;
.super Ljava/lang/Enum;
.source "ScanResultStructure.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/engine/w;

.field public static final enum b:Lcom/avast/android/mobilesecurity/engine/w;

.field private static final c:Ljava/util/Map;

.field private static final synthetic e:[Lcom/avast/android/mobilesecurity/engine/w;


# instance fields
.field private final d:S


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/w;

    const-string v1, "PAYLOAD_RESULT"

    invoke-direct {v0, v1, v2, v2}, Lcom/avast/android/mobilesecurity/engine/w;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/w;->a:Lcom/avast/android/mobilesecurity/engine/w;

    .line 157
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/w;

    const-string v1, "PAYLOAD_INFECTION_TYPE"

    invoke-direct {v0, v1, v3, v3}, Lcom/avast/android/mobilesecurity/engine/w;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/w;->b:Lcom/avast/android/mobilesecurity/engine/w;

    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/engine/w;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/w;->a:Lcom/avast/android/mobilesecurity/engine/w;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/w;->b:Lcom/avast/android/mobilesecurity/engine/w;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/w;->e:[Lcom/avast/android/mobilesecurity/engine/w;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/w;->c:Ljava/util/Map;

    .line 165
    const-class v0, Lcom/avast/android/mobilesecurity/engine/w;

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

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/w;

    .line 166
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/w;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/w;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 167
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 181
    iput-short p3, p0, Lcom/avast/android/mobilesecurity/engine/w;->d:S

    .line 182
    return-void
.end method

.method public static a(S)Lcom/avast/android/mobilesecurity/engine/w;
    .locals 2
    .parameter

    .prologue
    .line 201
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/w;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/w;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/w;
    .locals 1
    .parameter

    .prologue
    .line 147
    const-class v0, Lcom/avast/android/mobilesecurity/engine/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/w;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/engine/w;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/w;->e:[Lcom/avast/android/mobilesecurity/engine/w;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/engine/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/engine/w;

    return-object v0
.end method


# virtual methods
.method public final a()S
    .locals 1

    .prologue
    .line 190
    iget-short v0, p0, Lcom/avast/android/mobilesecurity/engine/w;->d:S

    return v0
.end method
