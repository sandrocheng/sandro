.class public final enum Lcom/avast/android/mobilesecurity/vps/b/h;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/avast/android/mobilesecurity/vps/b/j;


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/vps/b/h;

.field public static final enum b:Lcom/avast/android/mobilesecurity/vps/b/h;

.field public static final enum c:Lcom/avast/android/mobilesecurity/vps/b/h;

.field public static final enum d:Lcom/avast/android/mobilesecurity/vps/b/h;

.field public static final enum e:Lcom/avast/android/mobilesecurity/vps/b/h;

.field private static final f:Ljava/util/Map;

.field private static final synthetic h:[Lcom/avast/android/mobilesecurity/vps/b/h;


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

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/h;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/avast/android/mobilesecurity/vps/b/h;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/h;->a:Lcom/avast/android/mobilesecurity/vps/b/h;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/h;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v3, v3}, Lcom/avast/android/mobilesecurity/vps/b/h;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/h;->b:Lcom/avast/android/mobilesecurity/vps/b/h;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/h;

    const-string v1, "MMS"

    invoke-direct {v0, v1, v4, v4}, Lcom/avast/android/mobilesecurity/vps/b/h;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/h;->c:Lcom/avast/android/mobilesecurity/vps/b/h;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/h;

    const-string v1, "CELL_BROADCAST"

    invoke-direct {v0, v1, v5, v5}, Lcom/avast/android/mobilesecurity/vps/b/h;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/h;->d:Lcom/avast/android/mobilesecurity/vps/b/h;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/h;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v6, v6}, Lcom/avast/android/mobilesecurity/vps/b/h;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/h;->e:Lcom/avast/android/mobilesecurity/vps/b/h;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/vps/b/h;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/h;->a:Lcom/avast/android/mobilesecurity/vps/b/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/h;->b:Lcom/avast/android/mobilesecurity/vps/b/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/h;->c:Lcom/avast/android/mobilesecurity/vps/b/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/h;->d:Lcom/avast/android/mobilesecurity/vps/b/h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/h;->e:Lcom/avast/android/mobilesecurity/vps/b/h;

    aput-object v1, v0, v6

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/h;->h:[Lcom/avast/android/mobilesecurity/vps/b/h;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/h;->f:Ljava/util/Map;

    const-class v0, Lcom/avast/android/mobilesecurity/vps/b/h;

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

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/b/h;

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/b/h;->f:Ljava/util/Map;

    iget-short v3, v0, Lcom/avast/android/mobilesecurity/vps/b/h;->g:S

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

    iput-short p3, p0, Lcom/avast/android/mobilesecurity/vps/b/h;->g:S

    return-void
.end method

.method public static a(S)Lcom/avast/android/mobilesecurity/vps/b/h;
    .locals 2

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/h;->f:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/b/h;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/b/h;
    .locals 1

    const-class v0, Lcom/avast/android/mobilesecurity/vps/b/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/b/h;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/vps/b/h;
    .locals 1

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/h;->h:[Lcom/avast/android/mobilesecurity/vps/b/h;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/vps/b/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/vps/b/h;

    return-object v0
.end method


# virtual methods
.method public final a()S
    .locals 1

    iget-short v0, p0, Lcom/avast/android/mobilesecurity/vps/b/h;->g:S

    return v0
.end method
