.class final Lcom/hoi/widget/p;
.super Landroid/os/Handler;
.source "KPDProgressDialog.java"


# instance fields
.field final synthetic a:Lcom/hoi/widget/o;


# direct methods
.method constructor <init>(Lcom/hoi/widget/o;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/hoi/widget/p;->a:Lcom/hoi/widget/o;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 124
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 127
    iget-object v0, p0, Lcom/hoi/widget/p;->a:Lcom/hoi/widget/o;

    invoke-static {v0}, Lcom/hoi/widget/o;->a(Lcom/hoi/widget/o;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/hoi/widget/p;->a:Lcom/hoi/widget/o;

    invoke-static {v1}, Lcom/hoi/widget/o;->a(Lcom/hoi/widget/o;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    .line 129
    int-to-double v2, v0

    int-to-double v4, v1

    div-double/2addr v2, v4

    .line 130
    iget-object v4, p0, Lcom/hoi/widget/p;->a:Lcom/hoi/widget/o;

    invoke-static {v4}, Lcom/hoi/widget/o;->b(Lcom/hoi/widget/o;)Ljava/lang/String;

    move-result-object v4

    .line 131
    iget-object v5, p0, Lcom/hoi/widget/p;->a:Lcom/hoi/widget/o;

    invoke-static {v5}, Lcom/hoi/widget/o;->c(Lcom/hoi/widget/o;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/hoi/widget/p;->a:Lcom/hoi/widget/o;

    invoke-static {v1}, Lcom/hoi/widget/o;->d(Lcom/hoi/widget/o;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 133
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 135
    iget-object v1, p0, Lcom/hoi/widget/p;->a:Lcom/hoi/widget/o;

    invoke-static {v1}, Lcom/hoi/widget/o;->e(Lcom/hoi/widget/o;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method
