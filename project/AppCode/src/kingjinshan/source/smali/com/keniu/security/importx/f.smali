.class final Lcom/keniu/security/importx/f;
.super Ljava/lang/Object;
.source "BaseImportActivity.java"

# interfaces
.implements Lcom/keniu/security/util/w;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/keniu/security/commumgr/a/t;

.field final synthetic c:Lcom/keniu/security/importx/e;


# direct methods
.method constructor <init>(Lcom/keniu/security/importx/e;Landroid/content/Context;Lcom/keniu/security/commumgr/a/t;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/keniu/security/importx/f;->c:Lcom/keniu/security/importx/e;

    iput-object p2, p0, Lcom/keniu/security/importx/f;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/keniu/security/importx/f;->b:Lcom/keniu/security/commumgr/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/keniu/security/importx/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/keniu/security/importx/f;->b:Lcom/keniu/security/commumgr/a/t;

    new-instance v2, Lcom/keniu/security/importx/g;

    invoke-direct {v2, p0}, Lcom/keniu/security/importx/g;-><init>(Lcom/keniu/security/importx/f;)V

    iget-object v3, p0, Lcom/keniu/security/importx/f;->b:Lcom/keniu/security/commumgr/a/t;

    invoke-virtual {v3}, Lcom/keniu/security/commumgr/a/t;->b()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/keniu/security/commumgr/a/e;->a(Landroid/content/Context;Lcom/keniu/security/commumgr/a/t;Lcom/keniu/security/commumgr/a/k;Z)V

    .line 166
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method
