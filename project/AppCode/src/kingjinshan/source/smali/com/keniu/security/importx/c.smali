.class final Lcom/keniu/security/importx/c;
.super Ljava/lang/Thread;
.source "BaseImportActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/importx/BaseImportActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/importx/BaseImportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/keniu/security/importx/c;->a:Lcom/keniu/security/importx/BaseImportActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/keniu/security/importx/BaseImportActivity;->l:Lcom/keniu/security/importx/k;

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/keniu/security/importx/c;->a:Lcom/keniu/security/importx/BaseImportActivity;

    invoke-virtual {v0}, Lcom/keniu/security/importx/BaseImportActivity;->n()Lcom/keniu/security/importx/k;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/importx/BaseImportActivity;->l:Lcom/keniu/security/importx/k;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/importx/c;->a:Lcom/keniu/security/importx/BaseImportActivity;

    invoke-static {v0}, Lcom/keniu/security/importx/BaseImportActivity;->b(Lcom/keniu/security/importx/BaseImportActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 107
    return-void
.end method
