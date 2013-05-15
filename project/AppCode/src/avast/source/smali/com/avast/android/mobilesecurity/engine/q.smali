.class public final enum Lcom/avast/android/mobilesecurity/engine/q;
.super Ljava/lang/Enum;
.source "OptionOverrideIdParameterValue.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/engine/q;

.field public static final enum b:Lcom/avast/android/mobilesecurity/engine/q;

.field public static final enum c:Lcom/avast/android/mobilesecurity/engine/q;

.field public static final enum d:Lcom/avast/android/mobilesecurity/engine/q;

.field public static final enum e:Lcom/avast/android/mobilesecurity/engine/q;

.field public static final enum f:Lcom/avast/android/mobilesecurity/engine/q;

.field public static final enum g:Lcom/avast/android/mobilesecurity/engine/q;

.field public static final enum h:Lcom/avast/android/mobilesecurity/engine/q;

.field private static final i:Ljava/util/Map;

.field private static final synthetic k:[Lcom/avast/android/mobilesecurity/engine/q;


# instance fields
.field private final j:S


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/q;

    const-string v1, "FALSE_POSITIVE_SERVER_ID"

    invoke-direct {v0, v1, v4, v4}, Lcom/avast/android/mobilesecurity/engine/q;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/q;->a:Lcom/avast/android/mobilesecurity/engine/q;

    .line 13
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/q;

    const-string v1, "WEBSHIELD_SERVER_ID"

    invoke-direct {v0, v1, v5, v5}, Lcom/avast/android/mobilesecurity/engine/q;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/q;->b:Lcom/avast/android/mobilesecurity/engine/q;

    .line 15
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/q;

    const-string v1, "UPDATE_SERVER_ID"

    invoke-direct {v0, v1, v6, v6}, Lcom/avast/android/mobilesecurity/engine/q;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/q;->c:Lcom/avast/android/mobilesecurity/engine/q;

    .line 17
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/q;

    const-string v1, "COMMUNITY_IQ_SERVER_ID"

    invoke-direct {v0, v1, v7, v7}, Lcom/avast/android/mobilesecurity/engine/q;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/q;->d:Lcom/avast/android/mobilesecurity/engine/q;

    .line 19
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/q;

    const-string v1, "AI_REPORTING_SERVER_ID"

    invoke-direct {v0, v1, v8, v8}, Lcom/avast/android/mobilesecurity/engine/q;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/q;->e:Lcom/avast/android/mobilesecurity/engine/q;

    .line 21
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/q;

    const-string v1, "ACCOUNT_PAIR_SERVER_ID"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/q;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/q;->f:Lcom/avast/android/mobilesecurity/engine/q;

    .line 23
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/q;

    const-string v1, "TYPOSQUATTING_CONFIRMATION_SERVER_ID"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/q;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/q;->g:Lcom/avast/android/mobilesecurity/engine/q;

    .line 25
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/q;

    const-string v1, "ACCOUNT_UNPAIR_SERVER_ID"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/q;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/q;->h:Lcom/avast/android/mobilesecurity/engine/q;

    .line 9
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/engine/q;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/q;->a:Lcom/avast/android/mobilesecurity/engine/q;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/q;->b:Lcom/avast/android/mobilesecurity/engine/q;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/q;->c:Lcom/avast/android/mobilesecurity/engine/q;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/q;->d:Lcom/avast/android/mobilesecurity/engine/q;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/q;->e:Lcom/avast/android/mobilesecurity/engine/q;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/q;->f:Lcom/avast/android/mobilesecurity/engine/q;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/q;->g:Lcom/avast/android/mobilesecurity/engine/q;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/q;->h:Lcom/avast/android/mobilesecurity/engine/q;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/q;->k:[Lcom/avast/android/mobilesecurity/engine/q;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/q;->i:Ljava/util/Map;

    .line 30
    const-class v0, Lcom/avast/android/mobilesecurity/engine/q;

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

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/q;

    .line 32
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/q;->i:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/q;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-short p3, p0, Lcom/avast/android/mobilesecurity/engine/q;->j:S

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/q;
    .locals 1
    .parameter

    .prologue
    .line 9
    const-class v0, Lcom/avast/android/mobilesecurity/engine/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/q;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/engine/q;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/q;->k:[Lcom/avast/android/mobilesecurity/engine/q;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/engine/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/engine/q;

    return-object v0
.end method


# virtual methods
.method public final a()S
    .locals 1

    .prologue
    .line 42
    iget-short v0, p0, Lcom/avast/android/mobilesecurity/engine/q;->j:S

    return v0
.end method
