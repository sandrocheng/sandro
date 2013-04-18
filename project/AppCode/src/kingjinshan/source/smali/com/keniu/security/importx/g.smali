.class final Lcom/keniu/security/importx/g;
.super Ljava/lang/Object;
.source "BaseImportActivity.java"

# interfaces
.implements Lcom/keniu/security/commumgr/a/k;


# instance fields
.field final synthetic a:Lcom/keniu/security/importx/f;


# direct methods
.method constructor <init>(Lcom/keniu/security/importx/f;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/keniu/security/importx/g;->a:Lcom/keniu/security/importx/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/keniu/security/importx/g;->a:Lcom/keniu/security/importx/f;

    iget-object v0, v0, Lcom/keniu/security/importx/f;->c:Lcom/keniu/security/importx/e;

    iget-object v0, v0, Lcom/keniu/security/importx/e;->a:Lcom/keniu/security/importx/BaseImportActivity;

    invoke-static {v0}, Lcom/keniu/security/importx/BaseImportActivity;->b(Lcom/keniu/security/importx/BaseImportActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 164
    return-void
.end method
