.class Lcom/dolphin/browser/addons/l;
.super Lcom/dolphin/browser/addons/ap;
.source "Browser.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/addons/h;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/addons/h;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/dolphin/browser/addons/l;->a:Lcom/dolphin/browser/addons/h;

    .line 269
    invoke-direct {p0}, Lcom/dolphin/browser/addons/ap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/addons/DownloadInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/dolphin/browser/addons/l;->a:Lcom/dolphin/browser/addons/h;

    invoke-static {v0}, Lcom/dolphin/browser/addons/h;->f(Lcom/dolphin/browser/addons/h;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    return-void

    .line 285
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/addons/ac;

    .line 286
    invoke-interface {v0, p1}, Lcom/dolphin/browser/addons/ac;->a(Lcom/dolphin/browser/addons/DownloadInfo;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/dolphin/browser/addons/l;->a:Lcom/dolphin/browser/addons/h;

    invoke-static {v0}, Lcom/dolphin/browser/addons/h;->f(Lcom/dolphin/browser/addons/h;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 275
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/addons/ac;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    .line 276
    invoke-interface/range {v0 .. v6}, Lcom/dolphin/browser/addons/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const/4 v0, 0x1

    goto :goto_0
.end method
