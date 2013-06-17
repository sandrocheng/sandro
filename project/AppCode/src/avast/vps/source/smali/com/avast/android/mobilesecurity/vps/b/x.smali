.class public final enum Lcom/avast/android/mobilesecurity/vps/b/x;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/avast/android/mobilesecurity/vps/b/j;


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/vps/b/x;

.field public static final enum b:Lcom/avast/android/mobilesecurity/vps/b/x;

.field public static final enum c:Lcom/avast/android/mobilesecurity/vps/b/x;

.field public static final enum d:Lcom/avast/android/mobilesecurity/vps/b/x;

.field public static final enum e:Lcom/avast/android/mobilesecurity/vps/b/x;

.field public static final enum f:Lcom/avast/android/mobilesecurity/vps/b/x;

.field public static final enum g:Lcom/avast/android/mobilesecurity/vps/b/x;

.field public static final enum h:Lcom/avast/android/mobilesecurity/vps/b/x;

.field private static final i:Ljava/util/Map;

.field private static final synthetic k:[Lcom/avast/android/mobilesecurity/vps/b/x;


# instance fields
.field private final j:S


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/x;

    const-string v1, "PAYLOAD_VERSION"

    invoke-direct {v0, v1, v4, v4}, Lcom/avast/android/mobilesecurity/vps/b/x;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/x;->a:Lcom/avast/android/mobilesecurity/vps/b/x;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/x;

    const-string v1, "PAYLOAD_BUILD_YEAR"

    invoke-direct {v0, v1, v5, v5}, Lcom/avast/android/mobilesecurity/vps/b/x;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/x;->b:Lcom/avast/android/mobilesecurity/vps/b/x;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/x;

    const-string v1, "PAYLOAD_BUILD_MONTH"

    invoke-direct {v0, v1, v6, v6}, Lcom/avast/android/mobilesecurity/vps/b/x;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/x;->c:Lcom/avast/android/mobilesecurity/vps/b/x;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/x;

    const-string v1, "PAYLOAD_BUILD_DAY"

    invoke-direct {v0, v1, v7, v7}, Lcom/avast/android/mobilesecurity/vps/b/x;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/x;->d:Lcom/avast/android/mobilesecurity/vps/b/x;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/x;

    const-string v1, "PAYLOAD_BUILD_HOUR"

    invoke-direct {v0, v1, v8, v8}, Lcom/avast/android/mobilesecurity/vps/b/x;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/x;->e:Lcom/avast/android/mobilesecurity/vps/b/x;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/x;

    const-string v1, "PAYLOAD_BUILD_MINUTE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/vps/b/x;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/x;->f:Lcom/avast/android/mobilesecurity/vps/b/x;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/x;

    const-string v1, "PAYLOAD_DEFINITION_COUNT"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/vps/b/x;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/x;->g:Lcom/avast/android/mobilesecurity/vps/b/x;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/x;

    const-string v1, "PAYLOAD_ADS_DEFINITION_COUNT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/vps/b/x;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/x;->h:Lcom/avast/android/mobilesecurity/vps/b/x;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/vps/b/x;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/x;->a:Lcom/avast/android/mobilesecurity/vps/b/x;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/x;->b:Lcom/avast/android/mobilesecurity/vps/b/x;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/x;->c:Lcom/avast/android/mobilesecurity/vps/b/x;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/x;->d:Lcom/avast/android/mobilesecurity/vps/b/x;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/x;->e:Lcom/avast/android/mobilesecurity/vps/b/x;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/b/x;->f:Lcom/avast/android/mobilesecurity/vps/b/x;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/b/x;->g:Lcom/avast/android/mobilesecurity/vps/b/x;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/b/x;->h:Lcom/avast/android/mobilesecurity/vps/b/x;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/x;->k:[Lcom/avast/android/mobilesecurity/vps/b/x;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/x;->i:Ljava/util/Map;

    const-class v0, Lcom/avast/android/mobilesecurity/vps/b/x;

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

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/b/x;

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/b/x;->i:Ljava/util/Map;

    iget-short v3, v0, Lcom/avast/android/mobilesecurity/vps/b/x;->j:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lcom/avast/android/mobilesecurity/vps/b/x;->j:S

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/b/x;
    .locals 1

    const-class v0, Lcom/avast/android/mobilesecurity/vps/b/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/b/x;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/vps/b/x;
    .locals 1

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/x;->k:[Lcom/avast/android/mobilesecurity/vps/b/x;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/vps/b/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/vps/b/x;

    return-object v0
.end method


# virtual methods
.method public final a()S
    .locals 1

    iget-short v0, p0, Lcom/avast/android/mobilesecurity/vps/b/x;->j:S

    return v0
.end method
