.class public final enum Lcom/avast/android/mobilesecurity/vps/d/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/vps/d/a;

.field public static final enum b:Lcom/avast/android/mobilesecurity/vps/d/a;

.field public static final enum c:Lcom/avast/android/mobilesecurity/vps/d/a;

.field private static final d:Ljava/util/Map;

.field private static final synthetic f:[Lcom/avast/android/mobilesecurity/vps/d/a;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/d/a;

    const-string v1, "PRECHECKURL_NOT_IMPLEMENTED"

    const/16 v2, -0x2a

    invoke-direct {v0, v1, v3, v2}, Lcom/avast/android/mobilesecurity/vps/d/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/d/a;->a:Lcom/avast/android/mobilesecurity/vps/d/a;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/d/a;

    const-string v1, "PRECHECKURL_SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v4, v3}, Lcom/avast/android/mobilesecurity/vps/d/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/d/a;->b:Lcom/avast/android/mobilesecurity/vps/d/a;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/d/a;

    const-string v1, "PRECHECKURL_WILL_SCAN"

    invoke-direct {v0, v1, v5, v4}, Lcom/avast/android/mobilesecurity/vps/d/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/d/a;->c:Lcom/avast/android/mobilesecurity/vps/d/a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/vps/d/a;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/d/a;->a:Lcom/avast/android/mobilesecurity/vps/d/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/d/a;->b:Lcom/avast/android/mobilesecurity/vps/d/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/d/a;->c:Lcom/avast/android/mobilesecurity/vps/d/a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/d/a;->f:[Lcom/avast/android/mobilesecurity/vps/d/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/d/a;->d:Ljava/util/Map;

    const-class v0, Lcom/avast/android/mobilesecurity/vps/d/a;

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

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/d/a;

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/d/a;->d:Ljava/util/Map;

    iget v3, v0, Lcom/avast/android/mobilesecurity/vps/d/a;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/avast/android/mobilesecurity/vps/d/a;->e:I

    return-void
.end method

.method public static a(I)Lcom/avast/android/mobilesecurity/vps/d/a;
    .locals 2

    if-gez p0, :cond_0

    const/16 p0, -0x2a

    :cond_0
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/d/a;->d:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/d/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/d/a;
    .locals 1

    const-class v0, Lcom/avast/android/mobilesecurity/vps/d/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/d/a;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/vps/d/a;
    .locals 1

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/d/a;->f:[Lcom/avast/android/mobilesecurity/vps/d/a;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/vps/d/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/vps/d/a;

    return-object v0
.end method
