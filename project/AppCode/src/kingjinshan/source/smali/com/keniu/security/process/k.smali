.class final Lcom/keniu/security/process/k;
.super Ljava/lang/Object;
.source "ProcessManagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/util/List;

.field final synthetic b:Lcom/keniu/security/process/ProcessManagerActivity;


# direct methods
.method public constructor <init>(Lcom/keniu/security/process/ProcessManagerActivity;Lcom/keniu/security/d/e;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/keniu/security/process/k;->b:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/process/k;->a:Ljava/util/List;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/keniu/security/process/k;->a:Ljava/util/List;

    .line 226
    iget-object v0, p0, Lcom/keniu/security/process/k;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    return-void
.end method

.method public constructor <init>(Lcom/keniu/security/process/ProcessManagerActivity;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/keniu/security/process/k;->b:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/process/k;->a:Ljava/util/List;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/keniu/security/process/k;->a:Ljava/util/List;

    .line 222
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 230
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/keniu/security/process/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/keniu/security/process/k;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/e;

    .line 232
    iget-object v2, p0, Lcom/keniu/security/process/k;->b:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v2}, Lcom/keniu/security/process/ProcessManagerActivity;->i(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;

    move-result-object v2

    invoke-virtual {v0}, Lcom/keniu/security/d/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jxphone/mosecurity/b/c;->a(Ljava/lang/String;)Z

    .line 233
    iget-object v2, p0, Lcom/keniu/security/process/k;->b:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v2}, Lcom/keniu/security/process/ProcessManagerActivity;->i(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jxphone/mosecurity/b/c;->a(Lcom/keniu/security/d/e;)V

    .line 230
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method
