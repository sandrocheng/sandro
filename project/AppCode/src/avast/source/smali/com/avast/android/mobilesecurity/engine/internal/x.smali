.class public final enum Lcom/avast/android/mobilesecurity/engine/internal/x;
.super Ljava/lang/Enum;
.source "VpsInterface.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/engine/internal/x;

.field public static final enum b:Lcom/avast/android/mobilesecurity/engine/internal/x;

.field public static final enum c:Lcom/avast/android/mobilesecurity/engine/internal/x;

.field public static final enum d:Lcom/avast/android/mobilesecurity/engine/internal/x;

.field public static final enum e:Lcom/avast/android/mobilesecurity/engine/internal/x;

.field public static final enum f:Lcom/avast/android/mobilesecurity/engine/internal/x;

.field public static final enum g:Lcom/avast/android/mobilesecurity/engine/internal/x;

.field public static final enum h:Lcom/avast/android/mobilesecurity/engine/internal/x;

.field public static final enum i:Lcom/avast/android/mobilesecurity/engine/internal/x;

.field public static final enum j:Lcom/avast/android/mobilesecurity/engine/internal/x;

.field public static final enum k:Lcom/avast/android/mobilesecurity/engine/internal/x;

.field public static final enum l:Lcom/avast/android/mobilesecurity/engine/internal/x;

.field public static final enum m:Lcom/avast/android/mobilesecurity/engine/internal/x;

.field private static final n:Ljava/util/Map;

.field private static final synthetic p:[Lcom/avast/android/mobilesecurity/engine/internal/x;


# instance fields
.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/x;

    const-string v1, "OPTION_OVERRIDE"

    const-string v2, "optionOverride"

    invoke-direct {v0, v1, v4, v2}, Lcom/avast/android/mobilesecurity/engine/internal/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/x;->a:Lcom/avast/android/mobilesecurity/engine/internal/x;

    .line 134
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/x;

    const-string v1, "ACQUIRE_VPS_CONTEXT"

    const-string v2, "acquireVpsContext"

    invoke-direct {v0, v1, v5, v2}, Lcom/avast/android/mobilesecurity/engine/internal/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/x;->b:Lcom/avast/android/mobilesecurity/engine/internal/x;

    .line 139
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/x;

    const-string v1, "RELEASE_VPS_CONTEXT"

    const-string v2, "releaseVpsContext"

    invoke-direct {v0, v1, v6, v2}, Lcom/avast/android/mobilesecurity/engine/internal/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/x;->c:Lcom/avast/android/mobilesecurity/engine/internal/x;

    .line 144
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/x;

    const-string v1, "GET_VERSION"

    const-string v2, "getVersion"

    invoke-direct {v0, v1, v7, v2}, Lcom/avast/android/mobilesecurity/engine/internal/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/x;->d:Lcom/avast/android/mobilesecurity/engine/internal/x;

    .line 150
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/x;

    const-string v1, "CONTAINS_LIBRARY"

    const-string v2, "containsLibrary"

    invoke-direct {v0, v1, v8, v2}, Lcom/avast/android/mobilesecurity/engine/internal/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/x;->e:Lcom/avast/android/mobilesecurity/engine/internal/x;

    .line 155
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/x;

    const-string v1, "SCAN"

    const/4 v2, 0x5

    const-string v3, "scan"

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/internal/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/x;->f:Lcom/avast/android/mobilesecurity/engine/internal/x;

    .line 160
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/x;

    const-string v1, "CHECK_URL"

    const/4 v2, 0x6

    const-string v3, "checkUrl"

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/internal/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/x;->g:Lcom/avast/android/mobilesecurity/engine/internal/x;

    .line 165
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/x;

    const-string v1, "GET_VPS_INFORMATION"

    const/4 v2, 0x7

    const-string v3, "getVpsInformation"

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/internal/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/x;->h:Lcom/avast/android/mobilesecurity/engine/internal/x;

    .line 170
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/x;

    const-string v1, "SCAN_MESSAGE"

    const/16 v2, 0x8

    const-string v3, "scanMessage"

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/internal/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/x;->i:Lcom/avast/android/mobilesecurity/engine/internal/x;

    .line 175
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/x;

    const-string v1, "UNLOAD_VPS"

    const/16 v2, 0x9

    const-string v3, "unloadVps"

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/internal/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/x;->j:Lcom/avast/android/mobilesecurity/engine/internal/x;

    .line 181
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/x;

    const-string v1, "UPDATE_DETECTION_INFO_WITH_ACTION"

    const/16 v2, 0xa

    const-string v3, "updateActionOnInfectedFile"

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/internal/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/x;->k:Lcom/avast/android/mobilesecurity/engine/internal/x;

    .line 187
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/x;

    const-string v1, "GET_ADVERTISEMENT_CAMPAIGN_INFO"

    const/16 v2, 0xb

    const-string v3, "getAdvertisementCampaignInfo"

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/internal/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/x;->l:Lcom/avast/android/mobilesecurity/engine/internal/x;

    .line 193
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/x;

    const-string v1, "GET_DETECTION_PREFIXES"

    const/16 v2, 0xc

    const-string v3, "getDetectionPrefixes"

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/internal/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/x;->m:Lcom/avast/android/mobilesecurity/engine/internal/x;

    .line 123
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/engine/internal/x;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/x;->a:Lcom/avast/android/mobilesecurity/engine/internal/x;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/x;->b:Lcom/avast/android/mobilesecurity/engine/internal/x;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/x;->c:Lcom/avast/android/mobilesecurity/engine/internal/x;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/x;->d:Lcom/avast/android/mobilesecurity/engine/internal/x;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/x;->e:Lcom/avast/android/mobilesecurity/engine/internal/x;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/x;->f:Lcom/avast/android/mobilesecurity/engine/internal/x;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/x;->g:Lcom/avast/android/mobilesecurity/engine/internal/x;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/x;->h:Lcom/avast/android/mobilesecurity/engine/internal/x;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/x;->i:Lcom/avast/android/mobilesecurity/engine/internal/x;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/x;->j:Lcom/avast/android/mobilesecurity/engine/internal/x;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/x;->k:Lcom/avast/android/mobilesecurity/engine/internal/x;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/x;->l:Lcom/avast/android/mobilesecurity/engine/internal/x;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/x;->m:Lcom/avast/android/mobilesecurity/engine/internal/x;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/x;->p:[Lcom/avast/android/mobilesecurity/engine/internal/x;

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/x;->n:Ljava/util/Map;

    .line 201
    const-class v0, Lcom/avast/android/mobilesecurity/engine/internal/x;

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

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/internal/x;

    .line 202
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/x;->n:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/x;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 217
    iput-object p3, p0, Lcom/avast/android/mobilesecurity/engine/internal/x;->o:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/x;
    .locals 1
    .parameter

    .prologue
    .line 123
    const-class v0, Lcom/avast/android/mobilesecurity/engine/internal/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/internal/x;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/engine/internal/x;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/x;->p:[Lcom/avast/android/mobilesecurity/engine/internal/x;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/engine/internal/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/engine/internal/x;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/x;->o:Ljava/lang/String;

    return-object v0
.end method
