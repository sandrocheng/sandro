.class final Lcom/jxphone/mosecurity/activity/k;
.super Ljava/lang/Object;
.source "BaseContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/jxphone/mosecurity/activity/r;

.field final synthetic d:Lcom/jxphone/mosecurity/activity/BaseContactActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/jxphone/mosecurity/activity/r;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/k;->d:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iput-object p2, p0, Lcom/jxphone/mosecurity/activity/k;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/jxphone/mosecurity/activity/k;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/jxphone/mosecurity/activity/k;->c:Lcom/jxphone/mosecurity/activity/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 348
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/k;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/k;->d:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/k;->d:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    const v2, 0x7f0b0678

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 374
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/k;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/k;->d:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-static {v2}, Lcom/jxphone/mosecurity/logic/h;->d(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/l;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/jxphone/mosecurity/logic/a/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 361
    if-eqz v2, :cond_1

    .line 362
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/k;->d:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iget-object v3, p0, Lcom/jxphone/mosecurity/activity/k;->d:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    const v4, 0x7f0b0661

    invoke-virtual {v3, v4}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 365
    new-instance v2, Lcom/jxphone/mosecurity/c/b;

    invoke-direct {v2}, Lcom/jxphone/mosecurity/c/b;-><init>()V

    .line 366
    invoke-virtual {v2, v1}, Lcom/jxphone/mosecurity/c/b;->a(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v2, v0}, Lcom/jxphone/mosecurity/c/b;->b(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/k;->c:Lcom/jxphone/mosecurity/activity/r;

    invoke-virtual {v0, v2}, Lcom/jxphone/mosecurity/activity/r;->a(Lcom/jxphone/mosecurity/c/b;)V

    goto :goto_0

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/k;->d:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/k;->d:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    const v2, 0x7f0b0663

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0
.end method
