.class public final enum Lcom/avast/android/mobilesecurity/vps/b/t;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/avast/android/mobilesecurity/vps/b/j;


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/vps/b/t;

.field public static final enum b:Lcom/avast/android/mobilesecurity/vps/b/t;

.field private static final c:Ljava/util/Map;

.field private static final synthetic e:[Lcom/avast/android/mobilesecurity/vps/b/t;


# instance fields
.field private final d:S


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/t;

    const-string v1, "PAYLOAD_RESULT"

    invoke-direct {v0, v1, v2, v2}, Lcom/avast/android/mobilesecurity/vps/b/t;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/t;->a:Lcom/avast/android/mobilesecurity/vps/b/t;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/t;

    const-string v1, "PAYLOAD_INFECTION_TYPE"

    invoke-direct {v0, v1, v3, v3}, Lcom/avast/android/mobilesecurity/vps/b/t;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/t;->b:Lcom/avast/android/mobilesecurity/vps/b/t;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/vps/b/t;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/t;->a:Lcom/avast/android/mobilesecurity/vps/b/t;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/t;->b:Lcom/avast/android/mobilesecurity/vps/b/t;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/t;->e:[Lcom/avast/android/mobilesecurity/vps/b/t;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/t;->c:Ljava/util/Map;

    const-class v0, Lcom/avast/android/mobilesecurity/vps/b/t;

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

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/b/t;

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/b/t;->c:Ljava/util/Map;

    iget-short v3, v0, Lcom/avast/android/mobilesecurity/vps/b/t;->d:S

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

    iput-short p3, p0, Lcom/avast/android/mobilesecurity/vps/b/t;->d:S

    return-void
.end method

.method public static a(S)Lcom/avast/android/mobilesecurity/vps/b/t;
    .locals 2

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/t;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/b/t;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/b/t;
    .locals 1

    const-class v0, Lcom/avast/android/mobilesecurity/vps/b/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/b/t;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/vps/b/t;
    .locals 1

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/t;->e:[Lcom/avast/android/mobilesecurity/vps/b/t;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/vps/b/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/vps/b/t;

    return-object v0
.end method


# virtual methods
.method public final a()S
    .locals 1

    iget-short v0, p0, Lcom/avast/android/mobilesecurity/vps/b/t;->d:S

    return v0
.end method
