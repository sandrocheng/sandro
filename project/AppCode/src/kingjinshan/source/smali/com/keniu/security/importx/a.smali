.class final Lcom/keniu/security/importx/a;
.super Landroid/os/Handler;
.source "BaseImportActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/importx/BaseImportActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/importx/BaseImportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/keniu/security/importx/a;->a:Lcom/keniu/security/importx/BaseImportActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0b0259

    const/4 v2, 0x1

    .line 47
    iget-object v0, p0, Lcom/keniu/security/importx/a;->a:Lcom/keniu/security/importx/BaseImportActivity;

    invoke-static {v0}, Lcom/keniu/security/importx/BaseImportActivity;->a(Lcom/keniu/security/importx/BaseImportActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/importx/a;->a:Lcom/keniu/security/importx/BaseImportActivity;

    const v1, 0x7f0b0259

    invoke-virtual {v0, v1}, Lcom/keniu/security/importx/BaseImportActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 64
    :cond_0
    :goto_1
    return-void

    .line 55
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_3

    .line 56
    iget-object v0, p0, Lcom/keniu/security/importx/a;->a:Lcom/keniu/security/importx/BaseImportActivity;

    iget-object v0, v0, Lcom/keniu/security/importx/BaseImportActivity;->m:Landroid/widget/ListView;

    sget-object v1, Lcom/keniu/security/importx/BaseImportActivity;->l:Lcom/keniu/security/importx/k;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    sget-object v0, Lcom/keniu/security/importx/BaseImportActivity;->l:Lcom/keniu/security/importx/k;

    invoke-virtual {v0}, Lcom/keniu/security/importx/k;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/keniu/security/importx/a;->a:Lcom/keniu/security/importx/BaseImportActivity;

    iget-object v1, p0, Lcom/keniu/security/importx/a;->a:Lcom/keniu/security/importx/BaseImportActivity;

    invoke-virtual {v1}, Lcom/keniu/security/importx/BaseImportActivity;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/importx/BaseImportActivity;->a(Ljava/lang/String;)V

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/importx/a;->a:Lcom/keniu/security/importx/BaseImportActivity;

    invoke-virtual {v0, v3}, Lcom/keniu/security/importx/BaseImportActivity;->dismissDialog(I)V

    goto :goto_1

    .line 61
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/keniu/security/importx/a;->a:Lcom/keniu/security/importx/BaseImportActivity;

    const v1, 0x7f0b0475

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
