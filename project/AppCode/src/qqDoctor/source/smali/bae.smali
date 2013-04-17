.class final Lbae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:I

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic d:Lazu;


# direct methods
.method constructor <init>(Lazu;Landroid/widget/EditText;ILcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbae;->d:Lazu;

    iput-object p2, p0, Lbae;->a:Landroid/widget/EditText;

    iput p3, p0, Lbae;->b:I

    iput-object p4, p0, Lbae;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    const v6, 0x7f0b0424

    iget-object v0, p0, Lbae;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lbae;->d:Lazu;

    const-wide/32 v3, 0x100000

    mul-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lazu;->a(Lazu;J)J

    iget-object v2, p0, Lbae;->d:Lazu;

    invoke-static {v2}, Lazu;->d(Lazu;)J

    move-result-wide v2

    const-wide v4, 0x10000000000L

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget-object v0, p0, Lbae;->d:Lazu;

    invoke-static {v0}, Lazu;->e(Lazu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbae;->d:Lazu;

    invoke-static {v1}, Lazu;->f(Lazu;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0424

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lbae;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lbae;->d:Lazu;

    invoke-static {v2}, Lazu;->g(Lazu;)Liu;

    move-result-object v2

    iget-object v3, p0, Lbae;->d:Lazu;

    invoke-static {v3}, Lazu;->d(Lazu;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Liu;->setTotalForMonth(J)V

    const/4 v2, 0x0

    sput-boolean v2, Lazu;->a:Z

    const/4 v2, 0x0

    sput-boolean v2, Lazu;->b:Z

    const/4 v2, 0x1

    sput-boolean v2, Lwe;->a:Z

    iget-object v2, p0, Lbae;->d:Lazu;

    invoke-static {v2}, Lazu;->h(Lazu;)Lcom/tencent/tmsecure/module/network/NetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/network/NetworkManager;->notifyConfigChange()V

    iget-object v2, p0, Lbae;->d:Lazu;

    invoke-static {v2}, Lazu;->a(Lazu;)Lakb;

    move-result-object v2

    invoke-virtual {v2}, Lakb;->b()V

    iget v2, p0, Lbae;->b:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbae;->d:Lazu;

    invoke-static {v0}, Lazu;->g(Lazu;)Liu;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Liu;->a(ZZ)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lbae;->d:Lazu;

    invoke-static {v0}, Lazu;->k(Lazu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbae;->d:Lazu;

    invoke-static {v1}, Lazu;->l(Lazu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lbae;->d:Lazu;

    invoke-static {v0}, Lazu;->i(Lazu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbae;->d:Lazu;

    invoke-static {v1}, Lazu;->j(Lazu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0723

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lbae;->d:Lazu;

    invoke-static {v0}, Lazu;->m(Lazu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbae;->d:Lazu;

    invoke-static {v1}, Lazu;->n(Lazu;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0425

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
