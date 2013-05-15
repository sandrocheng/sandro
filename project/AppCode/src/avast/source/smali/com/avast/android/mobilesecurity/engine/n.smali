.class final enum Lcom/avast/android/mobilesecurity/engine/n;
.super Ljava/lang/Enum;
.source "MessageScanResultStructure.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/engine/n;

.field public static final enum b:Lcom/avast/android/mobilesecurity/engine/n;

.field private static final c:Ljava/util/Map;

.field private static final synthetic e:[Lcom/avast/android/mobilesecurity/engine/n;


# instance fields
.field private final d:S


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/n;

    const-string v1, "PAYLOAD_RESULT"

    invoke-direct {v0, v1, v2, v2}, Lcom/avast/android/mobilesecurity/engine/n;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/n;->a:Lcom/avast/android/mobilesecurity/engine/n;

    .line 160
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/n;

    const-string v1, "PAYLOAD_INFECTION_TYPE"

    invoke-direct {v0, v1, v3, v3}, Lcom/avast/android/mobilesecurity/engine/n;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/n;->b:Lcom/avast/android/mobilesecurity/engine/n;

    .line 150
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/engine/n;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/n;->a:Lcom/avast/android/mobilesecurity/engine/n;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/n;->b:Lcom/avast/android/mobilesecurity/engine/n;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/n;->e:[Lcom/avast/android/mobilesecurity/engine/n;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/n;->c:Ljava/util/Map;

    .line 168
    const-class v0, Lcom/avast/android/mobilesecurity/engine/n;

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

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/n;

    .line 170
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/n;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/n;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 185
    iput-short p3, p0, Lcom/avast/android/mobilesecurity/engine/n;->d:S

    .line 186
    return-void
.end method

.method public static a(S)Lcom/avast/android/mobilesecurity/engine/n;
    .locals 2
    .parameter

    .prologue
    .line 205
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/n;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/n;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/n;
    .locals 1
    .parameter

    .prologue
    .line 150
    const-class v0, Lcom/avast/android/mobilesecurity/engine/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/n;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/engine/n;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/n;->e:[Lcom/avast/android/mobilesecurity/engine/n;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/engine/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/engine/n;

    return-object v0
.end method


# virtual methods
.method public final a()S
    .locals 1

    .prologue
    .line 194
    iget-short v0, p0, Lcom/avast/android/mobilesecurity/engine/n;->d:S

    return v0
.end method
