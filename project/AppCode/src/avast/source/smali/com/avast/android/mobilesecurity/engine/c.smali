.class public final enum Lcom/avast/android/mobilesecurity/engine/c;
.super Ljava/lang/Enum;
.source "AdvertisementCampaignInfo.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/engine/c;

.field public static final enum b:Lcom/avast/android/mobilesecurity/engine/c;

.field public static final enum c:Lcom/avast/android/mobilesecurity/engine/c;

.field private static final d:Ljava/util/Map;

.field private static final synthetic f:[Lcom/avast/android/mobilesecurity/engine/c;


# instance fields
.field private final e:S


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/c;

    const-string v1, "PAYLOAD_CAMPAIGN_RECOGNIZED"

    invoke-direct {v0, v1, v2, v2}, Lcom/avast/android/mobilesecurity/engine/c;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/c;->a:Lcom/avast/android/mobilesecurity/engine/c;

    .line 59
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/c;

    const-string v1, "PAYLOAD_SHOW_NOTIFICATION"

    invoke-direct {v0, v1, v3, v3}, Lcom/avast/android/mobilesecurity/engine/c;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/c;->b:Lcom/avast/android/mobilesecurity/engine/c;

    .line 64
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/c;

    const-string v1, "PAYLOAD_SHOW_POPUP"

    invoke-direct {v0, v1, v4, v4}, Lcom/avast/android/mobilesecurity/engine/c;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/c;->c:Lcom/avast/android/mobilesecurity/engine/c;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/engine/c;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/c;->a:Lcom/avast/android/mobilesecurity/engine/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/c;->b:Lcom/avast/android/mobilesecurity/engine/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/c;->c:Lcom/avast/android/mobilesecurity/engine/c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/c;->f:[Lcom/avast/android/mobilesecurity/engine/c;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/c;->d:Ljava/util/Map;

    .line 72
    const-class v0, Lcom/avast/android/mobilesecurity/engine/c;

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

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/c;

    .line 74
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/c;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/c;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput-short p3, p0, Lcom/avast/android/mobilesecurity/engine/c;->e:S

    .line 90
    return-void
.end method

.method public static a(S)Lcom/avast/android/mobilesecurity/engine/c;
    .locals 2
    .parameter

    .prologue
    .line 109
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/c;->d:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/c;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/c;
    .locals 1
    .parameter

    .prologue
    .line 49
    const-class v0, Lcom/avast/android/mobilesecurity/engine/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/c;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/engine/c;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/c;->f:[Lcom/avast/android/mobilesecurity/engine/c;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/engine/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/engine/c;

    return-object v0
.end method


# virtual methods
.method public final a()S
    .locals 1

    .prologue
    .line 98
    iget-short v0, p0, Lcom/avast/android/mobilesecurity/engine/c;->e:S

    return v0
.end method
