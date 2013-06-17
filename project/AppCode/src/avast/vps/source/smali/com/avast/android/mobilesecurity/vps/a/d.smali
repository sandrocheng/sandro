.class public final enum Lcom/avast/android/mobilesecurity/vps/a/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/vps/a/d;

.field private static final b:Ljava/util/Map;

.field private static final synthetic d:[Lcom/avast/android/mobilesecurity/vps/a/d;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/a/d;

    const-string v1, "UNSECURED_WIFI"

    const-string v2, "unsecured_wifi"

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/vps/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/a/d;->a:Lcom/avast/android/mobilesecurity/vps/a/d;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/vps/a/d;

    const/4 v1, 0x0

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/a/d;->a:Lcom/avast/android/mobilesecurity/vps/a/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/a/d;->d:[Lcom/avast/android/mobilesecurity/vps/a/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/a/d;->b:Ljava/util/Map;

    const-class v0, Lcom/avast/android/mobilesecurity/vps/a/d;

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

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/a/d;

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/a/d;->b:Ljava/util/Map;

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/vps/a/d;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/vps/a/d;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/a/d;
    .locals 2

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/a/d;->b:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/a/d;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/a/d;
    .locals 1

    const-class v0, Lcom/avast/android/mobilesecurity/vps/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/a/d;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/vps/a/d;
    .locals 1

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/a/d;->d:[Lcom/avast/android/mobilesecurity/vps/a/d;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/vps/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/vps/a/d;

    return-object v0
.end method
