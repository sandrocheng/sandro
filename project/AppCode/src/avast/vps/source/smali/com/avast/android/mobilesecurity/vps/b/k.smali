.class public final enum Lcom/avast/android/mobilesecurity/vps/b/k;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/avast/android/mobilesecurity/vps/b/j;


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/vps/b/k;

.field public static final enum b:Lcom/avast/android/mobilesecurity/vps/b/k;

.field public static final enum c:Lcom/avast/android/mobilesecurity/vps/b/k;

.field public static final enum d:Lcom/avast/android/mobilesecurity/vps/b/k;

.field public static final enum e:Lcom/avast/android/mobilesecurity/vps/b/k;

.field private static final f:Ljava/util/Map;

.field private static final synthetic h:[Lcom/avast/android/mobilesecurity/vps/b/k;


# instance fields
.field private final g:S


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/k;

    const-string v1, "MESSAGE_TYPE_SHORT_ID"

    invoke-direct {v0, v1, v2, v2}, Lcom/avast/android/mobilesecurity/vps/b/k;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/k;->a:Lcom/avast/android/mobilesecurity/vps/b/k;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/k;

    const-string v1, "SENDER_STRING_ID"

    invoke-direct {v0, v1, v3, v3}, Lcom/avast/android/mobilesecurity/vps/b/k;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/k;->b:Lcom/avast/android/mobilesecurity/vps/b/k;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/k;

    const-string v1, "MESSAGE_CONTENT_STRING_ID"

    invoke-direct {v0, v1, v4, v4}, Lcom/avast/android/mobilesecurity/vps/b/k;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/k;->c:Lcom/avast/android/mobilesecurity/vps/b/k;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/k;

    const-string v1, "ADDITIONAL_DATA_MAP_ID"

    invoke-direct {v0, v1, v5, v5}, Lcom/avast/android/mobilesecurity/vps/b/k;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/k;->d:Lcom/avast/android/mobilesecurity/vps/b/k;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/k;

    const-string v1, "ADDITIONAL_FILES_MAP_ID"

    invoke-direct {v0, v1, v6, v6}, Lcom/avast/android/mobilesecurity/vps/b/k;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/k;->e:Lcom/avast/android/mobilesecurity/vps/b/k;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/vps/b/k;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/k;->a:Lcom/avast/android/mobilesecurity/vps/b/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/k;->b:Lcom/avast/android/mobilesecurity/vps/b/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/k;->c:Lcom/avast/android/mobilesecurity/vps/b/k;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/k;->d:Lcom/avast/android/mobilesecurity/vps/b/k;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/k;->e:Lcom/avast/android/mobilesecurity/vps/b/k;

    aput-object v1, v0, v6

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/k;->h:[Lcom/avast/android/mobilesecurity/vps/b/k;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/k;->f:Ljava/util/Map;

    const-class v0, Lcom/avast/android/mobilesecurity/vps/b/k;

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

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/b/k;

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/b/k;->f:Ljava/util/Map;

    iget-short v3, v0, Lcom/avast/android/mobilesecurity/vps/b/k;->g:S

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

    iput-short p3, p0, Lcom/avast/android/mobilesecurity/vps/b/k;->g:S

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/b/k;
    .locals 1

    const-class v0, Lcom/avast/android/mobilesecurity/vps/b/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/b/k;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/vps/b/k;
    .locals 1

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/k;->h:[Lcom/avast/android/mobilesecurity/vps/b/k;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/vps/b/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/vps/b/k;

    return-object v0
.end method


# virtual methods
.method public final a()S
    .locals 1

    iget-short v0, p0, Lcom/avast/android/mobilesecurity/vps/b/k;->g:S

    return v0
.end method
