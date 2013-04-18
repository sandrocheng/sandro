.class final Lcom/keniu/security/importx/h;
.super Lcom/jxphone/mosecurity/activity/r;
.source "BaseImportActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/importx/e;


# direct methods
.method constructor <init>(Lcom/keniu/security/importx/e;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/keniu/security/importx/h;->a:Lcom/keniu/security/importx/e;

    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/jxphone/mosecurity/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 180
    sget-object v0, Lcom/keniu/security/importx/BaseImportActivity;->l:Lcom/keniu/security/importx/k;

    iget-object v1, p0, Lcom/keniu/security/importx/h;->a:Lcom/keniu/security/importx/e;

    iget-object v1, v1, Lcom/keniu/security/importx/e;->a:Lcom/keniu/security/importx/BaseImportActivity;

    invoke-static {v1}, Lcom/keniu/security/importx/BaseImportActivity;->d(Lcom/keniu/security/importx/BaseImportActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/importx/k;->b(I)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    .line 181
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/b;->a(I)V

    .line 182
    sget-object v0, Lcom/keniu/security/importx/BaseImportActivity;->l:Lcom/keniu/security/importx/k;

    invoke-virtual {v0}, Lcom/keniu/security/importx/k;->notifyDataSetChanged()V

    .line 183
    return-void
.end method
