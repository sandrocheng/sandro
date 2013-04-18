.class final Lcom/keniu/security/importx/e;
.super Ljava/lang/Object;
.source "BaseImportActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/importx/BaseImportActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/importx/BaseImportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/keniu/security/importx/e;->a:Lcom/keniu/security/importx/BaseImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    sget-object v0, Lcom/keniu/security/importx/BaseImportActivity;->l:Lcom/keniu/security/importx/k;

    invoke-virtual {v0, p3}, Lcom/keniu/security/importx/k;->b(I)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/importx/BaseImportActivity;->a(Lcom/jxphone/mosecurity/c/b;)Lcom/jxphone/mosecurity/c/b;

    .line 149
    iget-object v0, p0, Lcom/keniu/security/importx/e;->a:Lcom/keniu/security/importx/BaseImportActivity;

    invoke-static {v0, p3}, Lcom/keniu/security/importx/BaseImportActivity;->a(Lcom/keniu/security/importx/BaseImportActivity;I)I

    .line 151
    iget-object v0, p0, Lcom/keniu/security/importx/e;->a:Lcom/keniu/security/importx/BaseImportActivity;

    invoke-static {v0}, Lcom/keniu/security/importx/BaseImportActivity;->c(Lcom/keniu/security/importx/BaseImportActivity;)Lcom/jxphone/mosecurity/c/c;

    move-result-object v0

    sget-object v1, Lcom/jxphone/mosecurity/c/c;->g:Lcom/jxphone/mosecurity/c/c;

    if-ne v0, v1, :cond_1

    .line 152
    sget-object v0, Lcom/keniu/security/importx/BaseImportActivity;->l:Lcom/keniu/security/importx/k;

    iget-object v1, p0, Lcom/keniu/security/importx/e;->a:Lcom/keniu/security/importx/BaseImportActivity;

    invoke-static {v1}, Lcom/keniu/security/importx/BaseImportActivity;->d(Lcom/keniu/security/importx/BaseImportActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/importx/k;->d(I)Lcom/keniu/security/commumgr/a/t;

    move-result-object v0

    .line 153
    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/keniu/security/importx/e;->a:Lcom/keniu/security/importx/BaseImportActivity;

    .line 156
    const v2, 0x7f0b0474

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/keniu/security/commumgr/a/t;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b022e

    new-instance v4, Lcom/keniu/security/importx/f;

    invoke-direct {v4, p0, v1, v0}, Lcom/keniu/security/importx/f;-><init>(Lcom/keniu/security/importx/e;Landroid/content/Context;Lcom/keniu/security/commumgr/a/t;)V

    invoke-static {v1, v2, v3, v4}, Lcom/keniu/security/util/k;->a(Landroid/content/Context;Ljava/lang/String;ILcom/keniu/security/util/w;)V

    goto :goto_0

    .line 174
    :cond_1
    sget-object v0, Lcom/keniu/security/importx/j;->a:[I

    invoke-static {}, Lcom/keniu/security/importx/BaseImportActivity;->o()Lcom/jxphone/mosecurity/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 187
    iget-object v0, p0, Lcom/keniu/security/importx/e;->a:Lcom/keniu/security/importx/BaseImportActivity;

    invoke-static {}, Lcom/keniu/security/importx/BaseImportActivity;->q()Lcom/jxphone/mosecurity/c/b;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/importx/i;

    invoke-direct {v2, p0}, Lcom/keniu/security/importx/i;-><init>(Lcom/keniu/security/importx/e;)V

    invoke-static {v0, v1, v2}, Lcom/keniu/security/importx/BaseImportActivity;->b(Lcom/keniu/security/importx/BaseImportActivity;Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/activity/r;)V

    goto :goto_0

    .line 177
    :pswitch_0
    iget-object v0, p0, Lcom/keniu/security/importx/e;->a:Lcom/keniu/security/importx/BaseImportActivity;

    invoke-static {}, Lcom/keniu/security/importx/BaseImportActivity;->p()Lcom/jxphone/mosecurity/c/b;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/importx/h;

    invoke-direct {v2, p0}, Lcom/keniu/security/importx/h;-><init>(Lcom/keniu/security/importx/e;)V

    invoke-static {v0, v1, v2}, Lcom/keniu/security/importx/BaseImportActivity;->a(Lcom/keniu/security/importx/BaseImportActivity;Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/activity/r;)V

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
