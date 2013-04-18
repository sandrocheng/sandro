.class public final Lcom/jxphone/mosecurity/listener/e;
.super Ljava/lang/Object;
.source "OutCallIntercept.java"


# static fields
.field public static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jxphone/mosecurity/listener/e;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/a/g;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-static {p1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v2

    .line 55
    :goto_0
    return-object v0

    .line 35
    :cond_0
    sget-object v1, Lcom/jxphone/mosecurity/listener/e;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    .line 36
    goto :goto_0

    .line 39
    :cond_1
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 40
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->d()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v0, v2

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 44
    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->e(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_4

    .line 46
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;->a(Landroid/database/Cursor;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v1

    .line 48
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 50
    goto :goto_0

    .line 52
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v2

    .line 55
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    sget-object v0, Lcom/jxphone/mosecurity/listener/e;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    sget-object v0, Lcom/jxphone/mosecurity/listener/e;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
