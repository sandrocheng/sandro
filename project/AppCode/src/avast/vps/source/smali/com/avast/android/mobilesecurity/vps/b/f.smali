.class public final enum Lcom/avast/android/mobilesecurity/vps/b/f;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/avast/android/mobilesecurity/vps/b/j;


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/vps/b/f;

.field private static final b:Ljava/util/Map;

.field private static final synthetic d:[Lcom/avast/android/mobilesecurity/vps/b/f;


# instance fields
.field private final c:S


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/f;

    const-string v1, "DETECTION_PREFIX_GROUP_ENUM_STRING_ID"

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/vps/b/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/f;->a:Lcom/avast/android/mobilesecurity/vps/b/f;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/vps/b/f;

    const/4 v1, 0x0

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/b/f;->a:Lcom/avast/android/mobilesecurity/vps/b/f;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/f;->d:[Lcom/avast/android/mobilesecurity/vps/b/f;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/f;->b:Ljava/util/Map;

    const-class v0, Lcom/avast/android/mobilesecurity/vps/b/f;

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

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/b/f;

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/b/f;->b:Ljava/util/Map;

    iget-short v3, v0, Lcom/avast/android/mobilesecurity/vps/b/f;->c:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short v0, p0, Lcom/avast/android/mobilesecurity/vps/b/f;->c:S

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/b/f;
    .locals 1

    const-class v0, Lcom/avast/android/mobilesecurity/vps/b/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/b/f;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/vps/b/f;
    .locals 1

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/f;->d:[Lcom/avast/android/mobilesecurity/vps/b/f;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/vps/b/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/vps/b/f;

    return-object v0
.end method


# virtual methods
.method public final a()S
    .locals 1

    iget-short v0, p0, Lcom/avast/android/mobilesecurity/vps/b/f;->c:S

    return v0
.end method
