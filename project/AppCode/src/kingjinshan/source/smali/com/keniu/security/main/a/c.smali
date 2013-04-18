.class final Lcom/keniu/security/main/a/c;
.super Ljava/lang/Thread;
.source "AutoBootManageCheckMoudle.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/main/a/a;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/keniu/security/main/a/c;->a:Lcom/keniu/security/main/a/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/keniu/security/main/a/c;->a:Lcom/keniu/security/main/a/a;

    invoke-static {v0}, Lcom/keniu/security/main/a/a;->a(Lcom/keniu/security/main/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/bootmanager/b/a;

    .line 277
    iget-object v2, p0, Lcom/keniu/security/main/a/c;->a:Lcom/keniu/security/main/a/a;

    invoke-static {v0}, Lcom/keniu/security/main/a/a;->a(Lcom/ijinshan/bootmanager/b/a;)Z

    goto :goto_0

    .line 279
    :cond_0
    return-void
.end method
